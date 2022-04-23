package b;
/* loaded from: classes-dex2jar.jar:b/o.class */
final class o {

    /* renamed from: a  reason: collision with root package name */
    static n f341a;

    /* renamed from: b  reason: collision with root package name */
    static long f342b;

    private o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n a() {
        n nVar;
        synchronized (o.class) {
            try {
                if (f341a != null) {
                    nVar = f341a;
                    f341a = nVar.f;
                    nVar.f = null;
                    f342b -= 2048;
                } else {
                    nVar = new n();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(n nVar) {
        if (nVar.f != null || nVar.g != null) {
            throw new IllegalArgumentException();
        } else if (!nVar.d) {
            synchronized (o.class) {
                try {
                    if (f342b + 2048 <= 65536) {
                        f342b += 2048;
                        nVar.f = f341a;
                        nVar.c = 0;
                        nVar.f340b = 0;
                        f341a = nVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
