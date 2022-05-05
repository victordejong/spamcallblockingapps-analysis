package p081h.p203i.p325c.p337n.p338d.p355q;
/* renamed from: h.i.c.n.d.q.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/q/e.class */
public class C9830e {

    /* renamed from: a */
    public final String f22299a;

    /* renamed from: b */
    public final String f22300b;

    /* renamed from: c */
    public final StackTraceElement[] f22301c;

    /* renamed from: d */
    public final C9830e f22302d;

    public C9830e(Throwable th, AbstractC9829d dVar) {
        this.f22299a = th.getLocalizedMessage();
        this.f22300b = th.getClass().getName();
        this.f22301c = dVar.mo14121a(th.getStackTrace());
        Throwable cause = th.getCause();
        this.f22302d = cause != null ? new C9830e(cause, dVar) : null;
    }
}
