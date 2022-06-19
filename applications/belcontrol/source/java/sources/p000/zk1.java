package p000;
/* renamed from: zk1 */
/* loaded from: classes3-dex2jar.jar:zk1.class */
public class zk1 extends yk1 {
    /* renamed from: a */
    public static final int m6a(int i, int i2) {
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: b */
    public static final int m5b(int i, int i2) {
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: c */
    public static final int m4c(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    /* renamed from: d */
    public static final uk1 m3d(int i, int i2) {
        return uk1.f8326d.m388a(i, i2, -1);
    }

    /* renamed from: e */
    public static final wk1 m2e(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? wk1.f8587g.m211a() : new wk1(i, i2 - 1);
    }
}
