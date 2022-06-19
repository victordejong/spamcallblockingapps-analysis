package com.google.android.gms.internal.play_billing;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/play_billing/zzo.class */
public final class zzo extends zzp {
    public final transient int zza;
    public final transient int zzb;
    public final /* synthetic */ zzp zzc;

    public zzo(zzp zzpVar, int i, int i2) {
        this.zzc = zzpVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzj.zza(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzm
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.play_billing.zzm
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.play_billing.zzm
    public final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.play_billing.zzp
    /* renamed from: zzf */
    public final zzp subList(int i, int i2) {
        zzj.zzc(i, i2, this.zzb);
        zzp zzpVar = this.zzc;
        int i3 = this.zza;
        return zzpVar.subList(i + i3, i2 + i3);
    }
}
