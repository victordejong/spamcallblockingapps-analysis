package p610i;
/* renamed from: i.o */
/* loaded from: classes2-dex2jar.jar:i/o.class */
public final class C10279o {

    /* renamed from: a */
    public static C10278n f37924a;

    /* renamed from: b */
    public static long f37925b;

    /* renamed from: a */
    public static C10278n m708a() {
        synchronized (C10279o.class) {
            try {
                if (f37924a == null) {
                    return new C10278n();
                }
                C10278n nVar = f37924a;
                f37924a = nVar.f37922f;
                nVar.f37922f = null;
                f37925b -= 8192;
                return nVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m707a(C10278n nVar) {
        if (nVar.f37922f != null || nVar.f37923g != null) {
            throw new IllegalArgumentException();
        } else if (!nVar.f37920d) {
            synchronized (C10279o.class) {
                try {
                    if (f37925b + 8192 <= 65536) {
                        f37925b += 8192;
                        nVar.f37922f = f37924a;
                        nVar.f37919c = 0;
                        nVar.f37918b = 0;
                        f37924a = nVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
