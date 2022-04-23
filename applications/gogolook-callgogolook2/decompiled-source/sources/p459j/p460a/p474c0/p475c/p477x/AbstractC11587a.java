package p459j.p460a.p474c0.p475c.p477x;
/* renamed from: j.a.c0.c.x.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/x/a.class */
public abstract class AbstractC11587a {

    /* renamed from: a */
    public String f25900a;

    /* renamed from: a */
    public void mo8736a(String str) {
        if (mo9044d() || str == null) {
            throw new IllegalStateException();
        }
        this.f25900a = str;
    }

    /* renamed from: b */
    public boolean m9045b(String str) {
        return str.equals(this.f25900a);
    }

    /* renamed from: c */
    public void mo8735c(String str) {
        if (m9045b(str)) {
            mo8718e();
            this.f25900a = null;
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: d */
    public boolean mo9044d() {
        return this.f25900a != null;
    }

    /* renamed from: e */
    public abstract void mo8718e();
}
