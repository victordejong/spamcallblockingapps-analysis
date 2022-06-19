package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoi.class */
public final class zzfoi extends zzfoj {
    public final transient int zza;
    public final transient int zzb;
    public final /* synthetic */ zzfoj zzc;

    public zzfoi(zzfoj zzfojVar, int i, int i2) {
        this.zzc = zzfojVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzflx.zze(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfoj
    /* renamed from: zzh */
    public final zzfoj subList(int i, int i2) {
        zzflx.zzg(i, i2, this.zzb);
        zzfoj zzfojVar = this.zzc;
        int i3 = this.zza;
        return zzfojVar.subList(i + i3, i2 + i3);
    }
}
