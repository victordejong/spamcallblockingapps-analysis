package p000a;

import javax.annotation.Nullable;
/* renamed from: a.p */
/* loaded from: classes-dex2jar.jar:a/p.class */
public final class C0021p {
    @Nullable

    /* renamed from: a */
    static C0020o f51a;

    /* renamed from: b */
    static long f52b;

    private C0021p() {
    }

    /* renamed from: a */
    public static C0020o m22476a() {
        C0020o c0020o;
        synchronized (C0021p.class) {
            try {
                if (f51a != null) {
                    c0020o = f51a;
                    f51a = c0020o.f49f;
                    c0020o.f49f = null;
                    f52b -= 8192;
                } else {
                    c0020o = new C0020o();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0020o;
    }

    /* renamed from: a */
    public static void m22475a(C0020o c0020o) {
        if (c0020o.f49f == null && c0020o.f50g == null) {
            if (c0020o.f47d) {
                return;
            }
            synchronized (C0021p.class) {
                try {
                    if (f52b + 8192 <= 65536) {
                        f52b += 8192;
                        c0020o.f49f = f51a;
                        c0020o.f46c = 0;
                        c0020o.f45b = 0;
                        f51a = c0020o;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new IllegalArgumentException();
    }
}
