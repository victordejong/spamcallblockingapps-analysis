package p181n7;

import p159l7.AbstractC3510a;
import p192o7.AbstractC3938a;
/* renamed from: n7.e */
/* loaded from: classes2-dex2jar.jar:n7/e.class */
public class C3747e implements AbstractC3510a {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3761j f12172a;

    public C3747e(C3732a c3732a, AbstractC3761j abstractC3761j) {
        this.f12172a = abstractC3761j;
    }

    @Override // p159l7.AbstractC3510a
    /* renamed from: a */
    public void mo1098a(Exception exc) {
        if (exc != null) {
            this.f12172a.mo1262n(exc);
            return;
        }
        AbstractC3761j abstractC3761j = this.f12172a;
        C3759h c3759h = abstractC3761j.f12198i;
        AbstractC3938a abstractC3938a = c3759h.f12189f;
        if (abstractC3938a != null) {
            abstractC3938a.mo78a(c3759h, abstractC3761j.f12205p, new C3760i(abstractC3761j));
        } else {
            abstractC3761j.mo1817p(null);
        }
    }
}
