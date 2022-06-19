package com.flurry.android;

import android.text.TextUtils;
import com.flurry.sdk.C0478ku;
import com.flurry.sdk.hx;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryGamingAgent.class */
public final class FlurryGamingAgent {

    /* renamed from: a */
    private static final String f3176a = "FlurryGamingAgent";

    /* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryGamingAgent$AcquireReason.class */
    public enum AcquireReason {
        EARN("Earn"),
        TRADE("Trade"),
        BOUGHT("Bought"),
        AD_REWARDED("Ad Rewarded"),
        OTHER("Other");
        
        public final String value;

        AcquireReason(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.value;
        }
    }

    public static FlurryEventRecordStatus logAchievement(String str) {
        return logAchievement(str, null);
    }

    public static FlurryEventRecordStatus logAchievement(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String achievementId passed to logAchievement was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("fl.AchievementID", str);
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.Achievement", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.Achievement", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logCharacterDeath(String str) {
        return logCharacterDeath(str, null);
    }

    public static FlurryEventRecordStatus logCharacterDeath(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String characterId passed to logCharacterDeath was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("fl.CharacterID", str);
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.CharacterDeath", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.CharacterDeath", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logCharacterLevel(String str, double d) {
        return logCharacterLevel(str, d, null);
    }

    public static FlurryEventRecordStatus logCharacterLevel(String str, double d, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String characterId passed to logCharacterLevel was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("fl.CharacterID", str);
        hashMap.put("fl.Level", Double.toString(d));
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.CharacterLevel", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event Flurry.CharacterLevel", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logCurrencyAcquired(double d, String str, AcquireReason acquireReason) {
        return logCurrencyAcquired(d, str, acquireReason, null);
    }

    public static FlurryEventRecordStatus logCurrencyAcquired(double d, String str, AcquireReason acquireReason, Double d2) {
        return logCurrencyAcquired(d, str, acquireReason, d2, null);
    }

    public static FlurryEventRecordStatus logCurrencyAcquired(double d, String str, AcquireReason acquireReason, Double d2, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str2;
        String str3;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            str2 = f3176a;
            str3 = "String currencyType passed to logCurrencyAcquired was null or empty.";
        } else if (acquireReason != null) {
            HashMap hashMap = new HashMap(4);
            hashMap.put("fl.Amount", Double.toString(d));
            hashMap.put("fl.CurType", str);
            hashMap.put("fl.Reason", acquireReason.getValue());
            if (d2 != null) {
                hashMap.put("fl.Balance", Double.toString(d2.doubleValue()));
            }
            int size = hashMap.size();
            if (map != null && map.size() > 0) {
                hashMap.putAll(map);
            }
            try {
                hx.a();
                flurryEventRecordStatus = hx.a("Flurry.VCAcquired", hashMap, size);
            } catch (Throwable th) {
                C0478ku.m4593a(f3176a, "Failed to log event: Flurry.VCAcquired", th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str2 = f3176a;
            str3 = "reason was null.";
        }
        C0478ku.m4590b(str2, str3);
        return flurryEventRecordStatus2;
    }

    public static FlurryEventRecordStatus logCurrencySpent(double d, String str) {
        return logCurrencySpent(d, str, null);
    }

    public static FlurryEventRecordStatus logCurrencySpent(double d, String str, Double d2) {
        return logCurrencySpent(d, str, d2, null);
    }

    public static FlurryEventRecordStatus logCurrencySpent(double d, String str, Double d2, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String currencyType passed to logCurrencySpent was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put("fl.Amount", Double.toString(d));
        hashMap.put("fl.CurType", str);
        if (d2 != null) {
            hashMap.put("fl.Balance", Double.toString(d2.doubleValue()));
        }
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.VCSpent", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.VCSpent", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logItemAcquired(String str, double d) {
        return logItemAcquired(str, d, null);
    }

    public static FlurryEventRecordStatus logItemAcquired(String str, double d, Double d2) {
        return logItemAcquired(str, d, d2, null, null);
    }

    public static FlurryEventRecordStatus logItemAcquired(String str, double d, Double d2, Double d3, String str2) {
        return logItemAcquired(str, d, d2, d3, str2, null);
    }

    public static FlurryEventRecordStatus logItemAcquired(String str, double d, Double d2, Double d3, String str2, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String itemId passed to logItemAcquired was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(5);
        hashMap.put("fl.ItemID", str);
        hashMap.put("fl.Amount", Double.toString(d));
        if (d2 != null) {
            hashMap.put("fl.Balance", Double.toString(d2.doubleValue()));
        }
        if (d3 != null) {
            hashMap.put("fl.Cost", Double.toString(d3.doubleValue()));
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("fl.CurType", str2);
        }
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.ItemAcquired", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.ItemAcquired", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logItemAcquired(String str, double d, Double d2, String str2) {
        return logItemAcquired(str, d, null, d2, str2);
    }

    public static FlurryEventRecordStatus logItemDisposed(String str, double d) {
        return logItemDisposed(str, d, null);
    }

    public static FlurryEventRecordStatus logItemDisposed(String str, double d, Double d2) {
        return logItemDisposed(str, d, d2, null, null);
    }

    public static FlurryEventRecordStatus logItemDisposed(String str, double d, Double d2, Double d3, String str2) {
        return logItemDisposed(str, d, d2, d3, str2, null);
    }

    public static FlurryEventRecordStatus logItemDisposed(String str, double d, Double d2, Double d3, String str2, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String itemId passed to logItemDisposed was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(5);
        hashMap.put("fl.ItemID", str);
        hashMap.put("fl.Amount", Double.toString(d));
        if (d2 != null) {
            hashMap.put("fl.Balance", Double.toString(d2.doubleValue()));
        }
        if (d3 != null) {
            hashMap.put("fl.Cost", Double.toString(d3.doubleValue()));
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("fl.CurType", str2);
        }
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.ItemDisposed", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.ItemDisposed", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logItemDisposed(String str, double d, Double d2, String str2) {
        return logItemDisposed(str, d, null, d2, str2);
    }

    public static FlurryEventRecordStatus logLevelEnd(String str, boolean z) {
        return logLevelEnd(str, z, null);
    }

    public static FlurryEventRecordStatus logLevelEnd(String str, boolean z, Double d) {
        return logLevelEnd(str, z, d, null);
    }

    public static FlurryEventRecordStatus logLevelEnd(String str, boolean z, Double d, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String levelId passed to logLevelEnd was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put("fl.LevelID", str);
        hashMap.put("fl.Success", z ? "True" : "False");
        if (d != null) {
            hashMap.put("fl.Score", Double.toString(d.doubleValue()));
        }
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.LevelEnd", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.LevelEnd", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logLevelStart(String str) {
        return logLevelStart(str, null);
    }

    public static FlurryEventRecordStatus logLevelStart(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (TextUtils.isEmpty(str)) {
            C0478ku.m4590b(f3176a, "String levelId passed to logLevelStart was null or empty.");
            return flurryEventRecordStatus2;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("fl.LevelID", str);
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.LevelStart", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.LevelStart", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }

    public static FlurryEventRecordStatus logPlayerLevel(double d) {
        return logPlayerLevel(d, null);
    }

    public static FlurryEventRecordStatus logPlayerLevel(double d, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        HashMap hashMap = new HashMap(1);
        hashMap.put("fl.Level", Double.toString(d));
        int size = hashMap.size();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        try {
            hx.a();
            flurryEventRecordStatus = hx.a("Flurry.PlayerLevel", hashMap, size);
        } catch (Throwable th) {
            C0478ku.m4593a(f3176a, "Failed to log event: Flurry.PlayerLevel", th);
            flurryEventRecordStatus = flurryEventRecordStatus2;
        }
        return flurryEventRecordStatus;
    }
}
