package p148k7;

import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
/* renamed from: k7.n */
/* loaded from: classes2-dex2jar.jar:k7/n.class */
public abstract class AbstractC3361n implements AbstractC3360m {

    /* renamed from: a */
    public boolean f11383a;

    /* renamed from: b */
    public AbstractC3510a f11384b;

    /* renamed from: c */
    public AbstractC3513c f11385c;

    @Override // p148k7.AbstractC3360m
    /* renamed from: b */
    public void mo939b(AbstractC3513c abstractC3513c) {
        this.f11385c = abstractC3513c;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: f */
    public String mo937f() {
        return null;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: h */
    public final void mo936h(AbstractC3510a abstractC3510a) {
        this.f11384b = abstractC3510a;
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: i */
    public AbstractC3513c mo935i() {
        return this.f11385c;
    }

    /* renamed from: n */
    public void mo1262n(Exception exc) {
        if (this.f11383a) {
            return;
        }
        this.f11383a = true;
        AbstractC3510a abstractC3510a = this.f11384b;
        if (abstractC3510a == null) {
            return;
        }
        abstractC3510a.mo1098a(exc);
    }
}
