package p081h.p444n.p445a;
/* renamed from: h.n.a.r */
/* loaded from: classes2-dex2jar.jar:h/n/a/r.class */
public enum EnumC10793r {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);
    

    /* renamed from: a */
    public final int f24647a;

    EnumC10793r(int i) {
        this.f24647a = i;
    }

    /* renamed from: a */
    public static boolean m10617a(int i) {
        return (i & OFFLINE.f24647a) != 0;
    }

    /* renamed from: b */
    public static boolean m10616b(int i) {
        return (i & NO_CACHE.f24647a) == 0;
    }

    /* renamed from: c */
    public static boolean m10615c(int i) {
        return (i & NO_STORE.f24647a) == 0;
    }
}
