package com.google.ads.mediation.facebook;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.AbstractC1609Ad;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.google.ads.mediation.facebook.C1661a;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p104g6.C2906b;
/* renamed from: com.google.ads.mediation.facebook.b */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/b.class */
public class C1663b implements MediationRewardedAd, RewardedVideoAdExtendedListener {

    /* renamed from: a */
    public MediationRewardedAdConfiguration f6205a;

    /* renamed from: b */
    public MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> f6206b;

    /* renamed from: c */
    public RewardedVideoAd f6207c;

    /* renamed from: e */
    public MediationRewardedAdCallback f6209e;

    /* renamed from: d */
    public AtomicBoolean f6208d = new AtomicBoolean();

    /* renamed from: f */
    public boolean f6210f = false;

    /* renamed from: g */
    public AtomicBoolean f6211g = new AtomicBoolean();

    /* renamed from: com.google.ads.mediation.facebook.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/facebook/b$a.class */
    public class C1664a implements C1661a.AbstractC1662a {

        /* renamed from: a */
        public final /* synthetic */ Context f6212a;

        /* renamed from: b */
        public final /* synthetic */ String f6213b;

        public C1664a(Context context, String str) {
            C1663b.this = r4;
            this.f6212a = context;
            this.f6213b = str;
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: a */
        public void mo4818a() {
            C1663b c1663b = C1663b.this;
            Context context = this.f6212a;
            String str = this.f6213b;
            Objects.requireNonNull(c1663b);
            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(context, str);
            c1663b.f6207c = rewardedVideoAd;
            rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(c1663b).withAdExperience(c1663b.mo1519a()).build());
        }

        @Override // com.google.ads.mediation.facebook.C1661a.AbstractC1662a
        /* renamed from: b */
        public void mo4817b(AdError adError) {
            Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
            MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = C1663b.this.f6206b;
            if (mediationAdLoadCallback != null) {
                mediationAdLoadCallback.onFailure(adError);
            }
        }
    }

    public C1663b(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.f6205a = mediationRewardedAdConfiguration;
        this.f6206b = mediationAdLoadCallback;
    }

    /* renamed from: a */
    public AdExperienceType mo1519a() {
        return AdExperienceType.AD_EXPERIENCE_TYPE_REWARDED;
    }

    /* renamed from: b */
    public void m4819b() {
        Context context = this.f6205a.getContext();
        String placementID = FacebookMediationAdapter.getPlacementID(this.f6205a.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            AdError adError = new AdError(101, "Failed to request ad. PlacementID is null or empty.", FacebookMediationAdapter.ERROR_DOMAIN);
            adError.getMessage();
            this.f6206b.onFailure(adError);
            return;
        }
        String bidResponse = this.f6205a.getBidResponse();
        if (!TextUtils.isEmpty(bidResponse)) {
            this.f6210f = true;
        }
        FacebookMediationAdapter.setMixedAudience(this.f6205a);
        if (!this.f6210f) {
            C1661a.m4822a().m4821b(context, placementID, new C1664a(context, placementID));
            return;
        }
        this.f6207c = new RewardedVideoAd(context, placementID);
        if (!TextUtils.isEmpty(this.f6205a.getWatermark())) {
            this.f6207c.setExtraHints(new ExtraHints.Builder().mediationData(this.f6205a.getWatermark()).build());
        }
        RewardedVideoAd rewardedVideoAd = this.f6207c;
        rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(this).withBid(bidResponse).withAdExperience(mo1519a()).build());
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f6209e;
        if (mediationRewardedAdCallback == null || this.f6210f) {
            return;
        }
        mediationRewardedAdCallback.reportAdClicked();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.f6206b;
        if (mediationAdLoadCallback != null) {
            this.f6209e = mediationAdLoadCallback.onSuccess(this);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC1609Ad abstractC1609Ad, com.facebook.ads.AdError adError) {
        AdError adError2 = FacebookMediationAdapter.getAdError(adError);
        if (this.f6208d.get()) {
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            MediationRewardedAdCallback mediationRewardedAdCallback = this.f6209e;
            if (mediationRewardedAdCallback != null) {
                mediationRewardedAdCallback.onAdFailedToShow(adError2);
            }
        } else {
            Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
            MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.f6206b;
            if (mediationAdLoadCallback != null) {
                mediationAdLoadCallback.onFailure(adError2);
            }
        }
        this.f6207c.destroy();
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f6209e;
        if (mediationRewardedAdCallback == null || this.f6210f) {
            return;
        }
        mediationRewardedAdCallback.reportAdImpression();
    }

    @Override // com.facebook.ads.RewardedVideoAdExtendedListener
    public void onRewardedVideoActivityDestroyed() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        if (!this.f6211g.getAndSet(true) && (mediationRewardedAdCallback = this.f6209e) != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        RewardedVideoAd rewardedVideoAd = this.f6207c;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoClosed() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        if (!this.f6211g.getAndSet(true) && (mediationRewardedAdCallback = this.f6209e) != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        RewardedVideoAd rewardedVideoAd = this.f6207c;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoCompleted() {
        this.f6209e.onVideoComplete();
        this.f6209e.onUserEarnedReward(new C2906b());
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        this.f6208d.set(true);
        if (this.f6207c.show()) {
            MediationRewardedAdCallback mediationRewardedAdCallback = this.f6209e;
            if (mediationRewardedAdCallback == null) {
                return;
            }
            mediationRewardedAdCallback.onVideoStart();
            this.f6209e.onAdOpened();
            return;
        }
        AdError adError = new AdError(110, "Failed to present rewarded ad.", FacebookMediationAdapter.ERROR_DOMAIN);
        Log.w(FacebookMediationAdapter.TAG, adError.getMessage());
        MediationRewardedAdCallback mediationRewardedAdCallback2 = this.f6209e;
        if (mediationRewardedAdCallback2 != null) {
            mediationRewardedAdCallback2.onAdFailedToShow(adError);
        }
        this.f6207c.destroy();
    }
}
