package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dlm;
import com.google.android.gms.internal.ads.dln;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlm.class */
public abstract class dlm<MessageType extends dln<MessageType, BuilderType>, BuilderType extends dlm<MessageType, BuilderType>> implements dos {
    protected abstract BuilderType a(MessageType messagetype);

    public abstract BuilderType a(dmi dmiVar, dmt dmtVar) throws IOException;

    public BuilderType a(byte[] bArr, int i, dmt dmtVar) throws zzenn {
        try {
            dmi a2 = dmi.a(bArr, 0, i, false);
            a(a2, dmtVar);
            a2.a(0);
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
    public final /* synthetic */ dos a(dot dotVar) {
        if (o().getClass().isInstance(dotVar)) {
            return a((dlm<MessageType, BuilderType>) ((dln) dotVar));
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: b */
    public abstract BuilderType clone();
}
