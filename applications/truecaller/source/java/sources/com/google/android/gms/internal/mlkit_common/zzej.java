package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzeg;
import com.google.android.gms.internal.mlkit_common.zzej;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzej.class */
public abstract class zzej<MessageType extends zzeg<MessageType, BuilderType>, BuilderType extends zzej<MessageType, BuilderType>> implements zzha {
    public abstract BuilderType zza(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_common.zzha
    public final /* synthetic */ zzha zza(zzhb zzhbVar) {
        if (zzn().getClass().isInstance(zzhbVar)) {
            return zza((zzej<MessageType, BuilderType>) ((zzeg) zzhbVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: zzb */
    public abstract BuilderType clone();
}
