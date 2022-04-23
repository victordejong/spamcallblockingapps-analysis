package p459j.p460a.p474c0.p475c.p477x;

import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.x.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/x/e.class */
public class C11591e<T extends AbstractC11587a> extends C11589c<T> {

    /* renamed from: e */
    public T f25906e;

    public C11591e(Object obj) {
        super(obj);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.C11589c
    /* renamed from: b */
    public void mo9038b(T t) {
        super.mo9038b((C11591e<T>) t);
        this.f25906e = null;
    }

    /* renamed from: f */
    public void m9037f() {
        C12151d.m7008a(this.f25906e);
        C12151d.m6999b(mo9031c());
        this.f25906e = mo9033b();
        m9042e();
    }

    /* renamed from: g */
    public void m9036g() {
        if (this.f25906e != null) {
            C12151d.m7003a(mo9031c());
            mo9038b((C11591e<T>) this.f25906e);
            this.f25906e = null;
        }
    }
}
