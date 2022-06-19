package p193e.p1411b.p1412a.p1414b0;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import java.io.Closeable;
import java.util.Set;
import p193e.p1411b.p1412a.C21906c;
/* renamed from: e.b.a.b0.e */
/* loaded from: classes-dex2jar.jar:e/b/a/b0/e.class */
public final class C21905e {

    /* renamed from: a */
    public static final PathMeasure f60795a = new PathMeasure();

    /* renamed from: b */
    public static final Path f60796b = new Path();

    /* renamed from: c */
    public static final Path f60797c = new Path();

    /* renamed from: d */
    public static final float[] f60798d = new float[4];

    /* renamed from: e */
    public static final float f60799e = (float) Math.sqrt(2.0d);

    /* renamed from: f */
    public static float f60800f = -1.0f;

    /* renamed from: a */
    public static void m8920a(Path path, float f, float f2, float f3) {
        Set<String> set = C21906c.f60801a;
        PathMeasure pathMeasure = f60795a;
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f == 1.0f && f2 == 0.0f) {
            C21906c.m8916a("applyTrimPathIfNeeded");
        } else if (length < 1.0f || Math.abs((f2 - f) - 1.0f) < 0.01d) {
            C21906c.m8916a("applyTrimPathIfNeeded");
        } else {
            float f4 = f * length;
            float f5 = f2 * length;
            float min = Math.min(f4, f5);
            float max = Math.max(f4, f5);
            float f6 = f3 * length;
            float f7 = min + f6;
            float f8 = max + f6;
            float f9 = f7;
            float f10 = f8;
            if (f7 >= length) {
                f9 = f7;
                f10 = f8;
                if (f8 >= length) {
                    f9 = C21904d.m8923d(f7, length);
                    f10 = C21904d.m8923d(f8, length);
                }
            }
            float f11 = f9;
            if (f9 < 0.0f) {
                f11 = C21904d.m8923d(f9, length);
            }
            float f12 = f10;
            if (f10 < 0.0f) {
                f12 = C21904d.m8923d(f10, length);
            }
            int i = (f11 > f12 ? 1 : (f11 == f12 ? 0 : -1));
            if (i == 0) {
                path.reset();
                C21906c.m8916a("applyTrimPathIfNeeded");
                return;
            }
            float f13 = f11;
            if (i >= 0) {
                f13 = f11 - length;
            }
            Path path2 = f60796b;
            path2.reset();
            pathMeasure.getSegment(f13, f12, path2, true);
            if (f12 > length) {
                Path path3 = f60797c;
                path3.reset();
                pathMeasure.getSegment(0.0f, f12 % length, path3, true);
                path2.addPath(path3);
            } else if (f13 < 0.0f) {
                Path path4 = f60797c;
                path4.reset();
                pathMeasure.getSegment(f13 + length, length, path4, true);
                path2.addPath(path4);
            }
            path.set(path2);
            C21906c.m8916a("applyTrimPathIfNeeded");
        }
    }

    /* renamed from: b */
    public static void m8919b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: c */
    public static float m8918c() {
        if (f60800f == -1.0f) {
            f60800f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f60800f;
    }

    /* renamed from: d */
    public static float m8917d(Matrix matrix) {
        float[] fArr = f60798d;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f = f60799e;
        fArr[2] = f;
        fArr[3] = f;
        matrix.mapPoints(fArr);
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / 2.0f;
    }
}
