package androidx.media2.exoplayer.external.decoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/decoder/CryptoInfo.class */
public final class CryptoInfo {
    public int clearBlocks;
    public int encryptedBlocks;
    public final MediaCodec.CryptoInfo frameworkCryptoInfo = new MediaCodec.CryptoInfo();

    /* renamed from: iv */
    public byte[] f82iv;
    public byte[] key;
    public int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    public int numSubSamples;
    public final PatternHolderV24 patternHolder;

    @TargetApi(24)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/decoder/CryptoInfo$PatternHolderV24.class */
    public static final class PatternHolderV24 {
        public final MediaCodec.CryptoInfo frameworkCryptoInfo;
        public final MediaCodec.CryptoInfo.Pattern pattern;

        public PatternHolderV24(MediaCodec.CryptoInfo cryptoInfo) {
            this.frameworkCryptoInfo = cryptoInfo;
            this.pattern = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void set(int i, int i2) {
            this.pattern.set(i, i2);
            this.frameworkCryptoInfo.setPattern(this.pattern);
        }
    }

    public CryptoInfo() {
        this.patternHolder = Util.SDK_INT >= 24 ? new PatternHolderV24(this.frameworkCryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo getFrameworkCryptoInfo() {
        return this.frameworkCryptoInfo;
    }

    @Deprecated
    public MediaCodec.CryptoInfo getFrameworkCryptoInfoV16() {
        return getFrameworkCryptoInfo();
    }

    public void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.f82iv = bArr2;
        this.mode = i2;
        this.encryptedBlocks = i3;
        this.clearBlocks = i4;
        MediaCodec.CryptoInfo cryptoInfo = this.frameworkCryptoInfo;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (Util.SDK_INT >= 24) {
            this.patternHolder.set(i3, i4);
        }
    }
}
