package p181n7;

import android.support.p012v4.media.C0082b;
import p159l7.AbstractC3510a;
import p181n7.C3732a;
/* renamed from: n7.f */
/* loaded from: classes2-dex2jar.jar:n7/f.class */
public class C3748f implements AbstractC3510a {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3761j f12173a;

    public C3748f(C3732a c3732a, AbstractC3761j abstractC3761j) {
        this.f12173a = abstractC3761j;
    }

    @Override // p159l7.AbstractC3510a
    /* renamed from: a */
    public void mo1098a(Exception exc) {
        if (exc != null) {
            this.f12173a.mo1262n(exc);
            return;
        }
        C3745d c3745d = (C3745d) this.f12173a;
        if (c3745d.f12166q.isCancelled()) {
            return;
        }
        C3732a.C3736d c3736d = c3745d.f12166q;
        if (c3736d.f12145l != null) {
            c3736d.f12144k.cancel();
        }
        C3759h c3759h = c3745d.f12167r;
        StringBuilder m8752j = C0082b.m8752j("Received headers:\n");
        m8752j.append(c3745d.toString());
        c3759h.m1819e(m8752j.toString());
        for (AbstractC3749g abstractC3749g : c3745d.f12171v.f12122a) {
            abstractC3749g.mo1824f(c3745d.f12169t);
        }
    }
}
