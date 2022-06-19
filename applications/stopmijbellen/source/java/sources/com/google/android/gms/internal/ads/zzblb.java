package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblb.class */
public abstract class zzblb<T> {
    private final int zza;
    private final String zzb;
    private final T zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzblb(int i, String str, Object obj, zzbla zzblaVar) {
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        zzbgq.zza().zzd(this);
    }

    public static zzblb<Float> zzf(int i, String str, float f) {
        return new zzbky(1, str, Float.valueOf(f));
    }

    public static zzblb<Integer> zzg(int i, String str, int i2) {
        return new zzbkw(1, str, Integer.valueOf(i2));
    }

    public static zzblb<Long> zzh(int i, String str, long j) {
        return new zzbkx(1, str, Long.valueOf(j));
    }

    public static zzblb<Boolean> zzi(int i, String str, Boolean bool) {
        return new zzbkv(i, str, bool);
    }

    public static zzblb<String> zzj(int i, String str, String str2) {
        return new zzbkz(1, str, str2);
    }

    public static zzblb<String> zzk(int i, String str) {
        zzblb<String> zzj = zzj(1, "gads:sdk_core_constants:experiment_id", null);
        zzbgq.zza().zzc(zzj);
        return zzj;
    }

    public abstract T zza(JSONObject jSONObject);

    public abstract T zzb(Bundle bundle);

    public abstract T zzc(SharedPreferences sharedPreferences);

    public abstract void zzd(SharedPreferences.Editor editor, T t);

    public final int zze() {
        return this.zza;
    }

    public final T zzl() {
        return this.zzc;
    }

    public final String zzm() {
        return this.zzb;
    }
}
