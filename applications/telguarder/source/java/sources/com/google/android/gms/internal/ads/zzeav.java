package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeav.class */
public class zzeav<PrimitiveT, KeyProtoT extends zzemo> implements zzeaw<PrimitiveT> {
    private final zzeax<KeyProtoT> zzibh;
    private final Class<PrimitiveT> zzibi;

    public zzeav(zzeax<KeyProtoT> zzeaxVar, Class<PrimitiveT> cls) {
        if (zzeaxVar.zzbam().contains(cls) || Void.class.equals(cls)) {
            this.zzibh = zzeaxVar;
            this.zzibi = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzeaxVar.toString(), cls.getName()));
    }

    private final PrimitiveT zzb(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.zzibi)) {
            this.zzibh.zzc(keyprotot);
            return (PrimitiveT) this.zzibh.zza(keyprotot, (Class<PrimitiveT>) this.zzibi);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    private final zzeay<?, KeyProtoT> zzbaj() {
        return new zzeay<>(this.zzibh.zzbao());
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final String getKeyType() {
        return this.zzibh.getKeyType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzeaw
    public final PrimitiveT zza(zzemo zzemoVar) throws GeneralSecurityException {
        String valueOf = String.valueOf(this.zzibh.zzbak().getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (this.zzibh.zzbak().isInstance(zzemoVar)) {
            return (PrimitiveT) zzb(zzemoVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final Class<PrimitiveT> zzbai() {
        return this.zzibi;
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final PrimitiveT zzm(zzejr zzejrVar) throws GeneralSecurityException {
        try {
            return zzb(this.zzibh.zzp(zzejrVar));
        } catch (zzelo e) {
            String valueOf = String.valueOf(this.zzibh.zzbak().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final zzemo zzn(zzejr zzejrVar) throws GeneralSecurityException {
        try {
            return zzbaj().zzq(zzejrVar);
        } catch (zzelo e) {
            String valueOf = String.valueOf(this.zzibh.zzbao().zzbap().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final zzegd zzo(zzejr zzejrVar) throws GeneralSecurityException {
        try {
            return (zzegd) ((zzelb) zzegd.zzbea().zzhu(this.zzibh.getKeyType()).zzag(zzbaj().zzq(zzejrVar).zzbfz()).zzb(this.zzibh.zzbal()).zzbiw());
        } catch (zzelo e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
