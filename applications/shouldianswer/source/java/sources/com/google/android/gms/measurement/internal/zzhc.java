package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhc.class */
public final class zzhc {
    final Context zza;
    String zzb;
    String zzc;
    String zzd;
    Boolean zze;
    long zzf;
    zzv zzg;
    boolean zzh;

    public zzhc(Context context, zzv zzvVar) {
        this.zzh = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
        if (zzvVar != null) {
            this.zzg = zzvVar;
            this.zzb = zzvVar.zzf;
            this.zzc = zzvVar.zze;
            this.zzd = zzvVar.zzd;
            this.zzh = zzvVar.zzc;
            this.zzf = zzvVar.zzb;
            if (zzvVar.zzg == null) {
                return;
            }
            this.zze = Boolean.valueOf(zzvVar.zzg.getBoolean("dataCollectionDefaultEnabled", true));
        }
    }
}
