package com.google.android.gms.measurement.internal;

import androidx.recyclerview.widget.C0608b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkb.class */
public final class zzkb extends zzal {
    public final /* synthetic */ zzkc zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkb(zzkc zzkcVar, zzgp zzgpVar) {
        super(zzgpVar);
        this.zza = zzkcVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzal
    public final void zza() {
        this.zza.zzd();
        C0608b.m7623l(this.zza.zzs, "Starting upload from DelayedRunnable");
        this.zza.zzf.zzB();
    }
}
