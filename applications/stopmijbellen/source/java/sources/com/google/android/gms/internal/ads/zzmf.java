package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmf.class */
final class zzmf extends zzme {
    private int[] zzd;
    private int[] zze;

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zze(ByteBuffer byteBuffer) {
        int[] iArr = this.zze;
        Objects.requireNonNull(iArr);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer zzj = zzj(((limit - position) / this.zzb.zze) * this.zzc.zze);
        while (position < limit) {
            for (int i : iArr) {
                zzj.putShort(byteBuffer.getShort(i + i + position));
            }
            position += this.zzb.zze;
        }
        byteBuffer.position(limit);
        zzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final zzlf zzi(zzlf zzlfVar) throws zzlg {
        int[] iArr = this.zzd;
        if (iArr == null) {
            return zzlf.zza;
        }
        if (zzlfVar.zzd != 2) {
            throw new zzlg(zzlfVar);
        }
        boolean z = zzlfVar.zzc != iArr.length;
        int i = 0;
        while (true) {
            int length = iArr.length;
            if (i >= length) {
                return z ? new zzlf(zzlfVar.zzb, length, 2) : zzlf.zza;
            }
            int i2 = iArr[i];
            if (i2 >= zzlfVar.zzc) {
                throw new zzlg(zzlfVar);
            }
            z |= i2 != i;
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzk() {
        this.zze = this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzm() {
        this.zze = null;
        this.zzd = null;
    }

    public final void zzo(int[] iArr) {
        this.zzd = iArr;
    }
}
