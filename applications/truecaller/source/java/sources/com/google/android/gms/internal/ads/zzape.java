package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzape.class */
public final class zzape {
    public byte[] zza;
    public byte[] zzb;
    public int zzc;
    public int[] zzd;
    public int[] zze;
    public int zzf;
    private final MediaCodec.CryptoInfo zzg;
    private final zzapd zzh;

    public zzape() {
        int i = zzave.zza;
        zzapd zzapdVar = null;
        MediaCodec.CryptoInfo cryptoInfo = i >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.zzg = cryptoInfo;
        this.zzh = i >= 24 ? new zzapd(cryptoInfo, null) : zzapdVar;
    }

    public final void zza(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.zzf = i;
        this.zzd = iArr;
        this.zze = iArr2;
        this.zzb = bArr;
        this.zza = bArr2;
        this.zzc = 1;
        int i3 = zzave.zza;
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
            zzapd.zza(this.zzh, 0, 0);
        }
    }

    public final MediaCodec.CryptoInfo zzb() {
        return this.zzg;
    }
}
