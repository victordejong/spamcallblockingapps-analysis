package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzejh;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejg.class */
public abstract class zzejg<MessageType extends zzejh<MessageType, BuilderType>, BuilderType extends zzejg<MessageType, BuilderType>> implements zzemn {
    protected abstract BuilderType zza(MessageType messagetype);

    public abstract BuilderType zza(zzekc zzekcVar, zzeko zzekoVar) throws IOException;

    public BuilderType zza(byte[] bArr, int i, int i2, zzeko zzekoVar) throws zzelo {
        try {
            zzekc zzb = zzekc.zzb(bArr, 0, i2, false);
            zza(zzb, zzekoVar);
            zzb.zzgd(0);
            return this;
        } catch (zzelo e) {
            throw e;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + "byte array".length());
            sb.append("Reading ");
            sb.append(name);
            sb.append(" from a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    /* renamed from: zzbfy */
    public abstract BuilderType clone();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzemn
    public final /* synthetic */ zzemn zzf(zzemo zzemoVar) {
        if (zzbiq().getClass().isInstance(zzemoVar)) {
            return zza((zzejh) zzemoVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
