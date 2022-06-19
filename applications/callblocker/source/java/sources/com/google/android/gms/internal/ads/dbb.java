package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.day;
import com.google.android.gms.internal.ads.dbb;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbb.class */
public abstract class dbb<MessageType extends day<MessageType, BuilderType>, BuilderType extends dbb<MessageType, BuilderType>> implements def {
    /* renamed from: a */
    protected abstract BuilderType mo10074a(MessageType messagetype);

    /* renamed from: a */
    public abstract BuilderType mo10073a(dby dbyVar, dci dciVar);

    /* renamed from: a */
    public BuilderType mo10070a(byte[] bArr, int i, int i2, dci dciVar) {
        try {
            dby m10197a = dby.m10197a(bArr, 0, i2, false);
            mo10073a(m10197a, dciVar);
            m10197a.mo10181a(0);
            return this;
        } catch (zzeco e) {
            throw e;
        } catch (IOException e2) {
            String name = getClass().getName();
            throw new RuntimeException(new StringBuilder(String.valueOf(name).length() + 60 + String.valueOf("byte array").length()).append("Reading ").append(name).append(" from a ").append("byte array").append(" threw an IOException (should never happen).").toString(), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.def
    /* renamed from: a */
    public final /* synthetic */ def mo9989a(deg degVar) {
        if (!mo9975w().getClass().isInstance(degVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return mo10074a((dbb<MessageType, BuilderType>) ((day) degVar));
    }

    /* renamed from: b */
    public abstract BuilderType clone();
}
