package p148k7;

import p159l7.AbstractC3510a;
/* renamed from: k7.x */
/* loaded from: classes2-dex2jar.jar:k7/x.class */
public final class C3379x implements AbstractC3510a {

    /* renamed from: a */
    public boolean f11418a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC3510a f11419b;

    public C3379x(AbstractC3510a abstractC3510a) {
        this.f11419b = abstractC3510a;
    }

    @Override // p159l7.AbstractC3510a
    /* renamed from: a */
    public void mo1098a(Exception exc) {
        if (this.f11418a) {
            return;
        }
        this.f11418a = true;
        this.f11419b.mo1098a(exc);
    }
}
