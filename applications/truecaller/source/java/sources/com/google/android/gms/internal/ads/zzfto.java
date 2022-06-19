package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzghi;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfto.class */
public class zzfto<PrimitiveT, KeyProtoT extends zzghi> implements zzftm<PrimitiveT> {
    private final zzftu<KeyProtoT> zza;
    private final Class<PrimitiveT> zzb;

    public zzfto(zzftu<KeyProtoT> zzftuVar, Class<PrimitiveT> cls) {
        if (zzftuVar.zzf().contains(cls) || Void.class.equals(cls)) {
            this.zza = zzftuVar;
            this.zzb = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzftuVar.toString(), cls.getName()));
    }

    private final PrimitiveT zzg(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.zzb)) {
            this.zza.zzd(keyprotot);
            return (PrimitiveT) this.zza.zze(keyprotot, (Class<PrimitiveT>) this.zzb);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    private final zzftn<?, KeyProtoT> zzh() {
        return new zzftn<>(this.zza.zzh());
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final PrimitiveT zza(zzgex zzgexVar) throws GeneralSecurityException {
        try {
            return zzg(this.zza.zzc(zzgexVar));
        } catch (zzggm e) {
            String name = this.zza.zza().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzftm
    public final PrimitiveT zzb(zzghi zzghiVar) throws GeneralSecurityException {
        String name = this.zza.zza().getName();
        String concat = name.length() != 0 ? "Expected proto of type ".concat(name) : new String("Expected proto of type ");
        if (this.zza.zza().isInstance(zzghiVar)) {
            return zzg(zzghiVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final zzghi zzc(zzgex zzgexVar) throws GeneralSecurityException {
        try {
            return zzh().zza(zzgexVar);
        } catch (zzggm e) {
            String name = this.zza.zzh().zza().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final String zzd() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final Class<PrimitiveT> zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzftm
    public final zzgar zzf(zzgex zzgexVar) throws GeneralSecurityException {
        try {
            KeyProtoT zza = zzh().zza(zzgexVar);
            zzgaq zzd = zzgar.zzd();
            zzd.zza(this.zza.zzb());
            zzd.zzb(zza.zzan());
            zzd.zzc(this.zza.zzi());
            return zzd.zzah();
        } catch (zzggm e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
