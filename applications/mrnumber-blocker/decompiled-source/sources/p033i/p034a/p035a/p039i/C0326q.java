package p033i.p034a.p035a.p039i;
/* renamed from: i.a.a.i.q */
/* loaded from: classes2-dex2jar.jar:i/a/a/i/q.class */
public final class C0326q {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f858a = new ThreadLocal<>();

    /* renamed from: a */
    public static String m387a(long j) {
        char[] c = m385c();
        C0319f.m407i(j, c, 0);
        return new String(c);
    }

    /* renamed from: b */
    public static String m386b() {
        return "0000000000000000";
    }

    /* renamed from: c */
    private static char[] m385c() {
        ThreadLocal<char[]> threadLocal = f858a;
        char[] cArr = threadLocal.get();
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = new char[16];
            threadLocal.set(cArr2);
        }
        return cArr2;
    }

    /* renamed from: d */
    public static boolean m384d(String str) {
        return str.length() == 16 && !"0000000000000000".equals(str) && C0319f.m409g(str);
    }
}
