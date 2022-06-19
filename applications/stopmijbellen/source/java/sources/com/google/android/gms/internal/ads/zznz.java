package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznz.class */
final class zznz extends zzda {
    private long zzf;
    private int zzg;
    private int zzh = 32;

    public zznz() {
        super(2, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzda, com.google.android.gms.internal.ads.zzcu
    public final void zzb() {
        super.zzb();
        this.zzg = 0;
    }

    public final int zzl() {
        return this.zzg;
    }

    public final long zzm() {
        return this.zzf;
    }

    public final void zzn(int i) {
        this.zzh = i;
    }

    public final boolean zzo(zzda zzdaVar) {
        ByteBuffer byteBuffer;
        zzdy.zzd(!zzdaVar.zzd(1073741824));
        zzdy.zzd(!zzdaVar.zzd(268435456));
        zzdy.zzd(!zzdaVar.zzd(4));
        if (zzp()) {
            if (this.zzg >= this.zzh || zzdaVar.zzd(Integer.MIN_VALUE) != zzd(Integer.MIN_VALUE)) {
                return false;
            }
            ByteBuffer byteBuffer2 = zzdaVar.zzb;
            if (byteBuffer2 != null && (byteBuffer = this.zzb) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i = this.zzg;
        this.zzg = i + 1;
        if (i == 0) {
            this.zzd = zzdaVar.zzd;
            if (zzdaVar.zzd(1)) {
                zzc(1);
            }
        }
        if (zzdaVar.zzd(Integer.MIN_VALUE)) {
            zzc(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer3 = zzdaVar.zzb;
        if (byteBuffer3 != null) {
            zzi(byteBuffer3.remaining());
            this.zzb.put(byteBuffer3);
        }
        this.zzf = zzdaVar.zzd;
        return true;
    }

    public final boolean zzp() {
        return this.zzg > 0;
    }
}
