package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ats.class */
public final class ats extends drq {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f23873a;

    public ats(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.drq
    public final void a(ByteBuffer byteBuffer) {
        this.f23873a = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
