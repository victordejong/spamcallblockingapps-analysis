package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzdl;
import com.google.android.gms.internal.measurement.zzdn;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdn.class */
public abstract class zzdn<MessageType extends zzdl<MessageType, BuilderType>, BuilderType extends zzdn<MessageType, BuilderType>> implements zzgn {
    private final String zza(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + String.valueOf(str).length());
        sb.append("Reading ");
        sb.append(name);
        sb.append(" from a ");
        sb.append(str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }

    protected abstract BuilderType zza(MessageType messagetype);

    public abstract BuilderType zza(zzeg zzegVar, zzeq zzeqVar);

    public BuilderType zza(byte[] bArr, int i, int i2) {
        try {
            zzeg zza = zzeg.zza(bArr, 0, i2, false);
            zza(zza, zzeq.zza());
            zza.zza(0);
            return this;
        } catch (zzfo e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    public BuilderType zza(byte[] bArr, int i, int i2, zzeq zzeqVar) {
        try {
            zzeg zza = zzeg.zza(bArr, 0, i2, false);
            zza(zza, zzeqVar);
            zza.zza(0);
            return this;
        } catch (zzfo e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzgn
    public final /* synthetic */ zzgn zza(zzgo zzgoVar) {
        if (zzbt().getClass().isInstance(zzgoVar)) {
            return zza((zzdn<MessageType, BuilderType>) ((zzdl) zzgoVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zzgn
    public final /* synthetic */ zzgn zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzgn
    public final /* synthetic */ zzgn zza(byte[] bArr, zzeq zzeqVar) {
        return zza(bArr, 0, bArr.length, zzeqVar);
    }

    /* renamed from: zzp */
    public abstract BuilderType clone();
}
