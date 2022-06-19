package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzfp;
import com.google.android.gms.internal.firebase_remote_config.zzfq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfp.class */
public abstract class zzfp<MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzfp<MessageType, BuilderType>> implements zzip {
    protected abstract BuilderType zza(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzip
    public final /* synthetic */ zzip zza(zziq zziqVar) {
        if (zzgw().getClass().isInstance(zziqVar)) {
            return zza((zzfp<MessageType, BuilderType>) ((zzfq) zziqVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: zzeo */
    public abstract BuilderType clone();
}
