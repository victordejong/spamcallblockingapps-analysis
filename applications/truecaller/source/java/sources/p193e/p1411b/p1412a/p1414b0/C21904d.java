package p193e.p1411b.p1412a.p1414b0;

import android.graphics.PointF;
import java.util.List;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21956k;
import p193e.p1411b.p1412a.p1420y.C21975e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.b0.d */
/* loaded from: classes-dex2jar.jar:e/b/a/b0/d.class */
public class C21904d {

    /* renamed from: a */
    public static PointF f60794a = new PointF();

    /* renamed from: a */
    public static PointF m8926a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    /* renamed from: b */
    public static float m8925b(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    /* renamed from: c */
    public static int m8924c(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    /* renamed from: d */
    public static int m8923d(float f, float f2) {
        int i = (int) f;
        int i2 = (int) f2;
        int i3 = i / i2;
        int i4 = i3;
        if (!((i ^ i2) >= 0)) {
            i4 = i3;
            if (i % i2 != 0) {
                i4 = i3 - 1;
            }
        }
        return i - (i2 * i4);
    }

    /* renamed from: e */
    public static float m8922e(float f, float f2, float f3) {
        return C22128a.m8646a(f2, f, f3, f);
    }

    /* renamed from: f */
    public static void m8921f(C21975e c21975e, int i, List<C21975e> list, C21975e c21975e2, AbstractC21956k abstractC21956k) {
        if (c21975e.m8848c(abstractC21956k.getName(), i)) {
            list.add(c21975e2.m8850a(abstractC21956k.getName()).m8844g(abstractC21956k));
        }
    }
}
