package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapa.class */
public final class zzapa implements zzaob {
    private zzaoz zzd;
    private ByteBuffer zzg;
    private ShortBuffer zzh;
    private ByteBuffer zzi;
    private long zzj;
    private long zzk;
    private boolean zzl;
    private float zze = 1.0f;
    private float zzf = 1.0f;
    private int zzb = -1;
    private int zzc = -1;

    public zzapa() {
        ByteBuffer byteBuffer = zzaob.zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer.asShortBuffer();
        this.zzi = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zza(int i, int i2, int i3) throws zzaoa {
        if (i3 == 2) {
            if (this.zzc == i && this.zzb == i2) {
                return false;
            }
            this.zzc = i;
            this.zzb = i2;
            return true;
        }
        throw new zzaoa(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zzb() {
        return Math.abs(this.zze - 1.0f) >= 0.01f || Math.abs(this.zzf - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final int zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final int zzd() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zze(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.zzj += remaining;
            this.zzd.zzc(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int zzf = this.zzd.zzf() * this.zzb;
        int i = zzf + zzf;
        if (i > 0) {
            if (this.zzg.capacity() < i) {
                ByteBuffer order = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
                this.zzg = order;
                this.zzh = order.asShortBuffer();
            } else {
                this.zzg.clear();
                this.zzh.clear();
            }
            this.zzd.zzd(this.zzh);
            this.zzk += i;
            this.zzg.limit(i);
            this.zzi = this.zzg;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzf() {
        this.zzd.zze();
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final ByteBuffer zzg() {
        ByteBuffer byteBuffer = this.zzi;
        this.zzi = zzaob.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zzh() {
        boolean z = true;
        if (this.zzl) {
            zzaoz zzaozVar = this.zzd;
            if (zzaozVar != null) {
                if (zzaozVar.zzf() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzi() {
        zzaoz zzaozVar = new zzaoz(this.zzc, this.zzb);
        this.zzd = zzaozVar;
        zzaozVar.zza(this.zze);
        this.zzd.zzb(this.zzf);
        this.zzi = zzaob.zza;
        this.zzj = 0L;
        this.zzk = 0L;
        this.zzl = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzj() {
        this.zzd = null;
        ByteBuffer byteBuffer = zzaob.zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer.asShortBuffer();
        this.zzi = byteBuffer;
        this.zzb = -1;
        this.zzc = -1;
        this.zzj = 0L;
        this.zzk = 0L;
        this.zzl = false;
    }

    public final float zzk(float f) {
        float zzg = zzave.zzg(f, 0.1f, 8.0f);
        this.zze = zzg;
        return zzg;
    }

    public final float zzl(float f) {
        this.zzf = zzave.zzg(1.0f, 0.1f, 8.0f);
        return 1.0f;
    }

    public final long zzm() {
        return this.zzj;
    }

    public final long zzn() {
        return this.zzk;
    }
}
