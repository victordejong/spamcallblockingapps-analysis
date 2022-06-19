package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapg.class */
public final class zzapg extends zzapb {
    public final zzape zza = new zzape();
    public ByteBuffer zzb;
    public long zzc;

    public zzapg(int i) {
    }

    private final ByteBuffer zzj(int i) {
        ByteBuffer byteBuffer = this.zzb;
        StringBuilder m8546z = C22128a.m8546z(44, "Buffer too small (", byteBuffer == null ? 0 : byteBuffer.capacity(), " < ", i);
        m8546z.append(")");
        throw new IllegalStateException(m8546z.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzapb
    public final void zza() {
        super.zza();
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
        return zzg(1073741824);
    }
}
