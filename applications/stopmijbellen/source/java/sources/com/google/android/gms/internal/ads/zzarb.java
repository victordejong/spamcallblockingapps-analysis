package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarb.class */
public final class zzarb extends zzaqw {
    public final zzaqz zza = new zzaqz();
    public ByteBuffer zzb;
    public long zzc;

    public zzarb(int i) {
    }

    private final ByteBuffer zzj(int i) {
        ByteBuffer byteBuffer = this.zzb;
        StringBuilder m8753i = C0082b.m8753i(44, "Buffer too small (", byteBuffer == null ? 0 : byteBuffer.capacity(), " < ", i);
        m8753i.append(")");
        throw new IllegalStateException(m8753i.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzaqw
    public final void zzb() {
        super.zzb();
        ByteBuffer byteBuffer = this.zzb;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final void zzh(int i) throws IllegalStateException {
        ByteBuffer byteBuffer = this.zzb;
        if (byteBuffer == null) {
            this.zzb = zzj(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.zzb.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer zzj = zzj(i2);
        if (position > 0) {
            this.zzb.position(0);
            this.zzb.limit(position);
            zzj.put(this.zzb);
        }
        this.zzb = zzj;
    }

    public final boolean zzi() {
        return zzd(1073741824);
    }
}
