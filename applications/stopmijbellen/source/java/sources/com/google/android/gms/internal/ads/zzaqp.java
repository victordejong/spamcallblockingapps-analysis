package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqp.class */
final class zzaqp implements zzapv {
    private int zzb = -1;
    private int zzc = -1;
    private int[] zzd;
    private boolean zze;
    private int[] zzf;
    private ByteBuffer zzg;
    private ByteBuffer zzh;
    private boolean zzi;

    public zzaqp() {
        ByteBuffer byteBuffer = zzapv.zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final int zza() {
        int[] iArr = this.zzf;
        return iArr == null ? this.zzb : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final int zzb() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final ByteBuffer zzc() {
        ByteBuffer byteBuffer = this.zzh;
        this.zzh = zzapv.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzd() {
        this.zzh = zzapv.zza;
        this.zzi = false;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zze() {
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzf(ByteBuffer byteBuffer) {
        int[] iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = this.zzb;
        int length = ((limit - position) / (i + i)) * this.zzf.length;
        int i2 = length + length;
        if (this.zzg.capacity() < i2) {
            this.zzg = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.zzg.clear();
        }
        while (position < limit) {
            for (int i3 : this.zzf) {
                this.zzg.putShort(byteBuffer.getShort(i3 + i3 + position));
            }
            int i4 = this.zzb;
            position += i4 + i4;
        }
        byteBuffer.position(limit);
        this.zzg.flip();
        this.zzh = this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final void zzg() {
        zzd();
        this.zzg = zzapv.zza;
        this.zzb = -1;
        this.zzc = -1;
        this.zzf = null;
        this.zze = false;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzh(int i, int i2, int i3) throws zzapu {
        boolean z = !Arrays.equals(this.zzd, this.zzf);
        int[] iArr = this.zzd;
        this.zzf = iArr;
        if (iArr == null) {
            this.zze = false;
            return z;
        } else if (i3 != 2) {
            throw new zzapu(i, i2, i3);
        } else {
            if (!z && this.zzc == i && this.zzb == i2) {
                return false;
            }
            this.zzc = i;
            this.zzb = i2;
            this.zze = i2 != iArr.length;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.zzf;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 >= i2) {
                    throw new zzapu(i, i2, 2);
                }
                this.zze = (i5 != i4) | this.zze;
                i4++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzi() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzapv
    public final boolean zzj() {
        return this.zzi && this.zzh == zzapv.zza;
    }

    public final void zzk(int[] iArr) {
        this.zzd = iArr;
    }
}
