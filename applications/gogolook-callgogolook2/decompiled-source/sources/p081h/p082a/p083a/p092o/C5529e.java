package p081h.p082a.p083a.p092o;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import p081h.p082a.p083a.p088n.C5405c;
import p081h.p082a.p083a.p088n.p090l.C5486l;
/* renamed from: h.a.a.o.e */
/* loaded from: classes-dex2jar.jar:h/a/a/o/e.class */
public class C5529e {
    /* renamed from: a */
    public static double m25263a(double d, double d2, @FloatRange(from = 0.0d, m37520to = 1.0d) double d3) {
        return d + (d3 * (d2 - d));
    }

    /* renamed from: a */
    public static float m25261a(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    /* renamed from: a */
    public static int m25262a(float f, float f2) {
        return m25255b((int) f, (int) f2);
    }

    /* renamed from: a */
    public static int m25260a(int i, int i2) {
        int i3 = i / i2;
        int i4 = i3;
        if ((i ^ i2) < 0) {
            i4 = i3;
            if (i2 * i3 != i) {
                i4 = i3 - 1;
            }
        }
        return i4;
    }

    /* renamed from: a */
    public static int m25259a(int i, int i2, @FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        return (int) (i + (f * (i2 - i)));
    }

    /* renamed from: a */
    public static PointF m25258a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    /* renamed from: a */
    public static void m25257a(C5486l lVar, Path path) {
        path.reset();
        PointF b = lVar.m25376b();
        path.moveTo(b.x, b.y);
        PointF pointF = new PointF(b.x, b.y);
        for (int i = 0; i < lVar.m25379a().size(); i++) {
            C5405c cVar = lVar.m25379a().get(i);
            PointF a = cVar.m25500a();
            PointF b2 = cVar.m25498b();
            PointF c = cVar.m25496c();
            if (!a.equals(pointF) || !b2.equals(c)) {
                path.cubicTo(a.x, a.y, b2.x, b2.y, c.x, c.y);
            } else {
                path.lineTo(c.x, c.y);
            }
            pointF.set(c.x, c.y);
        }
        if (lVar.m25375c()) {
            path.close();
        }
    }

    /* renamed from: b */
    public static float m25256b(float f, float f2, @FloatRange(from = 0.0d, m37520to = 1.0d) float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: b */
    public static int m25255b(int i, int i2) {
        return i - (m25260a(i, i2) * i2);
    }
}
