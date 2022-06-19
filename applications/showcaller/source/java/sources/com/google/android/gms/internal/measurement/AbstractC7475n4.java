package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC7475n4;
import com.google.android.gms.internal.measurement.AbstractC7489o4;
/* renamed from: com.google.android.gms.internal.measurement.n4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/n4.class */
public abstract class AbstractC7475n4<MessageType extends AbstractC7489o4<MessageType, BuilderType>, BuilderType extends AbstractC7475n4<MessageType, BuilderType>> implements AbstractC7610x6 {
    @Override // com.google.android.gms.internal.measurement.AbstractC7610x6
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ AbstractC7610x6 mo6757e(byte[] bArr, C7448l5 c7448l5) {
        return mo6889j(bArr, 0, bArr.length, c7448l5);
    }

    /* renamed from: i */
    public abstract BuilderType mo6890i(byte[] bArr, int i, int i2);

    /* renamed from: j */
    public abstract BuilderType mo6889j(byte[] bArr, int i, int i2, C7448l5 c7448l5);

    /* renamed from: l */
    protected abstract BuilderType mo6888l(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC7610x6
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ AbstractC7610x6 mo6755u(AbstractC7623y6 abstractC7623y6) {
        if (mo6643h().getClass().isInstance(abstractC7623y6)) {
            return mo6888l((AbstractC7489o4) abstractC7623y6);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7610x6
    /* renamed from: z */
    public final /* bridge */ /* synthetic */ AbstractC7610x6 mo6754z(byte[] bArr) {
        return mo6890i(bArr, 0, bArr.length);
    }
}
