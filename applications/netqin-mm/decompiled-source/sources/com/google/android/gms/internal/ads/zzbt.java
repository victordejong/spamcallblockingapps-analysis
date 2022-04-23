package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbt.class */
public final class zzbt extends zzeoe {
    public zzbt(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzeoe
    /* renamed from: a */
    public final void mo12217a(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
