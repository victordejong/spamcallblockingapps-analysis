package com.google.android.gms.measurement.internal;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzef.class */
public final class zzef implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ Object zzd;
    final /* synthetic */ Object zze;
    final /* synthetic */ zzei zzf;

    public zzef(zzei zzeiVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzeiVar;
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        zzex zzd = this.zzf.zzx.zzd();
        if (!zzd.zzu()) {
            Log.println(6, this.zzf.zzn(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.zzf.zza;
        if (c == 0) {
            if (this.zzf.zzx.zzc().zzh()) {
                zzei zzeiVar = this.zzf;
                zzeiVar.zzx.zzas();
                zzeiVar.zza = 'C';
            } else {
                zzei zzeiVar2 = this.zzf;
                zzeiVar2.zzx.zzas();
                zzeiVar2.zza = 'c';
            }
        }
        j = this.zzf.zzb;
        if (j < 0) {
            zzei zzeiVar3 = this.zzf;
            zzeiVar3.zzx.zzc().zzf();
            zzeiVar3.zzb = 39000L;
        }
        char charAt = "01VDIWEA?".charAt(this.zza);
        c2 = this.zzf.zza;
        j2 = this.zzf.zzb;
        String zzo = zzei.zzo(true, this.zzb, this.zzc, this.zzd, this.zze);
        StringBuilder sb = new StringBuilder(String.valueOf(zzo).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(zzo);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.zzb.substring(0, 1024);
        }
        zzev zzevVar = zzd.zzb;
        if (zzevVar == null) {
            return;
        }
        zzevVar.zza(str, 1L);
    }
}
