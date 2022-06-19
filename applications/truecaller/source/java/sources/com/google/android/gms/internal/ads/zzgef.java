package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgef;
import com.google.android.gms.internal.ads.zzgeg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgef.class */
public abstract class zzgef<MessageType extends zzgeg<MessageType, BuilderType>, BuilderType extends zzgef<MessageType, BuilderType>> implements zzghh {
    /* renamed from: zzab */
    public abstract BuilderType clone();

    public abstract BuilderType zzac(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzghh
    public final /* bridge */ /* synthetic */ zzghh zzad(zzghi zzghiVar) {
        if (zzbe().getClass().isInstance(zzghiVar)) {
            return zzac((zzgeg) zzghiVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
