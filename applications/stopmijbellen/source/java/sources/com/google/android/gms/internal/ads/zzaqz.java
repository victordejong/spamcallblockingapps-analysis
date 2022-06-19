package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqz.class */
public final class zzaqz {
    public byte[] zza;
    public byte[] zzb;
    public int zzc;
    public int[] zzd;
    public int[] zze;
    public int zzf;
    private final MediaCodec.CryptoInfo zzg;
    private final zzaqy zzh;

    public zzaqz() {
        int i = zzaxb.zza;
        zzaqy zzaqyVar = null;
        MediaCodec.CryptoInfo cryptoInfo = i >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.zzg = cryptoInfo;
        this.zzh = i >= 24 ? new zzaqy(cryptoInfo, null) : zzaqyVar;
    }

    @TargetApi(16)
    public final MediaCodec.CryptoInfo zza() {
        return this.zzg;
    }

    public final void zzb(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.zzf = i;
        this.zzd = iArr;
        this.zze = iArr2;
        this.zzb = bArr;
        this.zza = bArr2;
        this.zzc = 1;
        int i3 = zzaxb.zza;
        if (i3 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.zzg;
            cryptoInfo.numSubSamples = i;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = 1;
            if (i3 < 24) {
                return;
            }
            zzaqy.zza(this.zzh, 0, 0);
        }
    }
}
