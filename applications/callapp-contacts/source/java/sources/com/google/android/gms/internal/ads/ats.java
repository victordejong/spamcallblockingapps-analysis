package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ats.class */
public final class ats extends drq {

    /* renamed from: a */
    private ByteBuffer f43159a;

    public ats(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.drq
    /* renamed from: a */
    public final void mo15792a(ByteBuffer byteBuffer) {
        this.f43159a = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
