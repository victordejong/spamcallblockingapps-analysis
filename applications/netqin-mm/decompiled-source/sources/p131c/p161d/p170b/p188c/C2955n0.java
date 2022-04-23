package p131c.p161d.p170b.p188c;
/* renamed from: c.d.b.c.n0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/n0.class */
public final /* synthetic */ class C2955n0 {
    /* renamed from: a */
    public static int m28397a(int i) {
        return m28396a(i, 0, 0);
    }

    /* renamed from: a */
    public static int m28396a(int i, int i2, int i3) {
        return i | i2 | i3;
    }

    /* renamed from: b */
    public static int m28395b(int i) {
        return i & 24;
    }

    /* renamed from: c */
    public static int m28394c(int i) {
        return i & 7;
    }

    /* renamed from: d */
    public static String m28393d(int i) {
        if (i == 0) {
            return "NO";
        }
        if (i == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    /* renamed from: e */
    public static int m28392e(int i) {
        return i & 32;
    }
}
