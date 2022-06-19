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
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.vn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vn.class */
public final class C12991vn extends RewardedInterstitialAd {

    /* renamed from: a */
    private final String f49920a;

    /* renamed from: b */
    private final AbstractC12967uq f49921b;

    /* renamed from: c */
    private final Context f49922c;

    /* renamed from: d */
    private final BinderC12989vl f49923d = new BinderC12989vl();

    /* renamed from: e */
    private FullScreenContentCallback f49924e;

    /* renamed from: f */
    private OnAdMetadataChangedListener f49925f;

    /* renamed from: g */
    private OnPaidEventListener f49926g;

    public C12991vn(Context context, String str) {
        this.f49920a = str;
        this.f49922c = context.getApplicationContext();
        this.f49921b = ekb.m14834b().m14852b(context, str, new BinderC12743mj());
    }

    /* renamed from: a */
    public final void m14074a(emr emrVar, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        try {
            this.f49921b.mo14092b(ejb.m14863a(this.f49922c, emrVar), new BinderC12992vo(rewardedInterstitialAdLoadCallback, this));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final Bundle getAdMetadata() {
        try {
            return this.f49921b.mo14103a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final String getAdUnitId() {
        return this.f49920a;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.f49924e;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.f49925f;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f49926g;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f49921b.mo14089e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final RewardItem getRewardItem() {
        try {
            AbstractC12962ul mo14090d = this.f49921b.mo14090d();
            if (mo14090d != null) {
                return new C12982ve(mo14090d);
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        return RewardItem.DEFAULT_REWARD;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.f49924e = fullScreenContentCallback;
        this.f49923d.f49916a = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f49921b.mo14094a(z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f49925f = onAdMetadataChangedListener;
        try {
            this.f49921b.mo14100a(new BinderC12923t(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.f49926g = onPaidEventListener;
        try {
            this.f49921b.mo14099a(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.f49921b.mo14096a(new zzaww(serverSideVerificationOptions));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.f49923d.f49917b = onUserEarnedRewardListener;
        try {
            this.f49921b.mo14098a(this.f49923d);
            this.f49921b.mo14102a(BinderC12129d.m18979a(activity));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
