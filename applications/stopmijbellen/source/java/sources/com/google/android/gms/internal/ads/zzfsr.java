package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsr.class */
public final class zzfsr extends zzfss {
    public final transient int zza;
    public final transient int zzb;
    public final /* synthetic */ zzfss zzc;

    public zzfsr(zzfss zzfssVar, int i, int i2) {
        this.zzc = zzfssVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfqg.zza(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    @CheckForNull
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzfss
    /* renamed from: zzh */
    public final zzfss subList(int i, int i2) {
        zzfqg.zzf(i, i2, this.zzb);
        zzfss zzfssVar = this.zzc;
        int i3 = this.zza;
        return zzfssVar.subList(i + i3, i2 + i3);
    }
}
