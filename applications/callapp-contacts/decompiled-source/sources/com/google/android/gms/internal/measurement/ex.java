package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.ex;
import com.google.android.gms.internal.measurement.ey;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ex.class */
public abstract class ex<MessageType extends ey<MessageType, BuilderType>, BuilderType extends ex<MessageType, BuilderType>> implements hn {
    protected abstract BuilderType a(MessageType messagetype);

    public BuilderType a(byte[] bArr, int i) throws zzib {
        throw null;
    }

    public BuilderType a(byte[] bArr, int i, fy fyVar) throws zzib {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.hn
    public final /* synthetic */ hn a(ho hoVar) {
        if (C().getClass().isInstance(hoVar)) {
            return a((ex<MessageType, BuilderType>) ((ey) hoVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.hn
    public final /* bridge */ /* synthetic */ hn a(byte[] bArr) throws zzib {
        return a(bArr, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.hn
    public final /* bridge */ /* synthetic */ hn a(byte[] bArr, fy fyVar) throws zzib {
        return a(bArr, bArr.length, fyVar);
    }

    /* renamed from: x */
    public abstract BuilderType clone();
}
