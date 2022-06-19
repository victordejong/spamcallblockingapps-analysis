package p020b5;

import p275w5.AbstractC4739b;
/* renamed from: b5.c */
/* loaded from: classes-dex2jar.jar:b5/c.class */
public final class C0732c implements AbstractC0730a {

    /* renamed from: b */
    public static final AbstractC0731b f2788b = new C0734b(null);

    /* renamed from: a */
    public final AbstractC4739b<AbstractC0730a> f2789a;

    /* renamed from: b5.c$b */
    /* loaded from: classes-dex2jar.jar:b5/c$b.class */
    public static final class C0734b implements AbstractC0731b {
        public C0734b(C0733a c0733a) {
        }
    }

    public C0732c(AbstractC4739b<AbstractC0730a> abstractC4739b) {
        this.f2789a = abstractC4739b;
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: a */
    public boolean mo7428a(String str) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            return abstractC0730a.mo7428a(str);
        }
        return true;
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: b */
    public AbstractC0731b mo7427b(String str) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        return abstractC0730a != null ? abstractC0730a.mo7427b(str) : f2788b;
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: c */
    public void mo7426c(String str, int i, String str2, int i2, long j, long j2, boolean z, int i3, String str3, String str4) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            abstractC0730a.mo7426c(str, i, str2, i2, j, j2, z, i3, str3, str4);
        }
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: d */
    public void mo7425d(String str, String str2, String str3, String str4, String str5, int i, String str6) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            abstractC0730a.mo7425d(str, str2, str3, str4, str5, i, str6);
        }
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: e */
    public void mo7424e(String str, String str2, long j) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            abstractC0730a.mo7424e(str, str2, j);
        }
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: f */
    public void mo7423f(String str, String str2, String str3, boolean z) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            abstractC0730a.mo7423f(str, str2, str3, z);
        }
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: g */
    public boolean mo7422g(String str) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            return abstractC0730a.mo7422g(str);
        }
        return true;
    }

    @Override // p020b5.AbstractC0730a
    /* renamed from: h */
    public boolean mo7421h(String str) {
        AbstractC0730a abstractC0730a = this.f2789a.get();
        if (abstractC0730a != null) {
            return abstractC0730a.mo7421h(str);
        }
        return false;
    }
}
