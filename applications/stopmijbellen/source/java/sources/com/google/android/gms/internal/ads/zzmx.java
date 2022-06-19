package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmx.class */
public final class zzmx extends zzme {
    private int zzd;
    private boolean zze;
    private byte[] zzf;
    private byte[] zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;
    private long zzl;

    public zzmx() {
        byte[] bArr = zzfn.zzf;
        this.zzf = bArr;
        this.zzg = bArr;
    }

    private final int zzq(long j) {
        return (int) ((j * this.zzb.zzb) / 1000000);
    }

    private final int zzr(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > 1024) {
                int i = this.zzd;
                return (position / i) * i;
            }
        }
        return byteBuffer.limit();
    }

    private final void zzs(byte[] bArr, int i) {
        zzj(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.zzk = true;
        }
    }

    private final void zzt(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.zzj);
        int i2 = this.zzj - min;
        System.arraycopy(bArr, i - i2, this.zzg, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.zzg, i2, min);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zze(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !zzn()) {
            int i = this.zzh;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.zzf.length));
                int limit2 = byteBuffer.limit();
                while (true) {
                    int i2 = limit2 - 2;
                    if (i2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    }
                    limit2 = i2;
                    if (Math.abs((int) byteBuffer.getShort(i2)) > 1024) {
                        int i3 = this.zzd;
                        position = ((i2 / i3) * i3) + i3;
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.zzh = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    zzj(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.zzk = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i != 1) {
                int limit3 = byteBuffer.limit();
                int zzr = zzr(byteBuffer);
                byteBuffer.limit(zzr);
                this.zzl += byteBuffer.remaining() / this.zzd;
                zzt(byteBuffer, this.zzg, this.zzj);
                if (zzr < limit3) {
                    zzs(this.zzg, this.zzj);
                    this.zzh = 0;
                    byteBuffer.limit(limit3);
                }
            } else {
                int limit4 = byteBuffer.limit();
                int zzr2 = zzr(byteBuffer);
                int position2 = zzr2 - byteBuffer.position();
                byte[] bArr = this.zzf;
                int length = bArr.length;
                int i4 = this.zzi;
                int i5 = length - i4;
                if (zzr2 >= limit4 || position2 >= i5) {
                    int min = Math.min(position2, i5);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.zzf, this.zzi, min);
                    int i6 = this.zzi + min;
                    this.zzi = i6;
                    byte[] bArr2 = this.zzf;
                    if (i6 == bArr2.length) {
                        if (this.zzk) {
                            zzs(bArr2, this.zzj);
                            long j = this.zzl;
                            i6 = this.zzi;
                            int i7 = this.zzj;
                            this.zzl = j + ((i6 - (i7 + i7)) / this.zzd);
                        } else {
                            this.zzl += (i6 - this.zzj) / this.zzd;
                        }
                        zzt(byteBuffer, this.zzf, i6);
                        this.zzi = 0;
                        this.zzh = 2;
                    }
                    byteBuffer.limit(limit4);
                } else {
                    zzs(bArr, i4);
                    this.zzi = 0;
                    this.zzh = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzme, com.google.android.gms.internal.ads.zzlh
    public final boolean zzg() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final zzlf zzi(zzlf zzlfVar) throws zzlg {
        if (zzlfVar.zzd == 2) {
            return this.zze ? zzlfVar : zzlf.zza;
        }
        throw new zzlg(zzlfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzk() {
        if (this.zze) {
            this.zzd = this.zzb.zze;
            int zzq = zzq(150000L) * this.zzd;
            if (this.zzf.length != zzq) {
                this.zzf = new byte[zzq];
            }
            int zzq2 = zzq(20000L) * this.zzd;
            this.zzj = zzq2;
            if (this.zzg.length != zzq2) {
                this.zzg = new byte[zzq2];
            }
        }
        this.zzh = 0;
        this.zzl = 0L;
        this.zzi = 0;
        this.zzk = false;
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzl() {
        int i = this.zzi;
        if (i > 0) {
            zzs(this.zzf, i);
        }
        if (!this.zzk) {
            this.zzl += this.zzj / this.zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzm() {
        this.zze = false;
        this.zzj = 0;
        byte[] bArr = zzfn.zzf;
        this.zzf = bArr;
        this.zzg = bArr;
    }

    public final long zzo() {
        return this.zzl;
    }

    public final void zzp(boolean z) {
        this.zze = z;
    }
}
