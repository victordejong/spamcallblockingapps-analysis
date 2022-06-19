package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjj.class */
public final class zzjj implements zzij {
    private ByteBuffer zzamk;
    private boolean zzaml;
    private zzjg zzans;
    private ShortBuffer zzant;
    private long zzanu;
    private long zzanv;
    private float zzaib = 1.0f;
    private float zzaic = 1.0f;
    private int zzaho = -1;
    private int zzamg = -1;
    private ByteBuffer zzalj = zzajc;

    public zzjj() {
        ByteBuffer byteBuffer = zzajc;
        this.zzamk = byteBuffer;
        this.zzant = byteBuffer.asShortBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void flush() {
        zzjg zzjgVar = new zzjg(this.zzamg, this.zzaho);
        this.zzans = zzjgVar;
        zzjgVar.setSpeed(this.zzaib);
        this.zzans.zza(this.zzaic);
        this.zzalj = zzajc;
        this.zzanu = 0L;
        this.zzanv = 0L;
        this.zzaml = false;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean isActive() {
        return Math.abs(this.zzaib - 1.0f) >= 0.01f || Math.abs(this.zzaic - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void reset() {
        this.zzans = null;
        ByteBuffer byteBuffer = zzajc;
        this.zzamk = byteBuffer;
        this.zzant = byteBuffer.asShortBuffer();
        this.zzalj = zzajc;
        this.zzaho = -1;
        this.zzamg = -1;
        this.zzanu = 0L;
        this.zzanv = 0L;
        this.zzaml = false;
    }

    public final float zzb(float f) {
        float zza = zzpt.zza(f, 0.1f, 8.0f);
        this.zzaib = zza;
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzb(int i, int i2, int i3) throws zzii {
        if (i3 == 2) {
            if (this.zzamg == i && this.zzaho == i2) {
                return false;
            }
            this.zzamg = i;
            this.zzaho = i2;
            return true;
        }
        throw new zzii(i, i2, i3);
    }

    public final float zzc(float f) {
        this.zzaic = zzpt.zza(f, 0.1f, 8.0f);
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final boolean zzfe() {
        if (this.zzaml) {
            zzjg zzjgVar = this.zzans;
            return zzjgVar == null || zzjgVar.zzgf() == 0;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfj() {
        return this.zzaho;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final int zzfk() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void zzfl() {
        this.zzans.zzfl();
        this.zzaml = true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final ByteBuffer zzfm() {
        ByteBuffer byteBuffer = this.zzalj;
        this.zzalj = zzajc;
        return byteBuffer;
    }

    public final long zzgk() {
        return this.zzanu;
    }

    public final long zzgl() {
        return this.zzanv;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void zzn(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.zzanu += remaining;
            this.zzans.zza(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int zzgf = (this.zzans.zzgf() * this.zzaho) << 1;
        if (zzgf > 0) {
            if (this.zzamk.capacity() < zzgf) {
                ByteBuffer order = ByteBuffer.allocateDirect(zzgf).order(ByteOrder.nativeOrder());
                this.zzamk = order;
                this.zzant = order.asShortBuffer();
            } else {
                this.zzamk.clear();
                this.zzant.clear();
            }
            this.zzans.zzb(this.zzant);
            this.zzanv += zzgf;
            this.zzamk.limit(zzgf);
            this.zzalj = this.zzamk;
        }
    }
}
