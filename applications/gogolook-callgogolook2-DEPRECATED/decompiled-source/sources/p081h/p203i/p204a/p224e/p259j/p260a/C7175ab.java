package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import androidx.media2.session.MediaSessionImplBase;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.ab */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ab.class */
public final class C7175ab<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {

    /* renamed from: a */
    public final AbstractC7291ja f17291a;

    public C7175ab(AbstractC7291ja jaVar) {
        this.f17291a = jaVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        C7452x1.m20572b("Adapter called onClick.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7188bb(this));
            return;
        }
        try {
            this.f17291a.onAdClicked();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        C7452x1.m20572b("Adapter called onDismissScreen.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20568d("#008 Must be called on the main UI thread.");
            C7343o1.f17401a.post(new RunnableC7227eb(this));
            return;
        }
        try {
            this.f17291a.onAdClosed();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        C7452x1.m20572b("Adapter called onDismissScreen.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7292jb(this));
            return;
        }
        try {
            this.f17291a.onAdClosed();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        C7452x1.m20572b(sb.toString());
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7240fb(this, errorCode));
            return;
        }
        try {
            this.f17291a.onAdFailedToLoad(C7189c.m20973a(errorCode));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        C7452x1.m20572b(sb.toString());
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7163a(this, errorCode));
            return;
        }
        try {
            this.f17291a.onAdFailedToLoad(C7189c.m20973a(errorCode));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        C7452x1.m20572b("Adapter called onLeaveApplication.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7253gb(this));
            return;
        }
        try {
            this.f17291a.onAdLeftApplication();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        C7452x1.m20572b("Adapter called onLeaveApplication.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7176b(this));
            return;
        }
        try {
            this.f17291a.onAdLeftApplication();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        C7452x1.m20572b("Adapter called onPresentScreen.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7266hb(this));
            return;
        }
        try {
            this.f17291a.onAdOpened();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        C7452x1.m20572b("Adapter called onPresentScreen.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7201cb(this));
            return;
        }
        try {
            this.f17291a.onAdOpened();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        C7452x1.m20572b("Adapter called onReceivedAd.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7279ib(this));
            return;
        }
        try {
            this.f17291a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        C7452x1.m20572b("Adapter called onReceivedAd.");
        C7430v3.m20640a();
        if (!C7343o1.m20767b()) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", null);
            C7343o1.f17401a.post(new RunnableC7214db(this));
            return;
        }
        try {
            this.f17291a.onAdLoaded();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
