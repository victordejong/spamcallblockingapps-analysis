package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbv.class */
public final class zzbv extends zzepk {
    private ByteBuffer zzdr;

    public zzbv(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzepk
    public final void zzl(ByteBuffer byteBuffer) {
        this.zzdr = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
