package androidx.media2.exoplayer.external.video.spherical;

import android.opengl.Matrix;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.TimedValueQueue;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/FrameRotationQueue.class */
public final class FrameRotationQueue {
    public boolean recenterMatrixComputed;
    public final float[] recenterMatrix = new float[16];
    public final float[] rotationMatrix = new float[16];
    public final TimedValueQueue<float[]> rotations = new TimedValueQueue<>();

    public static void computeRecenterMatrix(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }

    public static void getRotationMatrixFromAngleAxis(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = -fArr2[1];
        float f3 = -fArr2[2];
        float length = Matrix.length(f, f2, f3);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    public boolean pollRotationMatrix(float[] fArr, long j) {
        float[] pollFloor = this.rotations.pollFloor(j);
        if (pollFloor == null) {
            return false;
        }
        getRotationMatrixFromAngleAxis(this.rotationMatrix, pollFloor);
        if (!this.recenterMatrixComputed) {
            computeRecenterMatrix(this.recenterMatrix, this.rotationMatrix);
            this.recenterMatrixComputed = true;
        }
        Matrix.multiplyMM(fArr, 0, this.recenterMatrix, 0, this.rotationMatrix, 0);
        return true;
    }

    public void reset() {
        this.rotations.clear();
        this.recenterMatrixComputed = false;
    }

    public void setRotation(long j, float[] fArr) {
        this.rotations.add(j, fArr);
    }
}
