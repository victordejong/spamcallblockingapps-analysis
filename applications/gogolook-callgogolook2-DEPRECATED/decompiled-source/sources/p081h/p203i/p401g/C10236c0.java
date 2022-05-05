package p081h.p203i.p401g;
/* renamed from: h.i.g.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/c0.class */
public class C10236c0 {

    /* renamed from: a */
    public AbstractC10253g f23063a;

    /* renamed from: b */
    public C10459r f23064b;

    /* renamed from: c */
    public volatile AbstractC10437l0 f23065c;

    /* renamed from: d */
    public volatile AbstractC10253g f23066d;

    static {
        C10459r.m11791a();
    }

    public C10236c0(C10459r rVar, AbstractC10253g gVar) {
        m13047a(rVar, gVar);
        this.f23064b = rVar;
        this.f23063a = gVar;
    }

    /* renamed from: a */
    public static void m13047a(C10459r rVar, AbstractC10253g gVar) {
        if (rVar == null) {
            throw new NullPointerException("found null ExtensionRegistry");
        } else if (gVar == null) {
            throw new NullPointerException("found null ByteString");
        }
    }

    /* renamed from: a */
    public int m13049a() {
        if (this.f23066d != null) {
            return this.f23066d.size();
        }
        AbstractC10253g gVar = this.f23063a;
        if (gVar != null) {
            return gVar.size();
        }
        if (this.f23065c != null) {
            return this.f23065c.mo11678h();
        }
        return 0;
    }

    /* renamed from: a */
    public void m13048a(AbstractC10437l0 l0Var) {
        if (this.f23065c == null) {
            synchronized (this) {
                if (this.f23065c == null) {
                    try {
                        if (this.f23063a != null) {
                            this.f23065c = (AbstractC10437l0) l0Var.mo11677j().mo11789a(this.f23063a, this.f23064b);
                            this.f23066d = this.f23063a;
                        } else {
                            this.f23065c = l0Var;
                            this.f23066d = AbstractC10253g.f23087b;
                        }
                    } catch (C10222a0 e) {
                        this.f23065c = l0Var;
                        this.f23066d = AbstractC10253g.f23087b;
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public AbstractC10253g m13046b() {
        if (this.f23066d != null) {
            return this.f23066d;
        }
        AbstractC10253g gVar = this.f23063a;
        if (gVar != null) {
            return gVar;
        }
        synchronized (this) {
            if (this.f23066d != null) {
                return this.f23066d;
            }
            if (this.f23065c == null) {
                this.f23066d = AbstractC10253g.f23087b;
            } else {
                this.f23066d = this.f23065c.mo11839g();
            }
            return this.f23066d;
        }
    }

    /* renamed from: b */
    public AbstractC10437l0 m13045b(AbstractC10437l0 l0Var) {
        m13048a(l0Var);
        return this.f23065c;
    }

    /* renamed from: c */
    public AbstractC10437l0 m13044c(AbstractC10437l0 l0Var) {
        AbstractC10437l0 l0Var2 = this.f23065c;
        this.f23063a = null;
        this.f23066d = null;
        this.f23065c = l0Var;
        return l0Var2;
    }
}
