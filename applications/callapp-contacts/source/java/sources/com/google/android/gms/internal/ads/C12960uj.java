package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.uj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uj.class */
public final class C12960uj implements MediationRewardedVideoAdListener {

    /* renamed from: a */
    private final AbstractC12956uf f49892a;

    public C12960uj(AbstractC12956uf abstractC12956uf) {
        this.f49892a = abstractC12956uf;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClicked.");
        try {
            this.f49892a.mo14108f(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdClosed.");
        try {
            this.f49892a.mo14109e(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdFailedToLoad.");
        try {
            this.f49892a.mo14112b(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f49892a.mo14107g(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdLoaded.");
        try {
            this.f49892a.mo14113b(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdOpened.");
        try {
            this.f49892a.mo14111c(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onInitializationFailed.");
        try {
            this.f49892a.mo14115a(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onInitializationSucceeded.");
        try {
            this.f49892a.mo14116a(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.f49892a.mo14114a(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter), new zzavy(rewardItem));
            } else {
                this.f49892a.mo14114a(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter), new zzavy("", 1));
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoCompleted.");
        try {
            this.f49892a.mo14106h(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onVideoStarted.");
        try {
            this.f49892a.mo14110d(BinderC12129d.m18979a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void zzb(Bundle bundle) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        C13088za.zzdz("Adapter called onAdMetadataChanged.");
        try {
            this.f49892a.mo14117a(bundle);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
