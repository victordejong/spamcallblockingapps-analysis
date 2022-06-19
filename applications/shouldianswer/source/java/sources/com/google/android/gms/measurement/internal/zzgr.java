package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgr.class */
public class zzgr implements zzgt {
    protected final zzga zzx;

    public zzgr(zzga zzgaVar) {
        Preconditions.checkNotNull(zzgaVar);
        this.zzx = zzgaVar;
    }

    public void zza() {
        this.zzx.zzae();
    }

    public void zzb() {
        this.zzx.zzad();
    }

    public void zzc() {
        this.zzx.zzq().zzc();
    }

    public void zzd() {
        this.zzx.zzq().zzd();
    }

    public zzah zzl() {
        return this.zzx.zzx();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public Clock zzm() {
        return this.zzx.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public Context zzn() {
        return this.zzx.zzn();
    }

    public zzeu zzo() {
        return this.zzx.zzj();
    }

    public zzkm zzp() {
        return this.zzx.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public zzft zzq() {
        return this.zzx.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public zzew zzr() {
        return this.zzx.zzr();
    }

    public zzff zzs() {
        return this.zzx.zzc();
    }

    public zzx zzt() {
        return this.zzx.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzgt
    public zzw zzu() {
        return this.zzx.zzu();
    }
}
