package p081h.p203i.p204a.p206b.p209j.p212u;
/* renamed from: h.i.a.b.j.u.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/g.class */
public abstract class AbstractC6599g {

    /* renamed from: h.i.a.b.j.u.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/g$a.class */
    public enum EnumC6600a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    /* renamed from: a */
    public static AbstractC6599g m22263a(long j) {
        return new C6593b(EnumC6600a.OK, j);
    }

    /* renamed from: c */
    public static AbstractC6599g m22261c() {
        return new C6593b(EnumC6600a.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static AbstractC6599g m22260d() {
        return new C6593b(EnumC6600a.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: a */
    public abstract long mo22264a();

    /* renamed from: b */
    public abstract EnumC6600a mo22262b();
}
