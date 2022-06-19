package com.google.ads.mediation.mopub;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubRewardedVideoListener;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import com.mopub.mobileads.MoPubRewardedVideos;
import com.mopub.mobileads.dfp.adapters.MoPubAdapterRewardedListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/mopub/MoPubSingleton.class */
public class MoPubSingleton implements MoPubRewardedVideoListener {
    private static MoPubSingleton instance;
    private static boolean isInitializing;
    private static HashMap<String, WeakReference<MoPubAdapterRewardedListener>> mListeners = new HashMap<>();
    private ArrayList<SdkInitializationListener> mInitListeners = new ArrayList<>();

    public static boolean containsPII(MediationAdConfiguration mediationAdConfiguration) {
        return mediationAdConfiguration.getLocation() != null;
    }

    public static MoPubSingleton getInstance() {
        if (instance == null) {
            instance = new MoPubSingleton();
        }
        return instance;
    }

    public static String getKeywords(MediationAdConfiguration mediationAdConfiguration, boolean z) {
        String str = "gmext";
        if (!z) {
            if (containsPII(mediationAdConfiguration)) {
                str = "";
            }
            return str;
        } else if (!MoPub.canCollectPersonalInformation()) {
            return "";
        } else {
            if (!containsPII(mediationAdConfiguration)) {
                str = "";
            }
            return str;
        }
    }

    private boolean hasListener(String str) {
        return !TextUtils.isEmpty(str) && mListeners.containsKey(str) && mListeners.get(str).get() != null;
    }

    public void adExpired(String str, MoPubRewardedVideoListener moPubRewardedVideoListener) {
        if (!hasListener(str) || moPubRewardedVideoListener == null || !moPubRewardedVideoListener.equals(mListeners.get(str).get())) {
            return;
        }
        mListeners.remove(str);
    }

    public void initializeMoPubSDK(Context context, SdkConfiguration sdkConfiguration, SdkInitializationListener sdkInitializationListener) {
        if (MoPub.isSdkInitialized()) {
            MoPubRewardedVideos.setRewardedVideoListener(this);
            sdkInitializationListener.onInitializationFinished();
            return;
        }
        this.mInitListeners.add(sdkInitializationListener);
        if (isInitializing) {
            return;
        }
        isInitializing = true;
        MoPub.initializeSdk(context, sdkConfiguration, new SdkInitializationListener() { // from class: com.google.ads.mediation.mopub.MoPubSingleton.1
            @Override // com.mopub.common.SdkInitializationListener
            public void onInitializationFinished() {
                MoPubLog.m36283d("MoPub SDK initialized.");
                boolean unused = MoPubSingleton.isInitializing = false;
                MoPubRewardedVideos.setRewardedVideoListener(MoPubSingleton.this);
                Iterator it = MoPubSingleton.this.mInitListeners.iterator();
                while (it.hasNext()) {
                    ((SdkInitializationListener) it.next()).onInitializationFinished();
                }
                MoPubSingleton.this.mInitListeners.clear();
            }
        });
    }

    public void loadRewardedAd(Context context, final String str, final MoPubRewardedVideoManager.RequestParameters requestParameters, MoPubAdapterRewardedListener moPubAdapterRewardedListener) {
        if (hasListener(str)) {
            String valueOf = String.valueOf(str);
            moPubAdapterRewardedListener.onAdFailedToLoad(107, valueOf.length() != 0 ? "An ad has already been requested for the MoPub Ad Unit ID: ".concat(valueOf) : new String("An ad has already been requested for the MoPub Ad Unit ID: "));
            return;
        }
        mListeners.put(str, new WeakReference<>(moPubAdapterRewardedListener));
        initializeMoPubSDK(context, new SdkConfiguration.Builder(str).build(), new SdkInitializationListener(this) { // from class: com.google.ads.mediation.mopub.MoPubSingleton.2
            @Override // com.mopub.common.SdkInitializationListener
            public void onInitializationFinished() {
                MoPubRewardedVideos.loadRewardedVideo(str, requestParameters, new MediationSettings[0]);
            }
        });
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoClicked(String str) {
        if (hasListener(str)) {
            mListeners.get(str).get().onRewardedVideoClicked(str);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoClosed(String str) {
        if (hasListener(str)) {
            mListeners.get(str).get().onRewardedVideoClosed(str);
        }
        mListeners.remove(str);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoCompleted(Set<String> set, MoPubReward moPubReward) {
        for (String str : set) {
            if (hasListener(str)) {
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                mListeners.get(str).get().onRewardedVideoCompleted(hashSet, moPubReward);
            }
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
        if (hasListener(str)) {
            mListeners.get(str).get().onRewardedVideoLoadFailure(str, moPubErrorCode);
        }
        mListeners.remove(str);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoLoadSuccess(String str) {
        if (hasListener(str)) {
            mListeners.get(str).get().onRewardedVideoLoadSuccess(str);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode) {
        if (hasListener(str)) {
            mListeners.get(str).get().onRewardedVideoPlaybackError(str, moPubErrorCode);
        }
        mListeners.remove(str);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoStarted(String str) {
        if (hasListener(str)) {
            mListeners.get(str).get().onRewardedVideoStarted(str);
        }
    }

    public boolean showRewardedAd(String str, String str2) {
        if (TextUtils.isEmpty(str) || !MoPubRewardedVideos.hasRewardedVideo(str)) {
            mListeners.remove(str);
            return false;
        }
        String str3 = MoPubMediationAdapter.TAG;
        MoPubRewardedVideos.showRewardedVideo(str, str2);
        return true;
    }
}
