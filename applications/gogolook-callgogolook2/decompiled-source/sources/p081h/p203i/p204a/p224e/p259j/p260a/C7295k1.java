package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzajk;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.k1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k1.class */
public final class C7295k1 implements MediationRewardedVideoAdListener {

    /* renamed from: a */
    public final AbstractC7256h1 f17358a;

    public C7295k1(AbstractC7256h1 h1Var) {
        this.f17358a = h1Var;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClicked.");
        try {
            this.f17358a.mo20885x(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdClosed.");
        try {
            this.f17358a.mo20889q(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdFailedToLoad.");
        try {
            this.f17358a.mo20893c(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLeftApplication.");
        try {
            this.f17358a.mo20887v(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdLoaded.");
        try {
            this.f17358a.mo20890o(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdOpened.");
        try {
            this.f17358a.mo20891m(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onInitializationFailed.");
        try {
            this.f17358a.mo20894b(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onInitializationSucceeded.");
        try {
            this.f17358a.mo20892j(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.f17358a.mo20895a(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter), new zzajk(rewardItem));
            } else {
                this.f17358a.mo20895a(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter), new zzajk("", 1));
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onVideoCompleted.");
        try {
            this.f17358a.mo20886w(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onVideoStarted.");
        try {
            this.f17358a.mo20888s(BinderC7110d.m21058a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void zzc(Bundle bundle) {
        C7021t.m21288a("#008 Must be called on the main UI thread.");
        C7452x1.m20572b("Adapter called onAdMetadataChanged.");
        try {
            this.f17358a.zzc(bundle);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
