package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmz.class */
public final class zzmz implements zzlh {
    private zzlf zze;
    private zzlf zzf;
    private zzlf zzg;
    private zzlf zzh;
    private boolean zzi;
    private zzmy zzj;
    private ByteBuffer zzk;
    private ShortBuffer zzl;
    private ByteBuffer zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private float zzc = 1.0f;
    private float zzd = 1.0f;
    private int zzb = -1;

    public zzmz() {
        zzlf zzlfVar = zzlf.zza;
        this.zze = zzlfVar;
        this.zzf = zzlfVar;
        this.zzg = zzlfVar;
        this.zzh = zzlfVar;
        ByteBuffer byteBuffer = zzlh.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final zzlf zza(zzlf zzlfVar) throws zzlg {
        if (zzlfVar.zzd == 2) {
            int i = this.zzb;
            int i2 = i;
            if (i == -1) {
                i2 = zzlfVar.zzb;
            }
            this.zze = zzlfVar;
            zzlf zzlfVar2 = new zzlf(i2, zzlfVar.zzc, 2);
            this.zzf = zzlfVar2;
            this.zzi = true;
            return zzlfVar2;
        }
        throw new zzlg(zzlfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final ByteBuffer zzb() {
        int zza;
        zzmy zzmyVar = this.zzj;
        if (zzmyVar != null && (zza = zzmyVar.zza()) > 0) {
            if (this.zzk.capacity() < zza) {
                ByteBuffer order = ByteBuffer.allocateDirect(zza).order(ByteOrder.nativeOrder());
                this.zzk = order;
                this.zzl = order.asShortBuffer();
            } else {
                this.zzk.clear();
                this.zzl.clear();
            }
            zzmyVar.zzd(this.zzl);
            this.zzo += zza;
            this.zzk.limit(zza);
            this.zzm = this.zzk;
        }
        ByteBuffer byteBuffer = this.zzm;
        this.zzm = zzlh.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzc() {
        if (zzg()) {
            zzlf zzlfVar = this.zze;
            this.zzg = zzlfVar;
            zzlf zzlfVar2 = this.zzf;
            this.zzh = zzlfVar2;
            if (this.zzi) {
                this.zzj = new zzmy(zzlfVar.zzb, zzlfVar.zzc, this.zzc, this.zzd, zzlfVar2.zzb);
            } else {
                zzmy zzmyVar = this.zzj;
                if (zzmyVar != null) {
                    zzmyVar.zzc();
                }
            }
        }
        this.zzm = zzlh.zza;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzd() {
        zzmy zzmyVar = this.zzj;
        if (zzmyVar != null) {
            zzmyVar.zze();
        }
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zze(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        zzmy zzmyVar = this.zzj;
        Objects.requireNonNull(zzmyVar);
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.zzn += remaining;
        zzmyVar.zzf(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzf() {
        this.zzc = 1.0f;
        this.zzd = 1.0f;
        zzlf zzlfVar = zzlf.zza;
        this.zze = zzlfVar;
        this.zzf = zzlfVar;
        this.zzg = zzlfVar;
        this.zzh = zzlfVar;
        ByteBuffer byteBuffer = zzlh.zza;
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

    @Override // com.google.android.gms.internal.ads.zzlh
    public final boolean zzg() {
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

    @Override // com.google.android.gms.internal.ads.zzlh
    public final boolean zzh() {
        boolean z = true;
        if (this.zzp) {
            zzmy zzmyVar = this.zzj;
            if (zzmyVar != null) {
                if (zzmyVar.zza() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    public final long zzi(long j) {
        if (this.zzo >= 1024) {
            long j2 = this.zzn;
            zzmy zzmyVar = this.zzj;
            Objects.requireNonNull(zzmyVar);
            long zzb = j2 - zzmyVar.zzb();
            int i = this.zzh.zzb;
            int i2 = this.zzg.zzb;
            return i == i2 ? zzfn.zzt(j, zzb, this.zzo) : zzfn.zzt(j, zzb * i, this.zzo * i2);
        }
        return (long) (this.zzc * j);
    }

    public final void zzj(float f) {
        if (this.zzd != f) {
            this.zzd = f;
            this.zzi = true;
        }
    }

    public final void zzk(float f) {
        if (this.zzc != f) {
            this.zzc = f;
            this.zzi = true;
        }
    }
}
