package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaba.class */
public abstract class zzaba<T> {
    private final int zzclu;
    private final T zzclv;
    private final String zzcm;

    private zzaba(int i, String str, T t) {
        this.zzclu = i;
        this.zzcm = str;
        this.zzclv = t;
        zzwr.zzqq().zza(this);
    }

    public /* synthetic */ zzaba(int i, String str, Object obj, zzabd zzabdVar) {
        this(i, str, obj);
    }

    public static zzaba<Float> zza(int i, String str, float f) {
        return new zzabe(1, str, Float.valueOf(0.0f));
    }

    public static zzaba<Integer> zza(int i, String str, int i2) {
        return new zzabc(1, str, Integer.valueOf(i2));
    }

    public static zzaba<Boolean> zza(int i, String str, Boolean bool) {
        return new zzabd(i, str, bool);
    }

    public static zzaba<String> zza(int i, String str, String str2) {
        return new zzabh(1, str, str2);
    }

    public static zzaba<String> zzb(int i, String str) {
        zzaba<String> zza = zza(1, str, (String) null);
        zzwr.zzqq().zzc(zza);
        return zza;
    }

    public static zzaba<Long> zzb(int i, String str, long j) {
        return new zzabf(1, str, Long.valueOf(j));
    }

    public final String getKey() {
        return this.zzcm;
    }

    public final int getSource() {
        return this.zzclu;
    }

    public abstract T zza(SharedPreferences sharedPreferences);

    public abstract T zza(Bundle bundle);

    public abstract void zza(SharedPreferences.Editor editor, T t);

    public abstract T zzb(JSONObject jSONObject);

    public final T zzsb() {
        return this.zzclv;
    }
}
