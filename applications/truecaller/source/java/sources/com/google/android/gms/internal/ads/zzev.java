package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzev.class */
public final class zzev implements zzde {
    private zzdc zze;
    private zzdc zzf;
    private zzdc zzg;
    private zzdc zzh;
    private boolean zzi;
    private zzeu zzj;
    private ByteBuffer zzk;
    private ShortBuffer zzl;
    private ByteBuffer zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private float zzc = 1.0f;
    private float zzd = 1.0f;
    private int zzb = -1;

    public zzev() {
        zzdc zzdcVar = zzdc.zza;
        this.zze = zzdcVar;
        this.zzf = zzdcVar;
        this.zzg = zzdcVar;
        this.zzh = zzdcVar;
        ByteBuffer byteBuffer = zzde.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final zzdc zza(zzdc zzdcVar) throws zzdd {
        if (zzdcVar.zzd == 2) {
            int i = this.zzb;
            int i2 = i;
            if (i == -1) {
                i2 = zzdcVar.zzb;
            }
            this.zze = zzdcVar;
            zzdc zzdcVar2 = new zzdc(i2, zzdcVar.zzc, 2);
            this.zzf = zzdcVar2;
            this.zzi = true;
            return zzdcVar2;
        }
        throw new zzdd(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final boolean zzb() {
        boolean z = false;
        if (this.zzf.zzb != -1) {
            if (Math.abs(this.zzc - 1.0f) >= 1.0E-4f || Math.abs(this.zzd - 1.0f) >= 1.0E-4f) {
                z = true;
            } else if (this.zzf.zzb != this.zze.zzb) {
                return true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzc(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        zzeu zzeuVar = this.zzj;
        Objects.requireNonNull(zzeuVar);
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.zzn += remaining;
        zzeuVar.zzb(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzd() {
        zzeu zzeuVar = this.zzj;
        if (zzeuVar != null) {
            zzeuVar.zzd();
        }
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final ByteBuffer zze() {
        int zzf;
        zzeu zzeuVar = this.zzj;
        if (zzeuVar != null && (zzf = zzeuVar.zzf()) > 0) {
            if (this.zzk.capacity() < zzf) {
                ByteBuffer order = ByteBuffer.allocateDirect(zzf).order(ByteOrder.nativeOrder());
                this.zzk = order;
                this.zzl = order.asShortBuffer();
            } else {
                this.zzk.clear();
                this.zzl.clear();
            }
            zzeuVar.zzc(this.zzl);
            this.zzo += zzf;
            this.zzk.limit(zzf);
            this.zzm = this.zzk;
        }
        ByteBuffer byteBuffer = this.zzm;
        this.zzm = zzde.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final boolean zzf() {
        boolean z = true;
        if (this.zzp) {
            zzeu zzeuVar = this.zzj;
            if (zzeuVar != null) {
                if (zzeuVar.zzf() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzg() {
        if (zzb()) {
            zzdc zzdcVar = this.zze;
            this.zzg = zzdcVar;
            zzdc zzdcVar2 = this.zzf;
            this.zzh = zzdcVar2;
            if (this.zzi) {
                this.zzj = new zzeu(zzdcVar.zzb, zzdcVar.zzc, this.zzc, this.zzd, zzdcVar2.zzb);
            } else {
                zzeu zzeuVar = this.zzj;
                if (zzeuVar != null) {
                    zzeuVar.zze();
                }
            }
        }
        this.zzm = zzde.zza;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzh() {
        this.zzc = 1.0f;
        this.zzd = 1.0f;
        zzdc zzdcVar = zzdc.zza;
        this.zze = zzdcVar;
        this.zzf = zzdcVar;
        this.zzg = zzdcVar;
        this.zzh = zzdcVar;
        ByteBuffer byteBuffer = zzde.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
        this.zzi = false;
        this.zzj = null;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    public final void zzi(float f) {
        if (this.zzc != f) {
            this.zzc = f;
            this.zzi = true;
        }
    }

    public final void zzj(float f) {
        if (this.zzd != f) {
            this.zzd = f;
            this.zzi = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    public final long zzk(long j) {
        if (this.zzo >= 1024) {
            long j2 = this.zzn;
            zzeu zzeuVar = this.zzj;
            Objects.requireNonNull(zzeuVar);
            long zza = j2 - zzeuVar.zza();
            int i = this.zzh.zzb;
            int i2 = this.zzg.zzb;
            return i == i2 ? zzamq.zzH(j, zza, this.zzo) : zzamq.zzH(j, zza * i, this.zzo * i2);
        }
        return (long) (this.zzc * j);
    }
}
