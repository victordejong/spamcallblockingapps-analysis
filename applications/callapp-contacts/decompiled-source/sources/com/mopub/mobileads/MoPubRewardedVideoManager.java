package com.mopub.mobileads;

import android.app.Activity;
import android.location.Location;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager.class */
public class MoPubRewardedVideoManager {

    @Deprecated
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters.class */
    public static final class RequestParameters {
        @Deprecated
        public final String mCustomerId;
        @Deprecated
        public final String mKeywords;
        @Deprecated
        public final Location mLocation;
        @Deprecated
        public final String mUserDataKeywords;

        @Deprecated
        public RequestParameters(String str) {
            this(str, null);
        }

        @Deprecated
        public RequestParameters(String str, String str2) {
            this(str, str2, null);
        }

        @Deprecated
        public RequestParameters(String str, String str2, Location location) {
            this(str, str2, location, null);
        }

        @Deprecated
        public RequestParameters(String str, String str2, Location location, String str3) {
            this.mKeywords = str;
            this.mCustomerId = str3;
            boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
            this.mUserDataKeywords = !canCollectPersonalInformation ? null : str2;
            this.mLocation = !canCollectPersonalInformation ? null : location;
        }
    }

    @Deprecated
    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        return (T) MoPubRewardedAdManager.getGlobalMediationSettings(cls);
    }

    @Deprecated
    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        return (T) MoPubRewardedAdManager.getInstanceMediationSettings(cls, str);
    }

    @Deprecated
    public static void init(Activity activity, MediationSettings... mediationSettingsArr) {
        MoPubRewardedAdManager.init(activity, mediationSettingsArr);
    }

    @Deprecated
    public static void setRewardedVideoListener(MoPubRewardedVideoListener moPubRewardedVideoListener) {
        MoPubRewardedVideos.setRewardedVideoListener(moPubRewardedVideoListener);
    }

    @Deprecated
    public static void updateActivity(Activity activity) {
        MoPubRewardedAdManager.updateActivity(activity);
    }
}
