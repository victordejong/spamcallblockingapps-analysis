package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzev.class */
public final class zzev {
    final String zza;
    final /* synthetic */ zzex zzb;
    private final String zzc;
    private final String zzd;
    private final long zze;

    public /* synthetic */ zzev(zzex zzexVar, String str, long j, zzer zzerVar) {
        this.zzb = zzexVar;
        Preconditions.checkNotEmpty("health_monitor");
        Preconditions.checkArgument(j > 0);
        this.zza = "health_monitor:start";
        this.zzc = "health_monitor:count";
        this.zzd = "health_monitor:value";
        this.zze = j;
    }

    private final void zzc() {
        this.zzb.zzg();
        long currentTimeMillis = this.zzb.zzx.zzax().currentTimeMillis();
        SharedPreferences.Editor edit = this.zzb.zzd().edit();
        edit.remove(this.zzc);
        edit.remove(this.zzd);
        edit.putLong(this.zza, currentTimeMillis);
        edit.apply();
    }

    private final long zzd() {
        return this.zzb.zzd().getLong(this.zza, 0L);
    }

    public final void zza(String str, long j) {
        this.zzb.zzg();
        if (zzd() == 0) {
            zzc();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.zzb.zzd().getLong(this.zzc, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.zzb.zzd().edit();
            edit.putString(this.zzd, str2);
            edit.putLong(this.zzc, 1L);
            edit.apply();
            return;
        }
        long nextLong = this.zzb.zzx.zzl().zzf().nextLong();
        long j3 = j2 + 1;
        long j4 = LongCompanionObject.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.zzb.zzd().edit();
        if ((nextLong & LongCompanionObject.MAX_VALUE) < j4) {
            edit2.putString(this.zzd, str2);
        }
        edit2.putLong(this.zzc, j3);
        edit2.apply();
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    public final Pair<String, Long> zzb() {
        char c;
        this.zzb.zzg();
        this.zzb.zzg();
        long zzd = zzd();
        if (zzd == 0) {
            zzc();
            c = 0;
        } else {
            c = Math.abs(zzd - this.zzb.zzx.zzax().currentTimeMillis());
        }
        long j = this.zze;
        if (c < j) {
            return null;
        }
        if (c > j + j) {
            zzc();
            return null;
        }
        String string = this.zzb.zzd().getString(this.zzd, null);
        long j2 = this.zzb.zzd().getLong(this.zzc, 0L);
        zzc();
        return (string == null || j2 <= 0) ? zzex.zza : new Pair<>(string, Long.valueOf(j2));
    }
}
