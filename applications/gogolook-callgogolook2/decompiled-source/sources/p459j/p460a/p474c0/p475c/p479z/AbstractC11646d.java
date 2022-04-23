package p459j.p460a.p474c0.p475c.p479z;

import p459j.p460a.p474c0.p475c.p477x.AbstractC11588b;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11685y;
import p459j.p460a.p474c0.p475c.p479z.C11675t;
/* renamed from: j.a.c0.c.z.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/d.class */
public abstract class AbstractC11646d<T extends AbstractC11685y> extends AbstractC11588b implements AbstractC11672r<T>, C11675t.AbstractC11679d<T> {

    /* renamed from: c */
    public C11675t.AbstractC11679d<T> f26151c;

    public AbstractC11646d(C11675t.AbstractC11679d<T> dVar) {
        this.f26151c = dVar;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11675t.AbstractC11679d
    /* renamed from: a */
    public void mo7924a(AbstractC11672r<T> rVar, T t, boolean z) {
        C11675t.AbstractC11679d<T> dVar;
        if (mo9044d() && (dVar = this.f26151c) != null) {
            dVar.mo7924a(rVar, t, z);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11675t.AbstractC11679d
    /* renamed from: a */
    public void mo7923a(AbstractC11672r<T> rVar, Exception exc) {
        C11675t.AbstractC11679d<T> dVar;
        if (mo9044d() && (dVar = this.f26151c) != null) {
            dVar.mo7923a(rVar, exc);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        this.f26151c = null;
    }
}
