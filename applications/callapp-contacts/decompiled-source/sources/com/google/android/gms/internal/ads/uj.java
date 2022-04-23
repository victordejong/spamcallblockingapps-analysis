package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uj.class */
public final class uj implements MediationRewardedVideoAdListener {

    /* renamed from: a  reason: collision with root package name */
    private final uf f28418a;

    public uj(uf ufVar) {
        this.f28418a = ufVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClicked.");
        try {
            this.f28418a.f(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdClosed.");
        try {
            this.f28418a.e(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdFailedToLoad.");
        try {
            this.f28418a.b(d.a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLeftApplication.");
        try {
            this.f28418a.g(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdLoaded.");
        try {
            this.f28418a.b(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdOpened.");
        try {
            this.f28418a.c(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onInitializationFailed.");
        try {
            this.f28418a.a(d.a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onInitializationSucceeded.");
        try {
            this.f28418a.a(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.f28418a.a(d.a(mediationRewardedVideoAdAdapter), new zzavy(rewardItem));
            } else {
                this.f28418a.a(d.a(mediationRewardedVideoAdAdapter), new zzavy("", 1));
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoCompleted.");
        try {
            this.f28418a.h(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onVideoStarted.");
        try {
            this.f28418a.d(d.a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void zzb(Bundle bundle) {
        o.b("#008 Must be called on the main UI thread.");
        za.zzdz("Adapter called onAdMetadataChanged.");
        try {
            this.f28418a.a(bundle);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
