package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.da */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/da.class */
public class C8069da {

    /* renamed from: a */
    public volatile AbstractC8390ua f18797a;

    /* renamed from: b */
    public volatile AbstractC8209k8 f18798b;

    static {
        C8028b9.m18676a();
    }

    /* renamed from: a */
    public final AbstractC8209k8 m18612a() {
        if (this.f18798b != null) {
            return this.f18798b;
        }
        synchronized (this) {
            if (this.f18798b != null) {
                return this.f18798b;
            }
            if (this.f18797a == null) {
                this.f18798b = AbstractC8209k8.f19017b;
            } else {
                this.f18798b = this.f18797a.mo18133c();
            }
            return this.f18798b;
        }
    }

    /* renamed from: a */
    public final AbstractC8390ua m18611a(AbstractC8390ua uaVar) {
        if (this.f18797a == null) {
            synchronized (this) {
                if (this.f18797a == null) {
                    try {
                        this.f18797a = uaVar;
                        this.f18798b = AbstractC8209k8.f19017b;
                    } catch (C8389u9 e) {
                        this.f18797a = uaVar;
                        this.f18798b = AbstractC8209k8.f19017b;
                    }
                }
            }
        }
        return this.f18797a;
    }

    /* renamed from: b */
    public final int m18610b() {
        if (this.f18798b != null) {
            return this.f18798b.size();
        }
        if (this.f18797a != null) {
            return this.f18797a.mo18132d();
        }
        return 0;
    }

    /* renamed from: b */
    public final AbstractC8390ua m18609b(AbstractC8390ua uaVar) {
        AbstractC8390ua uaVar2 = this.f18797a;
        this.f18798b = null;
        this.f18797a = uaVar;
        return uaVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8069da)) {
            return false;
        }
        C8069da daVar = (C8069da) obj;
        AbstractC8390ua uaVar = this.f18797a;
        AbstractC8390ua uaVar2 = daVar.f18797a;
        return (uaVar == null && uaVar2 == null) ? m18612a().equals(daVar.m18612a()) : (uaVar == null || uaVar2 == null) ? uaVar != null ? uaVar.equals(daVar.m18611a(uaVar.mo18102b())) : m18611a(uaVar2.mo18102b()).equals(uaVar2) : uaVar.equals(uaVar2);
    }

    public int hashCode() {
        return 1;
    }
}
