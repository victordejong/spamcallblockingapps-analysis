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
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u000f\"\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J9\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u000f\"\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001dJ\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u001fH\u0007¢\u0006\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/mopub/mobileads/MoPubRewardedAds;", "", "Landroid/app/Activity;", "activity", "Lcom/mopub/common/SdkConfiguration;", "sdkConfiguration", "Ls1/s;", "initializeRewardedAds", "(Landroid/app/Activity;Lcom/mopub/common/SdkConfiguration;)V", "Lcom/mopub/mobileads/MoPubRewardedAdListener;", "listener", "setRewardedAdListener", "(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V", "", "adUnitId", "", "Lcom/mopub/common/MediationSettings;", "mediationSettings", "loadRewardedAd", "(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V", "Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;", "requestParameters", "(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V", "", "hasRewardedAd", "(Ljava/lang/String;)Z", "showRewardedAd", "(Ljava/lang/String;)V", "customData", "(Ljava/lang/String;Ljava/lang/String;)V", "", "Lcom/mopub/common/MoPubReward;", "getAvailableRewards", "(Ljava/lang/String;)Ljava/util/Set;", "selectedReward", "selectReward", "(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V", "<init>", "()V", "mopub-sdk-fullscreen_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAds.class */
public final class MoPubRewardedAds {
    public static final MoPubRewardedAds INSTANCE = new MoPubRewardedAds();

    private MoPubRewardedAds() {
    }

    @ReflectionTarget
    public static final Set<MoPubReward> getAvailableRewards(String str) {
        l.f(str, "adUnitId");
        Set<MoPubReward> availableRewards = MoPubRewardedAdManager.getAvailableRewards(str);
        l.b(availableRewards, "MoPubRewardedAdManager.g…vailableRewards(adUnitId)");
        return availableRewards;
    }

    @ReflectionTarget
    public static final boolean hasRewardedAd(String str) {
        l.f(str, "adUnitId");
        return MoPubRewardedAdManager.hasAd(str);
    }

    @ReflectionTarget
    private static final void initializeRewardedAds(Activity activity, SdkConfiguration sdkConfiguration) {
        MediationSettings[] mediationSettings = sdkConfiguration.getMediationSettings();
        MoPubRewardedAdManager.init(activity, (MediationSettings[]) Arrays.copyOf(mediationSettings, mediationSettings.length));
    }

    @ReflectionTarget
    public static final void loadRewardedAd(String str, MoPubRewardedAdManager.RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        l.f(str, "adUnitId");
        l.f(mediationSettingsArr, "mediationSettings");
        MoPubRewardedAdManager.loadAd(str, requestParameters, (MediationSettings[]) Arrays.copyOf(mediationSettingsArr, mediationSettingsArr.length));
    }

    @ReflectionTarget
    public static final void loadRewardedAd(String str, MediationSettings... mediationSettingsArr) {
        l.f(str, "adUnitId");
        l.f(mediationSettingsArr, "mediationSettings");
        MoPubRewardedAdManager.loadAd(str, null, (MediationSettings[]) Arrays.copyOf(mediationSettingsArr, mediationSettingsArr.length));
    }

    @ReflectionTarget
    public static final void selectReward(String str, MoPubReward moPubReward) {
        l.f(str, "adUnitId");
        l.f(moPubReward, "selectedReward");
        MoPubRewardedAdManager.selectReward(str, moPubReward);
    }

    @ReflectionTarget
    public static final void setRewardedAdListener(MoPubRewardedAdListener moPubRewardedAdListener) {
        MoPubRewardedAdManager.setRewardedAdListener(moPubRewardedAdListener);
    }

    @ReflectionTarget
    public static final void showRewardedAd(String str) {
        l.f(str, "adUnitId");
        MoPubRewardedAdManager.showAd(str);
    }

    @ReflectionTarget
    public static final void showRewardedAd(String str, String str2) {
        l.f(str, "adUnitId");
        MoPubRewardedAdManager.showAd(str, str2);
    }
}
