package p000a;

import javax.annotation.Nullable;
/* renamed from: a.p */
/* loaded from: classes-dex2jar.jar:a/p.class */
public final class C0023p {
    @Nullable

    /* renamed from: a */
    static C0022o f53a;

    /* renamed from: b */
    static long f54b;

    private C0023p() {
    }

    /* renamed from: a */
    public static C0022o m8052a() {
        synchronized (C0023p.class) {
            try {
                if (f53a == null) {
                    return new C0022o();
                }
                C0022o c0022o = f53a;
                f53a = c0022o.f51f;
                c0022o.f51f = null;
                f54b -= 8192;
                return c0022o;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m8051a(C0022o c0022o) {
        if (c0022o.f51f == null && c0022o.f52g == null) {
            if (c0022o.f49d) {
                return;
            }
            synchronized (C0023p.class) {
                try {
                    if (f54b + 8192 > 65536) {
                        return;
                    }
                    f54b += 8192;
                    c0022o.f51f = f53a;
                    c0022o.f48c = 0;
                    c0022o.f47b = 0;
                    f53a = c0022o;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
