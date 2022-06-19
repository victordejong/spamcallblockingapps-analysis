package com.facebook.internal;

import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppGateKeepersManager;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/FeatureManager.class */
public final class FeatureManager {
    private static final String FEATURE_MANAGER_STORE = "com.facebook.internal.FEATURE_MANAGER";
    private static final Map<Feature, String[]> featureMapping = new HashMap();

    /* renamed from: com.facebook.internal.FeatureManager$2 */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/FeatureManager$2.class */
    public static /* synthetic */ class C09912 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$internal$FeatureManager$Feature;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0119 -> B:98:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x011d -> B:116:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0121 -> B:110:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0125 -> B:82:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0129 -> B:76:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x012d -> B:92:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0131 -> B:86:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0135 -> B:102:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0139 -> B:96:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x013d -> B:114:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0141 -> B:108:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0145 -> B:80:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0149 -> B:74:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x014d -> B:90:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0151 -> B:84:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0155 -> B:100:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0159 -> B:94:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x015d -> B:112:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0161 -> B:106:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0165 -> B:78:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0169 -> B:72:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x016d -> B:88:0x010c). Please submit an issue!!! */
        static {
            int[] iArr = new int[Feature.values().length];
            $SwitchMap$com$facebook$internal$FeatureManager$Feature = iArr;
            try {
                iArr[Feature.RestrictiveDataFiltering.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.Instrument.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.CrashReport.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.CrashShield.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.ThreadCheck.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.ErrorReport.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.AAM.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.PrivacyProtection.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.SuggestedEvents.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.IntelligentIntegrity.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.ModelRequest.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.EventDeactivation.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.OnDeviceEventProcessing.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.ChromeCustomTabsPrefetching.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.Monitoring.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.Core.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.AppEvents.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.CodelessEvents.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.Login.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.Share.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$facebook$internal$FeatureManager$Feature[Feature.Places.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/FeatureManager$Callback.class */
    public interface Callback {
        void onCompleted(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/FeatureManager$Feature.class */
    public enum Feature {
        Unknown(-1),
        Core(0),
        AppEvents(65536),
        CodelessEvents(65792),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        IntelligentIntegrity(66562),
        ModelRequest(66563),
        EventDeactivation(66816),
        OnDeviceEventProcessing(67072),
        OnDevicePostInstallEventProcessing(67073),
        Instrument(131072),
        CrashReport(131328),
        CrashShield(131329),
        ThreadCheck(131330),
        ErrorReport(131584),
        Monitoring(196608),
        Login(16777216),
        ChromeCustomTabsPrefetching(16842752),
        IgnoreAppSwitchToLoggedOut(16908288),
        Share(33554432),
        Places(50331648);
        
        private final int code;

        Feature(int i) {
            this.code = i;
        }

        static Feature fromInt(int i) {
            Feature[] values;
            for (Feature feature : values()) {
                if (feature.code == i) {
                    return feature;
                }
            }
            return Unknown;
        }

        public Feature getParent() {
            int i = this.code;
            return (i & 255) > 0 ? fromInt(i & InputDeviceCompat.SOURCE_ANY) : (65280 & i) > 0 ? fromInt(i & SupportMenu.CATEGORY_MASK) : (16711680 & i) > 0 ? fromInt(i & ViewCompat.MEASURED_STATE_MASK) : fromInt(0);
        }

        String toKey() {
            return "FBSDKFeature" + toString();
        }

        @Override // java.lang.Enum
        public String toString() {
            String str;
            switch (C09912.$SwitchMap$com$facebook$internal$FeatureManager$Feature[ordinal()]) {
                case 1:
                    str = "RestrictiveDataFiltering";
                    break;
                case 2:
                    str = "Instrument";
                    break;
                case 3:
                    str = "CrashReport";
                    break;
                case 4:
                    str = "CrashShield";
                    break;
                case 5:
                    str = "ThreadCheck";
                    break;
                case 6:
                    str = "ErrorReport";
                    break;
                case 7:
                    str = "AAM";
                    break;
                case 8:
                    str = "PrivacyProtection";
                    break;
                case 9:
                    str = "SuggestedEvents";
                    break;
                case 10:
                    str = "IntelligentIntegrity";
                    break;
                case 11:
                    str = "ModelRequest";
                    break;
                case 12:
                    str = "EventDeactivation";
                    break;
                case 13:
                    str = "OnDeviceEventProcessing";
                    break;
                case 14:
                    str = "OnDevicePostInstallEventProcessing";
                    break;
                case 15:
                    str = "ChromeCustomTabsPrefetching";
                    break;
                case 16:
                    str = "Monitoring";
                    break;
                case 17:
                    str = "IgnoreAppSwitchToLoggedOut";
                    break;
                case 18:
                    str = "CoreKit";
                    break;
                case 19:
                    str = "AppEvents";
                    break;
                case 20:
                    str = "CodelessEvents";
                    break;
                case 21:
                    str = "LoginKit";
                    break;
                case 22:
                    str = "ShareKit";
                    break;
                case 23:
                    str = "PlacesKit";
                    break;
                default:
                    str = "unknown";
                    break;
            }
            return str;
        }
    }

    public static void checkFeature(final Feature feature, final Callback callback) {
        FetchedAppGateKeepersManager.loadAppGateKeepersAsync(new FetchedAppGateKeepersManager.Callback() { // from class: com.facebook.internal.FeatureManager.1
            @Override // com.facebook.internal.FetchedAppGateKeepersManager.Callback
            public void onCompleted() {
                callback.onCompleted(FeatureManager.isEnabled(feature));
            }
        });
    }

    private static boolean defaultStatus(Feature feature) {
        switch (C09912.$SwitchMap$com$facebook$internal$FeatureManager$Feature[feature.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                return false;
            default:
                return true;
        }
    }

    public static void disableFeature(Feature feature) {
        FacebookSdk.getApplicationContext().getSharedPreferences(FEATURE_MANAGER_STORE, 0).edit().putString(feature.toKey(), FacebookSdk.getSdkVersion()).apply();
    }

    public static Feature getFeature(String str) {
        initializeFeatureMapping();
        for (Map.Entry<Feature, String[]> entry : featureMapping.entrySet()) {
            for (String str2 : entry.getValue()) {
                if (str.startsWith(str2)) {
                    return entry.getKey();
                }
            }
        }
        return Feature.Unknown;
    }

    private static boolean getGKStatus(Feature feature) {
        return FetchedAppGateKeepersManager.getGateKeeperForKey(feature.toKey(), FacebookSdk.getApplicationId(), defaultStatus(feature));
    }

    private static void initializeFeatureMapping() {
        synchronized (FeatureManager.class) {
            try {
                Map<Feature, String[]> map = featureMapping;
                if (!map.isEmpty()) {
                    return;
                }
                map.put(Feature.AAM, new String[]{"com.facebook.appevents.aam."});
                map.put(Feature.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
                map.put(Feature.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
                map.put(Feature.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
                map.put(Feature.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
                map.put(Feature.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
                map.put(Feature.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
                map.put(Feature.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
                map.put(Feature.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
                map.put(Feature.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isEnabled(Feature feature) {
        if (Feature.Unknown == feature) {
            return false;
        }
        if (Feature.Core == feature) {
            return true;
        }
        String string = FacebookSdk.getApplicationContext().getSharedPreferences(FEATURE_MANAGER_STORE, 0).getString(feature.toKey(), null);
        if (string != null && string.equals(FacebookSdk.getSdkVersion())) {
            return false;
        }
        Feature parent = feature.getParent();
        if (parent == feature) {
            return getGKStatus(feature);
        }
        boolean z = false;
        if (isEnabled(parent)) {
            z = false;
            if (getGKStatus(feature)) {
                z = true;
            }
        }
        return z;
    }
}
