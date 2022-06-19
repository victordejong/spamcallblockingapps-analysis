package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzac.class */
public final class zzac {
    public byte[] zza;
    public byte[] zzb;
    public int[] zzc;
    public int[] zzd;
    private final MediaCodec.CryptoInfo zze;
    private final zzab zzf;

    public zzac() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.zze = cryptoInfo;
        this.zzf = zzamq.zza >= 24 ? new zzab(cryptoInfo, null) : null;
    }

    public final void zza(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zzb = bArr;
        this.zza = bArr2;
        MediaCodec.CryptoInfo cryptoInfo = this.zze;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (zzamq.zza >= 24) {
            zzab zzabVar = this.zzf;
            Objects.requireNonNull(zzabVar);
            zzab.zza(zzabVar, i3, i4);
        }
    }

    public final MediaCodec.CryptoInfo zzb() {
        return this.zze;
    }

    public final void zzc(int i) {
        if (i == 0) {
            return;
        }
        if (this.zzc == null) {
            int[] iArr = new int[1];
            this.zzc = iArr;
            this.zze.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.zzc;
        iArr2[0] = iArr2[0] + i;
    }
}
