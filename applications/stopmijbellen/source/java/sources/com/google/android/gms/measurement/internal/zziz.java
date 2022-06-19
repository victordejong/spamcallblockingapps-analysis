package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziz.class */
public final class zziz implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzas zzc;
    public final /* synthetic */ String zzd;
    public final /* synthetic */ zzjk zze;

    public zziz(zzjk zzjkVar, boolean z, zzp zzpVar, boolean z2, zzas zzasVar, String str) {
        this.zze = zzjkVar;
        this.zza = zzpVar;
        this.zzb = z2;
        this.zzc = zzasVar;
        this.zzd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zze.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zze.zzs, "Discarding data. Failed to send event to service");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zze.zzk(zzedVar, this.zzb ? null : this.zzc, this.zza);
        this.zze.zzP();
    }
}
