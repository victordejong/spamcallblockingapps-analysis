package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.internal.mlkit_language_id.zzde;
import com.google.android.gms.internal.mlkit_language_id.zzdh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzdh.class */
public abstract class zzdh<MessageType extends zzde<MessageType, BuilderType>, BuilderType extends zzdh<MessageType, BuilderType>> implements zzfy {
    public abstract BuilderType zza(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzfy
    public final /* synthetic */ zzfy zza(zzfz zzfzVar) {
        if (zzn().getClass().isInstance(zzfzVar)) {
            return zza((zzdh<MessageType, BuilderType>) ((zzde) zzfzVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: zzb */
    public abstract BuilderType clone();
}
