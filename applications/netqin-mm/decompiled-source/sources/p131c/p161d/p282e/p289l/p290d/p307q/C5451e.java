package p131c.p161d.p282e.p289l.p290d.p307q;
/* renamed from: c.d.e.l.d.q.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/q/e.class */
public class C5451e {

    /* renamed from: a */
    public final String f18428a;

    /* renamed from: b */
    public final String f18429b;

    /* renamed from: c */
    public final StackTraceElement[] f18430c;

    /* renamed from: d */
    public final C5451e f18431d;

    public C5451e(Throwable th, AbstractC5450d dVar) {
        this.f18428a = th.getLocalizedMessage();
        this.f18429b = th.getClass().getName();
        this.f18430c = dVar.mo23758a(th.getStackTrace());
        Throwable cause = th.getCause();
        this.f18431d = cause != null ? new C5451e(cause, dVar) : null;
    }
}
