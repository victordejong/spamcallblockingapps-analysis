package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgim;
import com.google.android.gms.internal.ads.zzgin;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgim.class */
public abstract class zzgim<MessageType extends zzgin<MessageType, BuilderType>, BuilderType extends zzgim<MessageType, BuilderType>> implements zzglu {
    /* renamed from: zzab */
    public abstract BuilderType clone();

    public abstract BuilderType zzac(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzglu
    public final /* bridge */ /* synthetic */ zzglu zzad(zzglv zzglvVar) {
        if (zzbp().getClass().isInstance(zzglvVar)) {
            return zzac((zzgin) zzglvVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
