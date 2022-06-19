package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgh;
import com.google.android.gms.measurement.internal.zzgi;
import com.google.android.gms.measurement.internal.zzgk;
import com.google.android.gms.measurement.internal.zzht;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/zzc.class */
public final class zzc {
    private static final Set<String> zza = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", FirebaseAnalytics.Event.CAMPAIGN_DETAILS, "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));
    private static final List<String> zzb = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    private static final List<String> zzc = Arrays.asList("auto", POBConstants.KEY_APP, "am");
    private static final List<String> zzd = Arrays.asList("_r", "_dbg");
    private static final List<String> zze = Arrays.asList((String[]) ArrayUtils.concat(new String[]{zzgk.zza, zzgk.zzb}));
    private static final List<String> zzf = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static boolean zza(String str) {
        return !zzc.contains(str);
    }

    public static boolean zzb(String str, Bundle bundle) {
        if (zzb.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : zzd) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean zzc(String str) {
        return !zza.contains(str);
    }

    public static boolean zzd(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc");
        } else if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN);
        } else if (zze.contains(str2)) {
            return false;
        } else {
            for (String str3 : zzf) {
                if (str2.matches(str3)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean zze(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        String str;
        if (conditionalUserProperty == null || (str = conditionalUserProperty.origin) == null || str.isEmpty()) {
            return false;
        }
        if ((conditionalUserProperty.value != null && zzht.zzc(conditionalUserProperty.value) == null) || !zza(str) || !zzd(str, conditionalUserProperty.name)) {
            return false;
        }
        if (conditionalUserProperty.expiredEventName != null && (!zzb(conditionalUserProperty.expiredEventName, conditionalUserProperty.expiredEventParams) || !zzf(str, conditionalUserProperty.expiredEventName, conditionalUserProperty.expiredEventParams))) {
            return false;
        }
        if (conditionalUserProperty.triggeredEventName != null && (!zzb(conditionalUserProperty.triggeredEventName, conditionalUserProperty.triggeredEventParams) || !zzf(str, conditionalUserProperty.triggeredEventName, conditionalUserProperty.triggeredEventParams))) {
            return false;
        }
        if (conditionalUserProperty.timedOutEventName == null) {
            return true;
        }
        return zzb(conditionalUserProperty.timedOutEventName, conditionalUserProperty.timedOutEventParams) && zzf(str, conditionalUserProperty.timedOutEventName, conditionalUserProperty.timedOutEventParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzf(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
            java.lang.String r0 = "_cmp"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lb
            r0 = 1
            return r0
        Lb:
            r0 = r4
            boolean r0 = zza(r0)
            if (r0 != 0) goto L14
            r0 = 0
            return r0
        L14:
            r0 = r6
            if (r0 != 0) goto L1a
            r0 = 0
            return r0
        L1a:
            java.util.List<java.lang.String> r0 = com.google.firebase.analytics.connector.internal.zzc.zzd
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L23:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L3e
            r0 = r6
            r1 = r5
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L23
            r0 = 0
            return r0
        L3e:
            r0 = r4
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            r1 = 101200(0x18b50, float:1.41811E-40)
            if (r0 == r1) goto L74
            r0 = r7
            r1 = 101230(0x18b6e, float:1.41853E-40)
            if (r0 == r1) goto L66
            r0 = r7
            r1 = 3142703(0x2ff42f, float:4.403865E-39)
            if (r0 == r1) goto L58
            goto L82
        L58:
            r0 = r4
            java.lang.String r1 = "fiam"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L82
            r0 = 2
            r7 = r0
            goto L84
        L66:
            r0 = r4
            java.lang.String r1 = "fdl"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L82
            r0 = 1
            r7 = r0
            goto L84
        L74:
            r0 = r4
            java.lang.String r1 = "fcm"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L82
            r0 = 0
            r7 = r0
            goto L84
        L82:
            r0 = -1
            r7 = r0
        L84:
            r0 = r7
            if (r0 == 0) goto La8
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L9e
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L94
            r0 = 0
            return r0
        L94:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fiam_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        L9e:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fdl_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        La8:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fcm_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.zzc.zzf(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }

    public static Bundle zzg(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        Bundle bundle = new Bundle();
        if (conditionalUserProperty.origin != null) {
            bundle.putString("origin", conditionalUserProperty.origin);
        }
        if (conditionalUserProperty.name != null) {
            bundle.putString("name", conditionalUserProperty.name);
        }
        if (conditionalUserProperty.value != null) {
            zzgh.zza(bundle, conditionalUserProperty.value);
        }
        if (conditionalUserProperty.triggerEventName != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, conditionalUserProperty.triggerEventName);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, conditionalUserProperty.triggerTimeout);
        if (conditionalUserProperty.timedOutEventName != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, conditionalUserProperty.timedOutEventName);
        }
        if (conditionalUserProperty.timedOutEventParams != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, conditionalUserProperty.timedOutEventParams);
        }
        if (conditionalUserProperty.triggeredEventName != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, conditionalUserProperty.triggeredEventName);
        }
        if (conditionalUserProperty.triggeredEventParams != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, conditionalUserProperty.triggeredEventParams);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, conditionalUserProperty.timeToLive);
        if (conditionalUserProperty.expiredEventName != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, conditionalUserProperty.expiredEventName);
        }
        if (conditionalUserProperty.expiredEventParams != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, conditionalUserProperty.expiredEventParams);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, conditionalUserProperty.creationTimestamp);
        bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, conditionalUserProperty.active);
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, conditionalUserProperty.triggeredTimestamp);
        return bundle;
    }

    public static AnalyticsConnector.ConditionalUserProperty zzh(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        AnalyticsConnector.ConditionalUserProperty conditionalUserProperty = new AnalyticsConnector.ConditionalUserProperty();
        conditionalUserProperty.origin = (String) Preconditions.checkNotNull((String) zzgh.zzb(bundle, "origin", String.class, null));
        conditionalUserProperty.name = (String) Preconditions.checkNotNull((String) zzgh.zzb(bundle, "name", String.class, null));
        conditionalUserProperty.value = zzgh.zzb(bundle, "value", Object.class, null);
        conditionalUserProperty.triggerEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        conditionalUserProperty.triggerTimeout = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
        conditionalUserProperty.timedOutEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        conditionalUserProperty.timedOutEventParams = (Bundle) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        conditionalUserProperty.triggeredEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        conditionalUserProperty.triggeredEventParams = (Bundle) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        conditionalUserProperty.timeToLive = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
        conditionalUserProperty.expiredEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        conditionalUserProperty.expiredEventParams = (Bundle) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        conditionalUserProperty.active = ((Boolean) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, false)).booleanValue();
        conditionalUserProperty.creationTimestamp = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
        conditionalUserProperty.triggeredTimestamp = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        return conditionalUserProperty;
    }

    public static boolean zzi(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int codePointAt = str.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            return false;
        }
        int length = str.length();
        int charCount = Character.charCount(codePointAt);
        while (true) {
            int i = charCount;
            if (i >= length) {
                return true;
            }
            int codePointAt2 = str.codePointAt(i);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                return false;
            }
            charCount = i + Character.charCount(codePointAt2);
        }
    }

    public static boolean zzj(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int codePointAt = str.codePointAt(0);
        if (!Character.isLetter(codePointAt) && codePointAt != 95) {
            return false;
        }
        int length = str.length();
        int charCount = Character.charCount(codePointAt);
        while (true) {
            int i = charCount;
            if (i >= length) {
                return true;
            }
            int codePointAt2 = str.codePointAt(i);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                return false;
            }
            charCount = i + Character.charCount(codePointAt2);
        }
    }

    public static String zzk(String str) {
        String zza2 = zzgi.zza(str);
        return zza2 != null ? zza2 : str;
    }

    public static String zzl(String str) {
        String zzb2 = zzgi.zzb(str);
        return zzb2 != null ? zzb2 : str;
    }

    public static void zzm(String str, String str2, Bundle bundle) {
        if (!"clx".equals(str) || !"_ae".equals(str2)) {
            return;
        }
        bundle.putLong("_r", 1L);
    }
}
