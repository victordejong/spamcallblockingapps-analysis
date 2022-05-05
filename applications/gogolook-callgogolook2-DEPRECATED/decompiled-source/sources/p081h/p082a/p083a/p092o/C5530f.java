package p081h.p082a.p083a.p092o;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Nullable;
import java.io.Closeable;
import p081h.p082a.p083a.C5340d;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.p085b.C5381r;
/* renamed from: h.a.a.o.f */
/* loaded from: classes-dex2jar.jar:h/a/a/o/f.class */
public final class C5530f {

    /* renamed from: a */
    public static final PathMeasure f13795a = new PathMeasure();

    /* renamed from: b */
    public static final Path f13796b = new Path();

    /* renamed from: c */
    public static final Path f13797c = new Path();

    /* renamed from: d */
    public static final float[] f13798d = new float[4];

    /* renamed from: e */
    public static final float f13799e = (float) Math.sqrt(2.0d);

    /* renamed from: a */
    public static float m25253a(Context context) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    /* renamed from: a */
    public static float m25252a(Matrix matrix) {
        float[] fArr = f13798d;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f = f13799e;
        fArr[2] = f;
        fArr[3] = f;
        matrix.mapPoints(fArr);
        float[] fArr2 = f13798d;
        return ((float) Math.hypot(fArr2[2] - fArr2[0], fArr2[3] - fArr2[1])) / 2.0f;
    }

    /* renamed from: a */
    public static int m25254a(float f, float f2, float f3, float f4) {
        int i = f != 0.0f ? (int) (527 * f) : 17;
        int i2 = i;
        if (f2 != 0.0f) {
            i2 = (int) (i * 31 * f2);
        }
        int i3 = i2;
        if (f3 != 0.0f) {
            i3 = (int) (i2 * 31 * f3);
        }
        int i4 = i3;
        if (f4 != 0.0f) {
            i4 = (int) (i3 * 31 * f4);
        }
        return i4;
    }

    /* renamed from: a */
    public static Path m25249a(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f = pointF.x;
            float f2 = pointF3.x;
            float f3 = pointF.y;
            float f4 = pointF3.y;
            float f5 = pointF2.x;
            float f6 = pointF4.x;
            float f7 = pointF2.y;
            path.cubicTo(f2 + f, f3 + f4, f5 + f6, f7 + pointF4.y, f5, f7);
        }
        return path;
    }

    /* renamed from: a */
    public static void m25251a(Path path, float f, float f2, float f3) {
        C5340d.m25653a("applyTrimPathIfNeeded");
        f13795a.setPath(path, false);
        float length = f13795a.getLength();
        if (f == 1.0f && f2 == 0.0f) {
            C5340d.m25652b("applyTrimPathIfNeeded");
        } else if (length < 1.0f || Math.abs((f2 - f) - 1.0f) < 0.01d) {
            C5340d.m25652b("applyTrimPathIfNeeded");
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
                    f9 = C5529e.m25262a(f7, length);
                    f10 = C5529e.m25262a(f8, length);
                }
            }
            float f11 = f9;
            if (f9 < 0.0f) {
                f11 = C5529e.m25262a(f9, length);
            }
            float f12 = f10;
            if (f10 < 0.0f) {
                f12 = C5529e.m25262a(f10, length);
            }
            int i = (f11 > f12 ? 1 : (f11 == f12 ? 0 : -1));
            if (i == 0) {
                path.reset();
                C5340d.m25652b("applyTrimPathIfNeeded");
                return;
            }
            float f13 = f11;
            if (i >= 0) {
                f13 = f11 - length;
            }
            f13796b.reset();
            f13795a.getSegment(f13, f12, f13796b, true);
            if (f12 > length) {
                f13797c.reset();
                f13795a.getSegment(0.0f, f12 % length, f13797c, true);
                f13796b.addPath(f13797c);
            } else if (f13 < 0.0f) {
                f13797c.reset();
                f13795a.getSegment(f13 + length, length, f13797c, true);
                f13796b.addPath(f13797c);
            }
            path.set(f13796b);
            C5340d.m25652b("applyTrimPathIfNeeded");
        }
    }

    /* renamed from: a */
    public static void m25250a(Path path, @Nullable C5381r rVar) {
        if (rVar != null) {
            m25251a(path, rVar.m25532d().mo25516f().floatValue() / 100.0f, rVar.m25534b().mo25516f().floatValue() / 100.0f, rVar.m25533c().mo25516f().floatValue() / 360.0f);
        }
    }

    /* renamed from: a */
    public static void m25247a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m25248a(C5341e eVar, int i, int i2, int i3) {
        boolean z = false;
        if (eVar.m25632j() < i) {
            return false;
        }
        if (eVar.m25632j() > i) {
            return true;
        }
        if (eVar.m25631k() < i2) {
            return false;
        }
        if (eVar.m25631k() > i2) {
            return true;
        }
        if (eVar.m25630l() >= i3) {
            z = true;
        }
        return z;
    }
}
