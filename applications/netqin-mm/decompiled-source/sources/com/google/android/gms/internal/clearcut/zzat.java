package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzas;
import com.google.android.gms.internal.clearcut.zzat;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzat.class */
public abstract class zzat<MessageType extends zzas<MessageType, BuilderType>, BuilderType extends zzat<MessageType, BuilderType>> implements zzdp {
    /* renamed from: a */
    public abstract BuilderType mo10712a(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.clearcut.zzdp
    /* renamed from: a */
    public final /* synthetic */ zzdp mo10679a(zzdo zzdoVar) {
        if (mo10676h().getClass().isInstance(zzdoVar)) {
            mo10712a((zzat<MessageType, BuilderType>) ((zzas) zzdoVar));
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: j */
    public abstract BuilderType clone();
}
