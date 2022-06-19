package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzga.class */
public abstract class zzga<MessageType extends zzgb<MessageType, BuilderType>, BuilderType extends zzga<MessageType, BuilderType>> implements zziw {
    /* renamed from: zzaq */
    public abstract BuilderType clone();

    public BuilderType zzar(byte[] bArr, int i, int i2) throws zzic {
        throw null;
    }

    public BuilderType zzas(byte[] bArr, int i, int i2, zzhe zzheVar) throws zzic {
        throw null;
    }

    protected abstract BuilderType zzat(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zziw
    public final /* bridge */ /* synthetic */ zziw zzau(zzix zzixVar) {
        if (zzbK().getClass().isInstance(zzixVar)) {
            return zzat((zzgb) zzixVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final /* bridge */ /* synthetic */ zziw zzav(byte[] bArr, zzhe zzheVar) throws zzic {
        return zzas(bArr, 0, bArr.length, zzheVar);
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final /* bridge */ /* synthetic */ zziw zzaw(byte[] bArr) throws zzic {
        return zzar(bArr, 0, bArr.length);
    }
}
