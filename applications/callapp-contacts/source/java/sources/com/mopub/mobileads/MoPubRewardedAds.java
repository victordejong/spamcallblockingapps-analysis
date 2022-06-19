package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.mobileads.MoPubRewardedAdManager;
import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J7\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\u0010\u0013\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00150\u0014\"\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0002\u0010\u0016J-\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0016\u0010\u0013\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00150\u0014\"\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0005H\u0007J\u0012\u0010\u001a\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u001a\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\u001f"}, m4298d2 = {"Lcom/mopub/mobileads/MoPubRewardedAds;", "", "()V", "getAvailableRewards", "", "Lcom/mopub/common/MoPubReward;", "adUnitId", "", "hasRewardedAd", "", "initializeRewardedAds", "", "activity", "Landroid/app/Activity;", "sdkConfiguration", "Lcom/mopub/common/SdkConfiguration;", "loadRewardedAd", "requestParameters", "Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;", "mediationSettings", "", "Lcom/mopub/common/MediationSettings;", "(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V", "(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V", "selectReward", "selectedReward", "setRewardedAdListener", "listener", "Lcom/mopub/mobileads/MoPubRewardedAdListener;", "showRewardedAd", "customData", "mopub-sdk-fullscreen_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAds.class */
public final class MoPubRewardedAds {
    public static final MoPubRewardedAds INSTANCE = new MoPubRewardedAds();

    private MoPubRewardedAds() {
    }

    @ReflectionTarget
    public static final Set<MoPubReward> getAvailableRewards(String adUnitId) {
        C18524p.m3841c(adUnitId, "adUnitId");
        Set<MoPubReward> availableRewards = MoPubRewardedAdManager.getAvailableRewards(adUnitId);
        C18524p.m3849a((Object) availableRewards, "MoPubRewardedAdManager.g…vailableRewards(adUnitId)");
        return availableRewards;
    }

    @ReflectionTarget
    public static final boolean hasRewardedAd(String adUnitId) {
        C18524p.m3841c(adUnitId, "adUnitId");
        return MoPubRewardedAdManager.hasAd(adUnitId);
    }

    @ReflectionTarget
    private static final void initializeRewardedAds(Activity activity, SdkConfiguration sdkConfiguration) {
        MediationSettings[] mediationSettings = sdkConfiguration.getMediationSettings();
        MoPubRewardedAdManager.init(activity, (MediationSettings[]) Arrays.copyOf(mediationSettings, mediationSettings.length));
    }

    @ReflectionTarget
    public static final void loadRewardedAd(String adUnitId, MoPubRewardedAdManager.RequestParameters requestParameters, MediationSettings... mediationSettings) {
        C18524p.m3841c(adUnitId, "adUnitId");
        C18524p.m3841c(mediationSettings, "mediationSettings");
        MoPubRewardedAdManager.loadAd(adUnitId, requestParameters, (MediationSettings[]) Arrays.copyOf(mediationSettings, mediationSettings.length));
    }

    @ReflectionTarget
    public static final void loadRewardedAd(String adUnitId, MediationSettings... mediationSettings) {
        C18524p.m3841c(adUnitId, "adUnitId");
        C18524p.m3841c(mediationSettings, "mediationSettings");
        MoPubRewardedAdManager.loadAd(adUnitId, null, (MediationSettings[]) Arrays.copyOf(mediationSettings, mediationSettings.length));
    }

    @ReflectionTarget
    public static final void selectReward(String adUnitId, MoPubReward selectedReward) {
        C18524p.m3841c(adUnitId, "adUnitId");
        C18524p.m3841c(selectedReward, "selectedReward");
        MoPubRewardedAdManager.selectReward(adUnitId, selectedReward);
    }

    @ReflectionTarget
    public static final void setRewardedAdListener(MoPubRewardedAdListener moPubRewardedAdListener) {
        MoPubRewardedAdManager.setRewardedAdListener(moPubRewardedAdListener);
    }

    @ReflectionTarget
    public static final void showRewardedAd(String adUnitId) {
        C18524p.m3841c(adUnitId, "adUnitId");
        MoPubRewardedAdManager.showAd(adUnitId);
    }

    @ReflectionTarget
    public static final void showRewardedAd(String adUnitId, String str) {
        C18524p.m3841c(adUnitId, "adUnitId");
        MoPubRewardedAdManager.showAd(adUnitId, str);
    }
}
