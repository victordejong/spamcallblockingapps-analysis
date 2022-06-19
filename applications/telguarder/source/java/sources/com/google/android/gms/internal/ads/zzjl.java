package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjl.class */
public final class zzjl {

    /* renamed from: iv */
    public byte[] f127iv;
    private byte[] key;
    private int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    private int numSubSamples;
    private int zzanw;
    private int zzanx;
    private final MediaCodec.CryptoInfo zzany;
    private final zzjn zzanz;

    public zzjl() {
        zzjn zzjnVar = null;
        MediaCodec.CryptoInfo cryptoInfo = zzpt.SDK_INT >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.zzany = cryptoInfo;
        this.zzanz = zzpt.SDK_INT >= 24 ? new zzjn(cryptoInfo) : zzjnVar;
    }

    public final void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.f127iv = bArr2;
        this.mode = i2;
        this.zzanw = 0;
        this.zzanx = 0;
        if (zzpt.SDK_INT >= 16) {
            this.zzany.numSubSamples = this.numSubSamples;
            this.zzany.numBytesOfClearData = this.numBytesOfClearData;
            this.zzany.numBytesOfEncryptedData = this.numBytesOfEncryptedData;
            this.zzany.key = this.key;
            this.zzany.iv = this.f127iv;
            this.zzany.mode = this.mode;
            if (zzpt.SDK_INT < 24) {
                return;
            }
            this.zzanz.set(0, 0);
        }
    }

    public final MediaCodec.CryptoInfo zzgm() {
        return this.zzany;
    }
}
