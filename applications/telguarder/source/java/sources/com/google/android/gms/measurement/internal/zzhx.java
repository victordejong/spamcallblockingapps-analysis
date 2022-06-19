package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhx.class */
public final class zzhx implements Runnable {
    final /* synthetic */ zzib zza;

    public zzhx(zzib zzibVar) {
        this.zza = zzibVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhu zzhuVar;
        zzib zzibVar = this.zza;
        zzhuVar = zzibVar.zzh;
        zzibVar.zza = zzhuVar;
    }
}
