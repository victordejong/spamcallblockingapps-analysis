package com.google.android.gms.measurement.internal;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzej.class */
public final class zzej implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Object zzc;
    public final /* synthetic */ Object zzd;
    public final /* synthetic */ Object zze;
    public final /* synthetic */ zzem zzf;

    public zzej(zzem zzemVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzf = zzemVar;
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
        zzfb zzd = this.zzf.zzs.zzd();
        if (!zzd.zzu()) {
            Log.println(6, this.zzf.zzn(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.zzf.zza;
        if (c == 0) {
            if (this.zzf.zzs.zzc().zzh()) {
                zzem zzemVar = this.zzf;
                zzemVar.zzs.zzat();
                zzemVar.zza = 'C';
            } else {
                zzem zzemVar2 = this.zzf;
                zzemVar2.zzs.zzat();
                zzemVar2.zza = 'c';
            }
        }
        j = this.zzf.zzb;
        if (j < 0) {
            zzem zzemVar3 = this.zzf;
            zzemVar3.zzs.zzc().zzf();
            zzemVar3.zzb = 42004L;
        }
        char charAt = "01VDIWEA?".charAt(this.zza);
        c2 = this.zzf.zza;
        j2 = this.zzf.zzb;
        String zzo = zzem.zzo(true, this.zzb, this.zzc, this.zzd, this.zze);
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
        zzez zzezVar = zzd.zzb;
        if (zzezVar == null) {
            return;
        }
        zzezVar.zza(str, 1L);
    }
}
