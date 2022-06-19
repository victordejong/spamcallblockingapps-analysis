package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaou.class */
public final class zzaou implements zzaob {
    private int zzb = -1;
    private int zzc = -1;
    private int[] zzd;
    private boolean zze;
    private int[] zzf;
    private ByteBuffer zzg;
    private ByteBuffer zzh;
    private boolean zzi;

    public zzaou() {
        ByteBuffer byteBuffer = zzaob.zza;
        this.zzg = byteBuffer;
        this.zzh = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zza(int i, int i2, int i3) throws zzaoa {
        boolean z = !Arrays.equals(this.zzd, this.zzf);
        int[] iArr = this.zzd;
        this.zzf = iArr;
        if (iArr == null) {
            this.zze = false;
            return z;
        } else if (i3 != 2) {
            throw new zzaoa(i, i2, i3);
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
                    throw new zzaoa(i, i2, 2);
                }
                this.zze = (i5 != i4) | this.zze;
                i4++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final int zzc() {
        int[] iArr = this.zzf;
        return iArr == null ? this.zzb : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final int zzd() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zze(ByteBuffer byteBuffer) {
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

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzf() {
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final ByteBuffer zzg() {
        ByteBuffer byteBuffer = this.zzh;
        this.zzh = zzaob.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final boolean zzh() {
        return this.zzi && this.zzh == zzaob.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzi() {
        this.zzh = zzaob.zza;
        this.zzi = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzj() {
        zzi();
        this.zzg = zzaob.zza;
        this.zzb = -1;
        this.zzc = -1;
        this.zzf = null;
        this.zze = false;
    }

    public final void zzk(int[] iArr) {
        this.zzd = iArr;
    }
}
