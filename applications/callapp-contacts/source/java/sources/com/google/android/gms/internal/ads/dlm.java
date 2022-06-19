package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dlm;
import com.google.android.gms.internal.ads.dln;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlm.class */
public abstract class dlm<MessageType extends dln<MessageType, BuilderType>, BuilderType extends dlm<MessageType, BuilderType>> implements dos {
    /* renamed from: a */
    protected abstract BuilderType mo16332a(MessageType messagetype);

    /* renamed from: a */
    public abstract BuilderType mo16331a(dmi dmiVar, dmt dmtVar) throws IOException;

    /* renamed from: a */
    public BuilderType mo16328a(byte[] bArr, int i, dmt dmtVar) throws zzenn {
        try {
            dmi m16455a = dmi.m16455a(bArr, 0, i, false);
            mo16331a(m16455a, dmtVar);
            m16455a.mo16443a(0);
            return this;
        } catch (zzenn e) {
            throw e;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + "byte array".length());
            sb.append("Reading ");
            sb.append(name);
            sb.append(" from a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dos
    /* renamed from: a */
    public final /* synthetic */ dos mo16261a(dot dotVar) {
        if (mo16248o().getClass().isInstance(dotVar)) {
            return mo16332a((dlm<MessageType, BuilderType>) ((dln) dotVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: b */
    public abstract BuilderType clone();
}
