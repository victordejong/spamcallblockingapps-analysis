package p033i.p034a.p035a.p039i;
/* renamed from: i.a.a.i.t */
/* loaded from: classes2-dex2jar.jar:i/a/a/i/t.class */
public final class C0329t {

    /* renamed from: a */
    private static final ThreadLocal<char[]> f860a = new ThreadLocal<>();

    /* renamed from: a */
    public static String m381a(long j, long j2) {
        char[] c = m379c();
        C0319f.m407i(j, c, 0);
        C0319f.m407i(j2, c, 16);
        return new String(c);
    }

    /* renamed from: b */
    public static String m380b() {
        return "00000000000000000000000000000000";
    }

    /* renamed from: c */
    private static char[] m379c() {
        ThreadLocal<char[]> threadLocal = f860a;
        char[] cArr = threadLocal.get();
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = new char[32];
            threadLocal.set(cArr2);
        }
        return cArr2;
    }

    /* renamed from: d */
    public static long m378d(CharSequence charSequence) {
        return m376f(charSequence);
    }

    /* renamed from: e */
    public static boolean m377e(CharSequence charSequence) {
        return charSequence.length() == 32 && !"00000000000000000000000000000000".contentEquals(charSequence) && C0319f.m409g(charSequence);
    }

    /* renamed from: f */
    public static long m376f(CharSequence charSequence) {
        return C0319f.m408h(charSequence, 16);
    }
}
