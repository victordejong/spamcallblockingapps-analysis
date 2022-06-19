package com.google.ads.mediation.mopub;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import com.mopub.mobileads.dfp.adapters.MoPubAdapter$BundleBuilder;
import com.mopub.mobileads.dfp.adapters.MoPubAdapterRewardedListener;
import com.mopub.nativeads.NativeErrorCode;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter.class */
public class MoPubMediationAdapter extends Adapter implements MediationRewardedAd, MoPubAdapterRewardedListener {
    public static final int ERROR_AD_ALREADY_LOADED = 107;
    public static final int ERROR_AD_EXPIRED = 108;
    public static final int ERROR_AD_NOT_READY = 112;
    public static final int ERROR_BANNER_SIZE_MISMATCH = 102;
    public static final int ERROR_DOWNLOADING_NATIVE_ASSETS = 111;
    public static final int ERROR_INVALID_SERVER_PARAMETERS = 101;
    public static final int ERROR_MINIMUM_BANNER_SIZE = 113;
    public static final int ERROR_REQUIRES_ACTIVITY_CONTEXT = 103;
    public static final int ERROR_REQUIRES_UNIFIED_NATIVE_ADS = 110;
    public static final int ERROR_WRONG_NATIVE_TYPE = 105;
    private static final String MOPUB_AD_UNIT_KEY = "adUnitId";
    public static final String TAG = "MoPubMediationAdapter";
    private boolean adExpired;
    private String adUnitID = "";
    private String customRewardData = null;
    private MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mAdLoadCallback;
    private MediationRewardedAdCallback mRewardedAdCallback;

    /* renamed from: com.google.ads.mediation.mopub.MoPubMediationAdapter$3 */
    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter$3.class */
    public static /* synthetic */ class C19553 {
        public static final /* synthetic */ int[] $SwitchMap$com$mopub$mobileads$MoPubErrorCode;
        public static final /* synthetic */ int[] $SwitchMap$com$mopub$nativeads$NativeErrorCode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0191 -> B:32:0x0080). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0195 -> B:151:0x0097). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0199 -> B:145:0x009d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x019d -> B:163:0x00a3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x01a1 -> B:157:0x00a9). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x01a5 -> B:175:0x00b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x01a9 -> B:169:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x01ad -> B:187:0x00c0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x01b1 -> B:181:0x00c8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x01b5 -> B:197:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x01b9 -> B:191:0x00d8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x01bd -> B:205:0x00e0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x01c1 -> B:201:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x01c5 -> B:131:0x00f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x01c9 -> B:127:0x00f8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x01cd -> B:139:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x01d1 -> B:135:0x0108). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x01d5 -> B:149:0x0110). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x01d9 -> B:143:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x01dd -> B:161:0x0120). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x01e1 -> B:155:0x0128). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:121:0x01e5 -> B:173:0x0130). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x01e9 -> B:167:0x0138). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x01ed -> B:185:0x0140). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x01f1 -> B:179:0x0148). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x01f5 -> B:195:0x0150). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x0159 -> B:147:0x0017). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x015d -> B:165:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x0161 -> B:159:0x0023). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0165 -> B:177:0x0029). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x0169 -> B:171:0x0030). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x016d -> B:189:0x0038). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0171 -> B:183:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0175 -> B:199:0x0048). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0179 -> B:193:0x0050). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x017d -> B:207:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x0181 -> B:203:0x0060). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0185 -> B:133:0x0068). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0189 -> B:129:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x018d -> B:141:0x0078). Please submit an issue!!! */
        static {
            NativeErrorCode.values();
            int[] iArr = new int[17];
            $SwitchMap$com$mopub$nativeads$NativeErrorCode = iArr;
            iArr[0] = 1;
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[1] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[2] = 3;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[3] = 4;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[4] = 5;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[5] = 6;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[6] = 7;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[7] = 8;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[9] = 9;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[10] = 10;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[11] = 11;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[12] = 12;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[13] = 13;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[14] = 14;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[15] = 15;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$mopub$nativeads$NativeErrorCode[16] = 16;
            } catch (NoSuchFieldError e15) {
            }
            MoPubErrorCode.values();
            int[] iArr2 = new int[35];
            $SwitchMap$com$mopub$mobileads$MoPubErrorCode = iArr2;
            iArr2[0] = 1;
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[1] = 2;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[2] = 3;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[3] = 4;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[4] = 5;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[5] = 6;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[7] = 7;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[8] = 8;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[9] = 9;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[10] = 10;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[11] = 11;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[12] = 12;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[13] = 13;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[14] = 14;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[15] = 15;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[16] = 16;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[17] = 17;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[18] = 18;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[19] = 19;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[20] = 20;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[26] = 21;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[27] = 22;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[28] = 23;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[29] = 24;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[30] = 25;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[33] = 26;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$com$mopub$mobileads$MoPubErrorCode[34] = 27;
            } catch (NoSuchFieldError e41) {
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter$AdapterError.class */
    public @interface AdapterError {
    }

    public static String createAdapterError(int i, String str) {
        return String.format("%d: %s", Integer.valueOf(i), str);
    }

    public static String createSDKError(MoPubErrorCode moPubErrorCode) {
        return String.format("%d: %s", Integer.valueOf(getMediationErrorCode(moPubErrorCode)), moPubErrorCode.toString());
    }

    public static String createSDKError(NativeErrorCode nativeErrorCode) {
        return String.format("%d: %s", Integer.valueOf(getMediationErrorCode(nativeErrorCode)), nativeErrorCode.toString());
    }

    public static int getMediationErrorCode(MoPubErrorCode moPubErrorCode) {
        switch (moPubErrorCode.ordinal()) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 31:
            case 32:
            default:
                return 99;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 11;
            case 13:
                return 12;
            case 14:
                return 13;
            case 15:
                return 14;
            case 16:
                return 15;
            case 17:
                return 16;
            case 18:
                return 17;
            case 19:
                return 18;
            case 20:
                return 19;
            case 26:
                return 20;
            case 27:
                return 21;
            case 28:
                return 22;
            case 29:
                return 23;
            case 30:
                return 24;
            case 33:
                return 25;
            case 34:
                return 26;
        }
    }

    public static int getMediationErrorCode(NativeErrorCode nativeErrorCode) {
        switch (nativeErrorCode.ordinal()) {
            case 0:
                return 1000;
            case 1:
                return 1001;
            case 2:
                return 1002;
            case 3:
                return 1003;
            case 4:
                return 1004;
            case 5:
                return 1005;
            case 6:
                return 1006;
            case 7:
                return 1007;
            case 8:
            default:
                return 1099;
            case 9:
                return 1008;
            case 10:
                return 1009;
            case 11:
                return 1010;
            case 12:
                return 1011;
            case 13:
                return 1012;
            case 14:
                return 1013;
            case 15:
                return 1014;
            case 16:
                return 1015;
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String[] split = "5.16.4".split("\\.");
        if (split.length >= 3) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        }
        String.format("Unexpected SDK version format: %s. Returning 0.0.0 for SDK version.", "5.16.4");
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = "5.16.4.0".split("\\.");
        if (split.length >= 4) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[3]) + (Integer.parseInt(split[2]) * 100));
        }
        String.format("Unexpected adapter version format: %s. Returning 0.0.0 for adapter version.", "5.16.4.0");
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, final InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        if (!(context instanceof Activity)) {
            initializationCompleteCallback.onInitializationFailed(createAdapterError(103, "MoPub SDK requires an Activity context to initialize."));
            return;
        }
        for (MediationConfiguration mediationConfiguration : list) {
            String string = mediationConfiguration.getServerParameters().getString(MOPUB_AD_UNIT_KEY);
            this.adUnitID = string;
            if (!TextUtils.isEmpty(string)) {
                break;
            }
        }
        if (TextUtils.isEmpty(this.adUnitID)) {
            initializationCompleteCallback.onInitializationFailed(createAdapterError(101, "Initialization failed: Missing or Invalid MoPub Ad Unit ID."));
            return;
        }
        MoPubSingleton.getInstance().initializeMoPubSDK(context, new SdkConfiguration.Builder(this.adUnitID).build(), new SdkInitializationListener(this) { // from class: com.google.ads.mediation.mopub.MoPubMediationAdapter.1
            @Override // com.mopub.common.SdkInitializationListener
            public void onInitializationFinished() {
                initializationCompleteCallback.onInitializationSucceeded();
            }
        });
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        Context context = mediationRewardedAdConfiguration.getContext();
        String string = mediationRewardedAdConfiguration.getServerParameters().getString(MOPUB_AD_UNIT_KEY);
        this.adUnitID = string;
        if (TextUtils.isEmpty(string)) {
            mediationAdLoadCallback.onFailure(createAdapterError(101, "Failed to request ad from MoPub: Missing or Invalid MoPub Ad Unit ID."));
            return;
        }
        Bundle mediationExtras = mediationRewardedAdConfiguration.getMediationExtras();
        if (mediationExtras != null) {
            this.customRewardData = mediationExtras.getString(MoPubAdapter$BundleBuilder.ARG_CUSTOM_REWARD_DATA);
        }
        this.mAdLoadCallback = mediationAdLoadCallback;
        MoPubSingleton.getInstance().loadRewardedAd(context, this.adUnitID, new MoPubRewardedVideoManager.RequestParameters(MoPubSingleton.getKeywords(mediationRewardedAdConfiguration, false), MoPubSingleton.getKeywords(mediationRewardedAdConfiguration, true), mediationRewardedAdConfiguration.getLocation()), this);
    }

    public void onAdFailedToLoad(int i, String str) {
        String createAdapterError = createAdapterError(i, str);
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            mediationAdLoadCallback.onFailure(createAdapterError);
        }
    }

    public void onRewardedVideoClicked(String str) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.reportAdClicked();
        }
    }

    public void onRewardedVideoClosed(String str) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
    }

    public void onRewardedVideoCompleted(Set<String> set, final MoPubReward moPubReward) {
        Preconditions.checkNotNull(moPubReward);
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onVideoComplete();
            this.mRewardedAdCallback.onUserEarnedReward(new RewardItem(this) { // from class: com.google.ads.mediation.mopub.MoPubMediationAdapter.2
                @Override // com.google.android.gms.ads.rewarded.RewardItem
                public int getAmount() {
                    return moPubReward.getAmount();
                }

                @Override // com.google.android.gms.ads.rewarded.RewardItem
                public String getType() {
                    return moPubReward.getLabel();
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
        String createSDKError = createSDKError(moPubErrorCode);
        if (moPubErrorCode == MoPubErrorCode.EXPIRED) {
            MoPubSingleton.getInstance().adExpired(str, this);
            this.adExpired = true;
        }
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            mediationAdLoadCallback.onFailure(createSDKError);
        }
    }

    public void onRewardedVideoLoadSuccess(String str) {
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            this.mRewardedAdCallback = mediationAdLoadCallback.onSuccess(this);
        }
    }

    public void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode) {
        String createSDKError = createSDKError(moPubErrorCode);
        String valueOf = String.valueOf(createSDKError);
        if (valueOf.length() != 0) {
            "Failed to playback MoPub rewarded video: ".concat(valueOf);
        } else {
            new String("Failed to playback MoPub rewarded video: ");
        }
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdFailedToShow(createSDKError);
        }
    }

    public void onRewardedVideoStarted(String str) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onAdOpened();
            this.mRewardedAdCallback.onVideoStart();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        boolean z = this.adExpired;
        if (z && this.mRewardedAdCallback != null) {
            this.mRewardedAdCallback.onAdFailedToShow(createAdapterError(108, "Failed to show a MoPub rewarded video. The MoPub Ad has expired. Please make a new Ad Request."));
        } else if (z || MoPubSingleton.getInstance().showRewardedAd(this.adUnitID, this.customRewardData) || this.mRewardedAdCallback == null) {
        } else {
            String valueOf = String.valueOf(this.adUnitID);
            this.mRewardedAdCallback.onAdFailedToShow(createAdapterError(112, valueOf.length() != 0 ? "MoPub does not have a rewarded ad ready to show for ad unit ID: ".concat(valueOf) : new String("MoPub does not have a rewarded ad ready to show for ad unit ID: ")));
        }
    }
}
