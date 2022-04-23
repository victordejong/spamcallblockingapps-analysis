package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vb.class */
public final class vb extends RewardedAd {

    /* renamed from: a  reason: collision with root package name */
    private final String f28419a;

    /* renamed from: b  reason: collision with root package name */
    private final uq f28420b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f28421c;

    /* renamed from: d  reason: collision with root package name */
    private final vl f28422d = new vl();
    private final vd e = new vd();
    private OnAdMetadataChangedListener f;
    private OnPaidEventListener g;
    private FullScreenContentCallback h;

    public vb(Context context, String str) {
        this.f28421c = context.getApplicationContext();
        this.f28419a = str;
        this.f28420b = ekb.b().b(context, str, new mj());
    }

    public final void a(emr emrVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.f28420b.a(ejb.a(this.f28421c, emrVar), new vh(rewardedAdLoadCallback, this));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            return this.f28420b.a();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getAdUnitId() {
        return this.f28419a;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.h;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getMediationAdapterClassName() {
        try {
            return this.f28420b.c();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return "";
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f28420b.e();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final RewardItem getRewardItem() {
        try {
            ul d2 = this.f28420b.d();
            if (d2 == null) {
                return null;
            }
            return new ve(d2);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final boolean isLoaded() {
        try {
            return this.f28420b.b();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.h = fullScreenContentCallback;
        this.f28422d.f28434a = fullScreenContentCallback;
        this.e.f28424b = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f28420b.a(z);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.f = onAdMetadataChangedListener;
            this.f28420b.a(new t(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.g = onPaidEventListener;
            this.f28420b.a(new s(onPaidEventListener));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.f28420b.a(new zzaww(serverSideVerificationOptions));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.f28422d.f28435b = onUserEarnedRewardListener;
        if (activity == null) {
            za.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.f28420b.a(this.f28422d);
            this.f28420b.a(d.a(activity));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        this.e.f28423a = rewardedAdCallback;
        try {
            this.f28420b.a(this.e);
            this.f28420b.a(d.a(activity));
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        this.e.f28423a = rewardedAdCallback;
        try {
            this.f28420b.a(this.e);
            this.f28420b.a(d.a(activity), z);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}
