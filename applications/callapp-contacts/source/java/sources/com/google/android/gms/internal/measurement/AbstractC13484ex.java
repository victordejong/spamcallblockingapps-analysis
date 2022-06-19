package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC13484ex;
import com.google.android.gms.internal.measurement.AbstractC13485ey;
/* renamed from: com.google.android.gms.internal.measurement.ex */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ex.class */
public abstract class AbstractC13484ex<MessageType extends AbstractC13485ey<MessageType, BuilderType>, BuilderType extends AbstractC13484ex<MessageType, BuilderType>> implements AbstractC13555hn {
    /* renamed from: a */
    protected abstract BuilderType mo12777a(MessageType messagetype);

    /* renamed from: a */
    public BuilderType mo12774a(byte[] bArr, int i) throws zzib {
        throw null;
    }

    /* renamed from: a */
    public BuilderType mo12773a(byte[] bArr, int i, C13512fy c13512fy) throws zzib {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC13555hn
    /* renamed from: a */
    public final /* synthetic */ AbstractC13555hn mo12712a(AbstractC13556ho abstractC13556ho) {
        if (mo12704C().getClass().isInstance(abstractC13556ho)) {
            return mo12777a((AbstractC13484ex<MessageType, BuilderType>) ((AbstractC13485ey) abstractC13556ho));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13555hn
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC13555hn mo12711a(byte[] bArr) throws zzib {
        return mo12774a(bArr, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13555hn
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC13555hn mo12710a(byte[] bArr, C13512fy c13512fy) throws zzib {
        return mo12773a(bArr, bArr.length, c13512fy);
    }

    /* renamed from: x */
    public abstract BuilderType clone();
}
