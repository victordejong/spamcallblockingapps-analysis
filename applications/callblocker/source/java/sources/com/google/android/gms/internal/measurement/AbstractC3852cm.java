package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3850ck;
import com.google.android.gms.internal.measurement.AbstractC3852cm;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.cm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cm.class */
public abstract class AbstractC3852cm<MessageType extends AbstractC3850ck<MessageType, BuilderType>, BuilderType extends AbstractC3852cm<MessageType, BuilderType>> implements AbstractC3942fm {
    /* renamed from: a */
    private final String m5838a(String str) {
        String name = getClass().getName();
        return new StringBuilder(String.valueOf(name).length() + 60 + String.valueOf(str).length()).append("Reading ").append(name).append(" from a ").append(str).append(" threw an IOException (should never happen).").toString();
    }

    /* renamed from: a */
    protected abstract BuilderType mo5637a(MessageType messagetype);

    /* renamed from: a */
    public abstract BuilderType mo5636a(AbstractC3875dg abstractC3875dg, C3884dp c3884dp);

    /* renamed from: a */
    public BuilderType mo5633a(byte[] bArr, int i, int i2) {
        try {
            AbstractC3875dg m5742a = AbstractC3875dg.m5742a(bArr, 0, i2, false);
            mo5636a(m5742a, C3884dp.m5694a());
            m5742a.mo5737a(0);
            return this;
        } catch (zzft e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(m5838a("byte array"), e2);
        }
    }

    /* renamed from: a */
    public BuilderType mo5632a(byte[] bArr, int i, int i2, C3884dp c3884dp) {
        try {
            AbstractC3875dg m5742a = AbstractC3875dg.m5742a(bArr, 0, i2, false);
            mo5636a(m5742a, c3884dp);
            m5742a.mo5737a(0);
            return this;
        } catch (zzft e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(m5838a("byte array"), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC3942fm
    /* renamed from: a */
    public final /* synthetic */ AbstractC3942fm mo5548a(AbstractC3943fn abstractC3943fn) {
        if (!mo5533at().getClass().isInstance(abstractC3943fn)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return mo5637a((AbstractC3852cm<MessageType, BuilderType>) ((AbstractC3850ck) abstractC3943fn));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3942fm
    /* renamed from: a */
    public final /* synthetic */ AbstractC3942fm mo5547a(byte[] bArr) {
        return mo5633a(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3942fm
    /* renamed from: a */
    public final /* synthetic */ AbstractC3942fm mo5546a(byte[] bArr, C3884dp c3884dp) {
        return mo5632a(bArr, 0, bArr.length, c3884dp);
    }

    /* renamed from: p */
    public abstract BuilderType clone();
}
