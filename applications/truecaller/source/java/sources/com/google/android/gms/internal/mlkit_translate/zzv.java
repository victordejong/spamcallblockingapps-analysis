package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzv.class */
public final class zzv<E> extends zzo<E> {
    private Object[] zzd;

    public zzv() {
        super(4);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzo, com.google.android.gms.internal.mlkit_translate.zzn
    public final /* synthetic */ zzn zza(Iterable iterable) {
        zzi.zza(iterable);
        super.zza(iterable);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_translate.zzo, com.google.android.gms.internal.mlkit_translate.zzn
    public final /* synthetic */ zzn zza(Object obj) {
        zzi.zza(obj);
        this.zzd = null;
        super.zza(obj);
        return this;
    }

    public final zzw<E> zza() {
        zzw<E> zzb;
        int i = this.zzb;
        if (i != 0) {
            if (i == 1) {
                return zzw.zza(this.zza[0]);
            }
            zzb = zzw.zzb(i, this.zza);
            this.zzb = zzb.size();
            this.zzc = true;
            this.zzd = null;
            return zzb;
        }
        return zzag.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzo
    public final /* synthetic */ zzo zzb(Object obj) {
        return (zzv) zza(obj);
    }
}
