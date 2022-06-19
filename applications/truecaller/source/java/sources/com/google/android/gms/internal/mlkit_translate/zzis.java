package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzis;
import com.google.android.gms.internal.mlkit_translate.zzit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzis.class */
public abstract class zzis<MessageType extends zzit<MessageType, BuilderType>, BuilderType extends zzis<MessageType, BuilderType>> implements zzln {
    public abstract BuilderType zza(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_translate.zzln
    public final /* synthetic */ zzln zza(zzlk zzlkVar) {
        if (zzi().getClass().isInstance(zzlkVar)) {
            return zza((zzis<MessageType, BuilderType>) ((zzit) zzlkVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: zzb */
    public abstract BuilderType clone();
}
