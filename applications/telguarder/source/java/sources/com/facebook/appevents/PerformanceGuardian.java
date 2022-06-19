package com.facebook.appevents;

import android.content.SharedPreferences;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/PerformanceGuardian.class */
public class PerformanceGuardian {
    private static final String BANNED_ACTIVITY_STORE = "com.facebook.internal.BANNED_ACTIVITY";
    private static final String CACHE_APP_VERSION = "app_version";
    private static boolean initialized = false;
    private static SharedPreferences sharedPreferences;
    private static final Integer ACTIVITY_PROCESS_TIME_THRESHOLD = 40;
    private static final Integer MAX_EXCEED_LIMIT_COUNT = 3;
    private static final Set<String> bannedSuggestedEventActivitySet = new HashSet();
    private static final Set<String> bannedCodelessActivitySet = new HashSet();
    private static final Map<String, Integer> activityProcessTimeMapCodeless = new HashMap();
    private static final Map<String, Integer> activityProcessTimeMapSe = new HashMap();

    /* renamed from: com.facebook.appevents.PerformanceGuardian$1 */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/PerformanceGuardian$1.class */
    static /* synthetic */ class C08791 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$appevents$PerformanceGuardian$UseCase;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[UseCase.values().length];
            $SwitchMap$com$facebook$appevents$PerformanceGuardian$UseCase = iArr;
            try {
                iArr[UseCase.CODELESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$appevents$PerformanceGuardian$UseCase[UseCase.SUGGESTED_EVENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/PerformanceGuardian$UseCase.class */
    public enum UseCase {
        CODELESS,
        SUGGESTED_EVENT
    }

    private static void initializeIfNotYet() {
        synchronized (PerformanceGuardian.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(PerformanceGuardian.class)) {
                    return;
                }
                if (initialized) {
                    return;
                }
                SharedPreferences sharedPreferences2 = FacebookSdk.getApplicationContext().getSharedPreferences(BANNED_ACTIVITY_STORE, 0);
                sharedPreferences = sharedPreferences2;
                if (!isCacheValid(sharedPreferences2.getString(CACHE_APP_VERSION, ""))) {
                    sharedPreferences.edit().clear().apply();
                } else {
                    bannedCodelessActivitySet.addAll(sharedPreferences.getStringSet(UseCase.CODELESS.toString(), new HashSet()));
                    bannedSuggestedEventActivitySet.addAll(sharedPreferences.getStringSet(UseCase.SUGGESTED_EVENT.toString(), new HashSet()));
                }
                initialized = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isBannedActivity(String str, UseCase useCase) {
        if (CrashShieldHandler.isObjectCrashing(PerformanceGuardian.class)) {
            return false;
        }
        try {
            initializeIfNotYet();
            int i = C08791.$SwitchMap$com$facebook$appevents$PerformanceGuardian$UseCase[useCase.ordinal()];
            if (i == 1) {
                return bannedCodelessActivitySet.contains(str);
            }
            if (i == 2) {
                return bannedSuggestedEventActivitySet.contains(str);
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, PerformanceGuardian.class);
            return false;
        }
    }

    private static boolean isCacheValid(String str) {
        if (CrashShieldHandler.isObjectCrashing(PerformanceGuardian.class)) {
            return false;
        }
        try {
            String appVersion = Utility.getAppVersion();
            if (appVersion != null && !str.isEmpty()) {
                return str.equals(appVersion);
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, PerformanceGuardian.class);
            return false;
        }
    }

    public static void limitProcessTime(String str, UseCase useCase, long j, long j2) {
        if (CrashShieldHandler.isObjectCrashing(PerformanceGuardian.class)) {
            return;
        }
        try {
            initializeIfNotYet();
            if (str != null && j2 - j >= ACTIVITY_PROCESS_TIME_THRESHOLD.intValue()) {
                int i = C08791.$SwitchMap$com$facebook$appevents$PerformanceGuardian$UseCase[useCase.ordinal()];
                if (i == 1) {
                    updateActivityMap(useCase, str, activityProcessTimeMapCodeless, bannedCodelessActivitySet);
                } else if (i != 2) {
                } else {
                    updateActivityMap(useCase, str, activityProcessTimeMapSe, bannedSuggestedEventActivitySet);
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, PerformanceGuardian.class);
        }
    }

    private static void updateActivityMap(UseCase useCase, String str, Map<String, Integer> map, Set<String> set) {
        if (CrashShieldHandler.isObjectCrashing(PerformanceGuardian.class)) {
            return;
        }
        int i = 0;
        try {
            if (map.containsKey(str)) {
                i = map.get(str).intValue();
            }
            int i2 = i + 1;
            map.put(str, Integer.valueOf(i2));
            if (i2 < MAX_EXCEED_LIMIT_COUNT.intValue()) {
                return;
            }
            set.add(str);
            sharedPreferences.edit().putStringSet(useCase.toString(), set).putString(CACHE_APP_VERSION, Utility.getAppVersion()).apply();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, PerformanceGuardian.class);
        }
    }
}
