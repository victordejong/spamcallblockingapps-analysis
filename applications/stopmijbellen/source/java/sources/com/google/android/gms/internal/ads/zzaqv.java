package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqv.class */
public final class zzaqv implements zzapv {
    private zzaqu zzd;
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

    public zzaqv() {
        ByteBuffer byteBuffer = zzapv.zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer.asShortBuffer();
        this.zzi = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final int zzb() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final ByteBuffer zzc() {
        ByteBuffer byteBuffer = this.zzi;
        this.zzi = zzapv.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzd() {
        zzaqu zzaquVar = new zzaqu(this.zzc, this.zzb);
        this.zzd = zzaquVar;
        zzaquVar.zzf(this.zze);
        this.zzd.zze(this.zzf);
        this.zzi = zzapv.zza;
        this.zzj = 0L;
        this.zzk = 0L;
        this.zzl = false;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zze() {
        this.zzd.zzc();
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzf(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.zzj += remaining;
            this.zzd.zzd(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int zza = this.zzd.zza() * this.zzb;
        int i = zza + zza;
        if (i > 0) {
            if (this.zzg.capacity() < i) {
                ByteBuffer order = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
                this.zzg = order;
                this.zzh = order.asShortBuffer();
            } else {
                this.zzg.clear();
                this.zzh.clear();
            }
            this.zzd.zzb(this.zzh);
            this.zzk += i;
            this.zzg.limit(i);
            this.zzi = this.zzg;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzg() {
        this.zzd = null;
        ByteBuffer byteBuffer = zzapv.zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer.asShortBuffer();
        this.zzi = byteBuffer;
        this.zzb = -1;
        this.zzc = -1;
        this.zzj = 0L;
        this.zzk = 0L;
        this.zzl = false;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzh(int i, int i2, int i3) throws zzapu {
        if (i3 == 2) {
            if (this.zzc == i && this.zzb == i2) {
                return false;
            }
            this.zzc = i;
            this.zzb = i2;
            return true;
        }
        throw new zzapu(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzi() {
        return Math.abs(this.zze - 1.0f) >= 0.01f || Math.abs(this.zzf - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzj() {
        boolean z = true;
        if (this.zzl) {
            zzaqu zzaquVar = this.zzd;
            if (zzaquVar != null) {
                if (zzaquVar.zza() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public final float zzk(float f) {
        this.zzf = zzaxb.zza(1.0f, 0.1f, 8.0f);
        return 1.0f;
    }

    public final float zzl(float f) {
        float zza = zzaxb.zza(f, 0.1f, 8.0f);
        this.zze = zza;
        return zza;
    }

    public final long zzm() {
        return this.zzj;
    }

    public final long zzn() {
        return this.zzk;
    }
}
