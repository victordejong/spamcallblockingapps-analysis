package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzr.class */
public final class zzr extends zzq<E> {
    private final transient int zza;
    private final transient int zzb;
    private final /* synthetic */ zzq zzc;

    public zzr(zzq zzqVar, int i, int i2) {
        this.zzc = zzqVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzi.zza(i, this.zzb);
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzq
    /* renamed from: zza */
    public final zzq<E> subList(int i, int i2) {
        zzi.zza(i, i2, this.zzb);
        zzq zzqVar = this.zzc;
        int i3 = this.zza;
        return (zzq) zzqVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }
}
