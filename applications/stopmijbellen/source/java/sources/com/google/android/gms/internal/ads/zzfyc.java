package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzglv;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyc.class */
public class zzfyc<PrimitiveT, KeyProtoT extends zzglv> implements zzfya<PrimitiveT> {
    private final zzfyi<KeyProtoT> zza;
    private final Class<PrimitiveT> zzb;

    public zzfyc(zzfyi<KeyProtoT> zzfyiVar, Class<PrimitiveT> cls) {
        if (zzfyiVar.zzg().contains(cls) || Void.class.equals(cls)) {
            this.zza = zzfyiVar;
            this.zzb = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzfyiVar.toString(), cls.getName()));
    }

    private final zzfyb<?, KeyProtoT> zzg() {
        return new zzfyb<>(this.zza.zza());
    }

    private final PrimitiveT zzh(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.zzb)) {
            this.zza.zzh(keyprotot);
            return (PrimitiveT) this.zza.zze(keyprotot, (Class<PrimitiveT>) this.zzb);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final zzgff zza(zzgjf zzgjfVar) throws GeneralSecurityException {
        try {
            KeyProtoT zza = zzg().zza(zzgjfVar);
            zzgfe zza2 = zzgff.zza();
            zza2.zza(this.zza.zzf());
            zza2.zzb(zza.zzao());
            zza2.zzc(this.zza.zzj());
            return zza2.zzah();
        } catch (zzgkx e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final zzglv zzb(zzgjf zzgjfVar) throws GeneralSecurityException {
        try {
            return zzg().zza(zzgjfVar);
        } catch (zzgkx e) {
            String name = this.zza.zza().zzb().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final Class<PrimitiveT> zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final PrimitiveT zzd(zzgjf zzgjfVar) throws GeneralSecurityException {
        try {
            return zzh(this.zza.zzb(zzgjfVar));
        } catch (zzgkx e) {
            String name = this.zza.zzd().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfya
    public final PrimitiveT zze(zzglv zzglvVar) throws GeneralSecurityException {
        String name = this.zza.zzd().getName();
        String concat = name.length() != 0 ? "Expected proto of type ".concat(name) : new String("Expected proto of type ");
        if (this.zza.zzd().isInstance(zzglvVar)) {
            return zzh(zzglvVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final String zzf() {
        return this.zza.zzf();
    }
}
