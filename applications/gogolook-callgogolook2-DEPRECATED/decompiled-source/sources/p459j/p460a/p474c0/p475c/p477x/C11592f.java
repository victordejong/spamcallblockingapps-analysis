package p459j.p460a.p474c0.p475c.p477x;

import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.x.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/x/f.class */
public class C11592f<T extends AbstractC11587a> extends AbstractC11590d<T> {

    /* renamed from: a */
    public final AbstractC11590d<T> f25907a;

    public C11592f(AbstractC11590d<T> dVar) {
        this.f25907a = m9032b((AbstractC11590d) dVar);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: a */
    public String mo9035a() {
        return this.f25907a.mo9035a();
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: a */
    public void mo9034a(T t) {
        this.f25907a.mo9034a((AbstractC11590d<T>) t);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: b */
    public T mo9033b() {
        return this.f25907a.mo9033b();
    }

    /* renamed from: b */
    public final AbstractC11590d<T> m9032b(AbstractC11590d<T> dVar) {
        while (dVar instanceof C11592f) {
            dVar = ((C11592f) dVar).f25907a;
        }
        C12151d.m6999b(dVar instanceof C11589c);
        return dVar;
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: c */
    public boolean mo9031c() {
        return this.f25907a.mo9031c();
    }
}
