package androidx.media2.exoplayer.external.video.spherical;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/Projection.class */
public final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/Projection$DrawMode.class */
    public @interface DrawMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/Projection$Mesh.class */
    public static final class Mesh {
        public final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public SubMesh getSubMesh(int i) {
            return this.subMeshes[i];
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/Projection$SubMesh.class */
    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i, float[] fArr, float[] fArr2, int i2) {
            this.textureId = i;
            Assertions.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i2;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public Projection(Mesh mesh, int i) {
        this(mesh, mesh, i);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i;
        this.singleMesh = mesh == mesh2;
    }

    public static Projection createEquirectangular(float f, int i, int i2, float f2, float f3, int i3) {
        Assertions.checkArgument(f > 0.0f);
        Assertions.checkArgument(i >= 1);
        Assertions.checkArgument(i2 >= 1);
        Assertions.checkArgument(f2 > 0.0f && f2 <= 180.0f);
        Assertions.checkArgument(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i;
        float f5 = radians2 / i2;
        int i4 = i2 + 1;
        int i5 = ((i4 * 2) + 2) * i;
        float[] fArr = new float[i5 * 3];
        float[] fArr2 = new float[i5 * 2];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i) {
            float f6 = radians / 2.0f;
            float f7 = (i6 * f4) - f6;
            int i9 = i6 + 1;
            float f8 = i9;
            int i10 = 0;
            i6 = i9;
            while (i10 < i4) {
                for (int i11 = 0; i11 < 2; i11++) {
                    if (i11 != 0) {
                        f7 = (f8 * f4) - f6;
                    }
                    float f9 = i10 * f5;
                    float f10 = radians2 / 2.0f;
                    int i12 = i7 + 1;
                    double d = f;
                    double d2 = (f9 + 3.1415927f) - f10;
                    double sin = Math.sin(d2);
                    double d3 = f7;
                    fArr[i7] = -((float) (sin * d * Math.cos(d3)));
                    int i13 = i12 + 1;
                    fArr[i12] = (float) (d * Math.sin(d3));
                    int i14 = i13 + 1;
                    fArr[i13] = (float) (d * Math.cos(d2) * Math.cos(d3));
                    int i15 = i8 + 1;
                    fArr2[i8] = f9 / radians2;
                    int i16 = i15 + 1;
                    fArr2[i15] = ((i6 + i11) * f4) / radians;
                    if ((i10 == 0 && i11 == 0) || (i10 == i2 && i11 == 1)) {
                        System.arraycopy(fArr, i14 - 3, fArr, i14, 3);
                        i7 = i14 + 3;
                        System.arraycopy(fArr2, i16 - 2, fArr2, i16, 2);
                        i8 = i16 + 2;
                    } else {
                        i7 = i14;
                        i8 = i16;
                    }
                }
                i10++;
                i4 = i4;
            }
            i8 = i8;
            i7 = i7;
        }
        return new Projection(new Mesh(new SubMesh(0, fArr, fArr2, 1)), i3);
    }

    public static Projection createEquirectangular(int i) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i);
    }
}
