package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.sc3;
import com.google.android.gms.internal.ads.tc3;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sc3.class */
public abstract class sc3<MessageType extends tc3<MessageType, BuilderType>, BuilderType extends sc3<MessageType, BuilderType>> implements lf3 {
    /* renamed from: h */
    protected abstract BuilderType mo11084h(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.lf3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ lf3 mo11083k(mf3 mf3Var) {
        if (mo12922g().getClass().isInstance(mf3Var)) {
            return mo11084h((tc3) mf3Var);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
