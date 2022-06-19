package p011aa;

import javax.annotation.Nullable;
/* renamed from: aa.v */
/* loaded from: classes2-dex2jar.jar:aa/v.class */
public final class C0071v {
    @Nullable

    /* renamed from: a */
    public static C0070u f158a;

    /* renamed from: b */
    public static long f159b;

    /* renamed from: a */
    public static void m8792a(C0070u c0070u) {
        if (c0070u.f156f == null && c0070u.f157g == null) {
            if (c0070u.f154d) {
                return;
            }
            synchronized (C0071v.class) {
                try {
                    long j = f159b + 8192;
                    if (j > 65536) {
                        return;
                    }
                    f159b = j;
                    c0070u.f156f = f158a;
                    c0070u.f153c = 0;
                    c0070u.f152b = 0;
                    f158a = c0070u;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static C0070u m8791b() {
        synchronized (C0071v.class) {
            try {
                C0070u c0070u = f158a;
                if (c0070u == null) {
                    return new C0070u();
                }
                f158a = c0070u.f156f;
                c0070u.f156f = null;
                f159b -= 8192;
                return c0070u;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
