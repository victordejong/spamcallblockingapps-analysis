package p148k7;

import javax.net.ssl.SSLException;
import p148k7.C3331c;
import p159l7.AbstractC3510a;
import p181n7.C3765m;
/* renamed from: k7.d */
/* loaded from: classes2-dex2jar.jar:k7/d.class */
public final class C3339d implements AbstractC3510a {

    /* renamed from: a */
    public final /* synthetic */ C3331c.AbstractC3338g f11323a;

    public C3339d(C3331c.AbstractC3338g abstractC3338g) {
        this.f11323a = abstractC3338g;
    }

    @Override // p159l7.AbstractC3510a
    /* renamed from: a */
    public void mo1098a(Exception exc) {
        if (exc != null) {
            ((C3765m) this.f11323a).f12208a.mo152a(exc, null);
            return;
        }
        C3331c.AbstractC3338g abstractC3338g = this.f11323a;
        ((C3765m) abstractC3338g).f12208a.mo152a(new SSLException("socket closed during handshake"), null);
    }
}
