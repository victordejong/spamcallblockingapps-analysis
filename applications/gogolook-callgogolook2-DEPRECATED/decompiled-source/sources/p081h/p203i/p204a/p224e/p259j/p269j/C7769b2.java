package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.b2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/b2.class */
public class C7769b2 {

    /* renamed from: a */
    public volatile AbstractC7925t2 f18197a;

    /* renamed from: b */
    public volatile AbstractC7791e0 f18198b;

    static {
        C7965z0.m18739c();
    }

    /* renamed from: a */
    public final AbstractC7791e0 m19517a() {
        if (this.f18198b != null) {
            return this.f18198b;
        }
        synchronized (this) {
            if (this.f18198b != null) {
                return this.f18198b;
            }
            if (this.f18197a == null) {
                this.f18198b = AbstractC7791e0.f18220b;
            } else {
                this.f18198b = this.f18197a.mo18853c();
            }
            return this.f18198b;
        }
    }

    /* renamed from: a */
    public final AbstractC7925t2 m19516a(AbstractC7925t2 t2Var) {
        if (this.f18197a == null) {
            synchronized (this) {
                if (this.f18197a == null) {
                    try {
                        this.f18197a = t2Var;
                        this.f18198b = AbstractC7791e0.f18220b;
                    } catch (C7924t1 e) {
                        this.f18197a = t2Var;
                        this.f18198b = AbstractC7791e0.f18220b;
                    }
                }
            }
        }
        return this.f18197a;
    }

    /* renamed from: b */
    public final int m19515b() {
        if (this.f18198b != null) {
            return this.f18198b.size();
        }
        if (this.f18197a != null) {
            return this.f18197a.mo18882d();
        }
        return 0;
    }

    /* renamed from: b */
    public final AbstractC7925t2 m19514b(AbstractC7925t2 t2Var) {
        AbstractC7925t2 t2Var2 = this.f18197a;
        this.f18198b = null;
        this.f18197a = t2Var;
        return t2Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7769b2)) {
            return false;
        }
        C7769b2 b2Var = (C7769b2) obj;
        AbstractC7925t2 t2Var = this.f18197a;
        AbstractC7925t2 t2Var2 = b2Var.f18197a;
        return (t2Var == null && t2Var2 == null) ? m19517a().equals(b2Var.m19517a()) : (t2Var == null || t2Var2 == null) ? t2Var != null ? t2Var.equals(b2Var.m19516a(t2Var.mo18856a())) : m19516a(t2Var2.mo18856a()).equals(t2Var2) : t2Var.equals(t2Var2);
    }

    public int hashCode() {
        return 1;
    }
}
