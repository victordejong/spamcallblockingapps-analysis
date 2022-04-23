package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.s9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s9.class */
public final class BinderC7400s9 extends AbstractBinderC7199c9 {

    /* renamed from: a */
    public final OnPublisherAdViewLoadedListener f17454a;

    public BinderC7400s9(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.f17454a = onPublisherAdViewLoadedListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7186b9
    /* renamed from: a */
    public final void mo20677a(AbstractC7322m4 m4Var, AbstractC7106b bVar) {
        if (m4Var != null && bVar != null) {
            PublisherAdView publisherAdView = new PublisherAdView((Context) BinderC7110d.m21059A(bVar));
            AppEventListener appEventListener = null;
            try {
                if (m4Var.mo20746e() instanceof BinderC7193c3) {
                    BinderC7193c3 c3Var = (BinderC7193c3) m4Var.mo20746e();
                    publisherAdView.setAdListener(c3Var != null ? c3Var.m20966G0() : null);
                }
            } catch (RemoteException e) {
                C7452x1.m20571b("", e);
            }
            try {
                if (m4Var.mo20743z() instanceof BinderC7284j3) {
                    BinderC7284j3 j3Var = (BinderC7284j3) m4Var.mo20743z();
                    if (j3Var != null) {
                        appEventListener = j3Var.m20883G0();
                    }
                    publisherAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                C7452x1.m20571b("", e2);
            }
            C7343o1.f17401a.post(new RunnableC7412t9(this, publisherAdView, m4Var));
        }
    }
}
