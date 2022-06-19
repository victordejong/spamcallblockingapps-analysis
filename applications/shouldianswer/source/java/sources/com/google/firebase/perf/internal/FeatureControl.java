package com.google.firebase.perf.internal;

import android.content.Context;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.internal.firebase-perf.zzar;
import com.google.android.gms.internal.firebase_perf.zzaa;
import com.google.android.gms.internal.firebase_perf.zzo;
import java.util.HashSet;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/FeatureControl.class */
public class FeatureControl {
    private static final FeatureControl zzby = new FeatureControl();
    private static final long zzcb = TimeUnit.HOURS.toMinutes(4);
    private static final String zzcc = zzc.zzbv;
    private static final boolean zzcd = zzc.zzbw;
    private static final zzo<Long, String> zzce = zzo.zza(461L, "FIREPERF_AUTOPUSH", 462L, zzc.zzbv, 675L, "FIREPERF_INTERNAL_LOW", 676L, "FIREPERF_INTERNAL_HIGH");
    private final RemoteConfigManager zzbz;
    private zzar zzca;

    private FeatureControl() {
        this(RemoteConfigManager.zzbi(), null);
    }

    private FeatureControl(RemoteConfigManager remoteConfigManager, zzar zzarVar) {
        this.zzbz = remoteConfigManager == null ? RemoteConfigManager.zzbi() : remoteConfigManager;
        this.zzca = new com.google.android.gms.internal.firebase_perf.zzar();
    }

    private final <T> T zza(String str, T t) {
        return (T) this.zzbz.zzb(str, t);
    }

    public static FeatureControl zzad() {
        FeatureControl featureControl;
        synchronized (FeatureControl.class) {
            try {
                featureControl = zzby;
            } catch (Throwable th) {
                throw th;
            }
        }
        return featureControl;
    }

    private final long zzb(String str, long j) {
        int i = this.zzca.getInt(str, zzaa.zza(((Long) this.zzbz.zzb(str, Long.valueOf(j))).longValue()));
        return (i == Integer.MAX_VALUE || i == Integer.MIN_VALUE) ? j : i;
    }

    public final void zza(zzar zzarVar) {
        this.zzca = zzarVar;
    }

    public final boolean zzae() {
        String str = (String) zza("fpr_disabled_android_versions", "");
        HashSet hashSet = new HashSet();
        if (!str.trim().isEmpty()) {
            for (String str2 : str.split(";")) {
                hashSet.add(str2.trim());
            }
        }
        return !hashSet.contains(zzc.VERSION_NAME) && ((Boolean) zza("fpr_enabled", true)).booleanValue() && !this.zzbz.zzbj();
    }

    public final float zzaf() {
        float f = this.zzca.getFloat("sessions_sampling_percentage", ((Float) zza("sessions_sampling_percentage", Float.valueOf(0.01f))).floatValue() * 100.0f);
        if (FlexItem.FLEX_GROW_DEFAULT > f || f > 100.0f) {
            return 1.0f;
        }
        return f;
    }

    public final long zzag() {
        return zzb("sessions_cpu_capture_frequency_fg_ms", 100L);
    }

    public final long zzah() {
        return zzb("sessions_memory_capture_frequency_fg_ms", 100L);
    }

    public final long zzai() {
        return zzb("sessions_cpu_capture_frequency_bg_ms", 0L);
    }

    public final long zzaj() {
        return zzb("sessions_memory_capture_frequency_bg_ms", 0L);
    }

    public final long zzak() {
        return zzb("sessions_max_length_minutes", zzcb);
    }

    public final String zzd(Context context) {
        String str;
        if (zzcd) {
            return zzcc;
        }
        long longValue = ((Long) this.zzbz.zzb("fpr_log_source", -1L)).longValue();
        if (!zzce.containsKey(Long.valueOf(longValue)) || (str = zzce.get(Long.valueOf(longValue))) == null) {
            return context.getSharedPreferences("FirebasePerfSharedPrefs", 0).getString("com.google.firebase.perf.LogSourceName", zzcc);
        }
        context.getSharedPreferences("FirebasePerfSharedPrefs", 0).edit().putString("com.google.firebase.perf.LogSourceName", str).commit();
        return str;
    }
}
