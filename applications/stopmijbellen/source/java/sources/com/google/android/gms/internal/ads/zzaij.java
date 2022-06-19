package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaij.class */
public final class zzaij extends zzgoy {
    public ByteBuffer zza;

    public zzaij(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzgoy
    public final void zzf(ByteBuffer byteBuffer) {
        this.zza = byteBuffer;
        byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
    }
}
