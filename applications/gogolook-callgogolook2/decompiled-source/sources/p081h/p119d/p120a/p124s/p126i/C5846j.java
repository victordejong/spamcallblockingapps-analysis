package p081h.p119d.p120a.p124s.p126i;
/* renamed from: h.d.a.s.i.j */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/j.class */
public class C5846j extends Exception {
    public C5846j(Error error) {
        super(error);
        if (error == null) {
            throw new NullPointerException("The causing error must not be null");
        }
    }

    @Override // java.lang.Throwable
    public Error getCause() {
        return (Error) super.getCause();
    }
}
