package androidx.work;
/* renamed from: androidx.work.f */
/* loaded from: classes-dex2jar.jar:androidx/work/f.class */
public abstract class AbstractC0555f {

    /* renamed from: a */
    private static AbstractC0555f f2987a;

    /* renamed from: b */
    private static final int f2988b = 20;

    public AbstractC0555f(int i) {
    }

    /* renamed from: c */
    public static AbstractC0555f m11741c() {
        AbstractC0555f fVar;
        synchronized (AbstractC0555f.class) {
            try {
                if (f2987a == null) {
                    f2987a = new a(3);
                }
                fVar = f2987a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* renamed from: e */
    public static void m11739e(AbstractC0555f fVar) {
        synchronized (AbstractC0555f.class) {
            try {
                f2987a = fVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public static String m11738f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i = f2988b;
        String str2 = str;
        if (length >= i) {
            str2 = str.substring(0, i);
        }
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public abstract void m11743a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void m11742b(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void m11740d(String str, String str2, Throwable... thArr);

    /* renamed from: g */
    public abstract void m11737g(String str, String str2, Throwable... thArr);

    /* renamed from: h */
    public abstract void m11736h(String str, String str2, Throwable... thArr);
}
