package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfq;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzcx;
import com.google.android.gms.internal.firebase_perf.zzcy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcx.class */
public abstract class zzcx<MessageType extends zzcy<MessageType, BuilderType>, BuilderType extends zzcx<MessageType, BuilderType>> implements zzfq {
    protected abstract BuilderType zza(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_perf.zzfq
    public final /* synthetic */ zzfq zza(zzfr zzfrVar) {
        if (zzgn().getClass().isInstance(zzfrVar)) {
            return zza((zzcx<MessageType, BuilderType>) ((zzcy) zzfrVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: zzfd */
    public abstract BuilderType clone();
}
