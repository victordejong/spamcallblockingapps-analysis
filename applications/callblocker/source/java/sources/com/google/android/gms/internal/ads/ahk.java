package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahk.class */
public final class ahk extends dhc {

    /* renamed from: b */
    private ByteBuffer f9692b;

    public ahk(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.dhc
    /* renamed from: a */
    public final void mo9458a(ByteBuffer byteBuffer) {
        this.f9692b = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
