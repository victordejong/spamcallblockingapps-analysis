package com.google.android.exoplayer2.decoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/decoder/CryptoInfo.class */
public final class CryptoInfo {
    public int clearBlocks;
    public int encryptedBlocks;
    private final MediaCodec.CryptoInfo frameworkCryptoInfo;

    /* renamed from: iv */
    public byte[] f3599iv;
    public byte[] key;
    public int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    public int numSubSamples;
    private final PatternHolderV24 patternHolder;

    @TargetApi(24)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24.class */
    public static final class PatternHolderV24 {
        private final MediaCodec.CryptoInfo frameworkCryptoInfo;
        private final MediaCodec.CryptoInfo.Pattern pattern;

        private PatternHolderV24(MediaCodec.CryptoInfo cryptoInfo) {
            this.frameworkCryptoInfo = cryptoInfo;
            this.pattern = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        public void set(int i, int i2) {
            this.pattern.set(i, i2);
            this.frameworkCryptoInfo.setPattern(this.pattern);
        }
    }

    public CryptoInfo() {
        int i = Util.SDK_INT;
        PatternHolderV24 patternHolderV24 = null;
        MediaCodec.CryptoInfo newFrameworkCryptoInfoV16 = i >= 16 ? newFrameworkCryptoInfoV16() : null;
        this.frameworkCryptoInfo = newFrameworkCryptoInfoV16;
        this.patternHolder = i >= 24 ? new PatternHolderV24(newFrameworkCryptoInfoV16) : patternHolderV24;
    }

    @TargetApi(16)
    private MediaCodec.CryptoInfo newFrameworkCryptoInfoV16() {
        return new MediaCodec.CryptoInfo();
    }

    @TargetApi(16)
    private void updateFrameworkCryptoInfoV16() {
        MediaCodec.CryptoInfo cryptoInfo = this.frameworkCryptoInfo;
        cryptoInfo.numSubSamples = this.numSubSamples;
        cryptoInfo.numBytesOfClearData = this.numBytesOfClearData;
        cryptoInfo.numBytesOfEncryptedData = this.numBytesOfEncryptedData;
        cryptoInfo.key = this.key;
        cryptoInfo.iv = this.f3599iv;
        cryptoInfo.mode = this.mode;
        if (Util.SDK_INT >= 24) {
            this.patternHolder.set(this.encryptedBlocks, this.clearBlocks);
        }
    }

    @TargetApi(16)
    public MediaCodec.CryptoInfo getFrameworkCryptoInfoV16() {
        return this.frameworkCryptoInfo;
    }

    public void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.f3599iv = bArr2;
        this.mode = i2;
        this.encryptedBlocks = i3;
        this.clearBlocks = i4;
        if (Util.SDK_INT >= 16) {
            updateFrameworkCryptoInfoV16();
        }
    }
}
