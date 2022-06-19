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
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.vb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vb.class */
public final class C12979vb extends RewardedAd {

    /* renamed from: a */
    private final String f49893a;

    /* renamed from: b */
    private final AbstractC12967uq f49894b;

    /* renamed from: c */
    private final Context f49895c;

    /* renamed from: d */
    private final BinderC12989vl f49896d = new BinderC12989vl();

    /* renamed from: e */
    private final BinderC12981vd f49897e = new BinderC12981vd();

    /* renamed from: f */
    private OnAdMetadataChangedListener f49898f;

    /* renamed from: g */
    private OnPaidEventListener f49899g;

    /* renamed from: h */
    private FullScreenContentCallback f49900h;

    public C12979vb(Context context, String str) {
        this.f49895c = context.getApplicationContext();
        this.f49893a = str;
        this.f49894b = ekb.m14834b().m14852b(context, str, new BinderC12743mj());
    }

    /* renamed from: a */
    public final void m14087a(emr emrVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.f49894b.mo14095a(ejb.m14863a(this.f49895c, emrVar), new BinderC12985vh(rewardedAdLoadCallback, this));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            return this.f49894b.mo14103a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getAdUnitId() {
        return this.f49893a;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.f49900h;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getMediationAdapterClassName() {
        try {
            return this.f49894b.mo14091c();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return "";
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.f49898f;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f49899g;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            emjVar = this.f49894b.mo14089e();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final RewardItem getRewardItem() {
        try {
            AbstractC12962ul mo14090d = this.f49894b.mo14090d();
            if (mo14090d != null) {
                return new C12982ve(mo14090d);
            }
            return null;
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final boolean isLoaded() {
        try {
            return this.f49894b.mo14093b();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.f49900h = fullScreenContentCallback;
        this.f49896d.f49916a = fullScreenContentCallback;
        this.f49897e.f49902b = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.f49894b.mo14094a(z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.f49898f = onAdMetadataChangedListener;
            this.f49894b.mo14100a(new BinderC12923t(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f49899g = onPaidEventListener;
            this.f49894b.mo14099a(new BinderC12896s(onPaidEventListener));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.f49894b.mo14096a(new zzaww(serverSideVerificationOptions));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.f49896d.f49917b = onUserEarnedRewardListener;
        if (activity == null) {
            C13088za.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.f49894b.mo14098a(this.f49896d);
            this.f49894b.mo14102a(BinderC12129d.m18979a(activity));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        this.f49897e.f49901a = rewardedAdCallback;
        try {
            this.f49894b.mo14098a(this.f49897e);
            this.f49894b.mo14102a(BinderC12129d.m18979a(activity));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        this.f49897e.f49901a = rewardedAdCallback;
        try {
            this.f49894b.mo14098a(this.f49897e);
            this.f49894b.mo14101a(BinderC12129d.m18979a(activity), z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}
