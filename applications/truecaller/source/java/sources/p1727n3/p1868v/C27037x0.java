package p1727n3.p1868v;
/* renamed from: n3.v.x0 */
/* loaded from: classes-dex2jar.jar:n3/v/x0.class */
public final class C27037x0 implements AbstractC27012l0<X> {

    /* renamed from: a */
    public boolean f75584a = true;

    /* renamed from: b */
    public final /* synthetic */ i0 f75585b;

    public C27037x0(i0 i0Var) {
        this.f75585b = i0Var;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(X x) {
        Object m42869d = this.f75585b.m42869d();
        if (this.f75584a || ((m42869d == null && x != 0) || (m42869d != null && !m42869d.equals(x)))) {
            this.f75584a = false;
            this.f75585b.mo1000l(x);
        }
    }
}
