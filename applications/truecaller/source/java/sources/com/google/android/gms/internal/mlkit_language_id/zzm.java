package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzm.class */
public final class zzm extends zzk<E> {
    private final transient int zza;
    private final transient int zzb;
    private final /* synthetic */ zzk zzc;

    public zzm(zzk zzkVar, int i, int i2) {
        this.zzc = zzkVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzg.zza(i, this.zzb);
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzk
    /* renamed from: zza */
    public final zzk<E> subList(int i, int i2) {
        zzg.zza(i, i2, this.zzb);
        zzk zzkVar = this.zzc;
        int i3 = this.zza;
        return (zzk) zzkVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzl
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzl
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzl
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }
}
