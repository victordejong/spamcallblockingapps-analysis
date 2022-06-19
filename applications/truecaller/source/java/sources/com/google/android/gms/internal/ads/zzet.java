package com.google.android.gms.internal.ads;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzet.class */
public final class zzet extends zzeb {
    private int zzd;
    private boolean zze;
    private byte[] zzf;
    private byte[] zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;
    private long zzl;

    public zzet() {
        byte[] bArr = zzamq.zzf;
        this.zzf = bArr;
        this.zzg = bArr;
    }

    private final void zzq(byte[] bArr, int i) {
        zzi(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.zzk = true;
        }
    }

    private final void zzr(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.zzj);
        int i2 = this.zzj - min;
        System.arraycopy(bArr, i - i2, this.zzg, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.zzg, i2, min);
    }

    private final int zzs(long j) {
        return (int) ((j * this.zzb.zzb) / 1000000);
    }

    private final int zzt(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > 1024) {
                int i = this.zzd;
                return (position / i) * i;
            }
        }
        return byteBuffer.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzeb, com.google.android.gms.internal.ads.zzde
    public final boolean zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzc(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !zzj()) {
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
                    zzi(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.zzk = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i != 1) {
                int limit3 = byteBuffer.limit();
                int zzt = zzt(byteBuffer);
                byteBuffer.limit(zzt);
                this.zzl += byteBuffer.remaining() / this.zzd;
                zzr(byteBuffer, this.zzg, this.zzj);
                if (zzt < limit3) {
                    zzq(this.zzg, this.zzj);
                    this.zzh = 0;
                    byteBuffer.limit(limit3);
                }
            } else {
                int limit4 = byteBuffer.limit();
                int zzt2 = zzt(byteBuffer);
                int position2 = zzt2 - byteBuffer.position();
                byte[] bArr = this.zzf;
                int length = bArr.length;
                int i4 = this.zzi;
                int i5 = length - i4;
                if (zzt2 >= limit4 || position2 >= i5) {
                    int min = Math.min(position2, i5);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.zzf, this.zzi, min);
                    int i6 = this.zzi + min;
                    this.zzi = i6;
                    byte[] bArr2 = this.zzf;
                    if (i6 == bArr2.length) {
                        if (this.zzk) {
                            zzq(bArr2, this.zzj);
                            long j = this.zzl;
                            i6 = this.zzi;
                            int i7 = this.zzj;
                            this.zzl = j + ((i6 - (i7 + i7)) / this.zzd);
                        } else {
                            this.zzl += (i6 - this.zzj) / this.zzd;
                        }
                        zzr(byteBuffer, this.zzf, i6);
                        this.zzi = 0;
                        this.zzh = 2;
                    }
                    byteBuffer.limit(limit4);
                } else {
                    zzq(bArr, i4);
                    this.zzi = 0;
                    this.zzh = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeb
    public final zzdc zzk(zzdc zzdcVar) throws zzdd {
        if (zzdcVar.zzd == 2) {
            return this.zze ? zzdcVar : zzdc.zza;
        }
        throw new zzdd(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeb
    public final void zzl() {
        int i = this.zzi;
        if (i > 0) {
            zzq(this.zzf, i);
        }
        if (!this.zzk) {
            this.zzl += this.zzj / this.zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeb
    public final void zzm() {
        if (this.zze) {
            this.zzd = this.zzb.zze;
            int zzs = zzs(150000L) * this.zzd;
            if (this.zzf.length != zzs) {
                this.zzf = new byte[zzs];
            }
            int zzs2 = zzs(DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL) * this.zzd;
            this.zzj = zzs2;
            if (this.zzg.length != zzs2) {
                this.zzg = new byte[zzs2];
            }
        }
        this.zzh = 0;
        this.zzl = 0L;
        this.zzi = 0;
        this.zzk = false;
    }

    @Override // com.google.android.gms.internal.ads.zzeb
    public final void zzn() {
        this.zze = false;
        this.zzj = 0;
        byte[] bArr = zzamq.zzf;
        this.zzf = bArr;
        this.zzg = bArr;
    }

    public final void zzo(boolean z) {
        this.zze = z;
    }

    public final long zzp() {
        return this.zzl;
    }
}
