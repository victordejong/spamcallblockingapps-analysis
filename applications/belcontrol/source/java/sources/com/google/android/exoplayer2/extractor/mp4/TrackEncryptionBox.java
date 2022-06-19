package com.google.android.exoplayer2.extractor.mp4;

import android.util.Log;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox.class */
public final class TrackEncryptionBox {
    private static final String TAG = "TrackEncryptionBox";
    public final TrackOutput.CryptoData cryptoData;
    public final byte[] defaultInitializationVector;
    public final int initializationVectorSize;
    public final boolean isEncrypted;
    public final String schemeType;

    public TrackEncryptionBox(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        Assertions.checkArgument((bArr2 != null ? false : true) ^ (i == 0));
        this.isEncrypted = z;
        this.schemeType = str;
        this.initializationVectorSize = i;
        this.defaultInitializationVector = bArr2;
        this.cryptoData = new TrackOutput.CryptoData(schemeToCryptoMode(str), bArr, i2, i3);
    }

    private static int schemeToCryptoMode(String str) {
        if (str == null) {
            return 1;
        }
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C0515C.CENC_TYPE_cbc1)) {
                    z = false;
                    break;
                }
                break;
            case 3046671:
                if (str.equals(C0515C.CENC_TYPE_cbcs)) {
                    z = true;
                    break;
                }
                break;
            case 3049879:
                if (str.equals(C0515C.CENC_TYPE_cenc)) {
                    z = true;
                    break;
                }
                break;
            case 3049895:
                if (str.equals(C0515C.CENC_TYPE_cens)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return 2;
            case true:
            case true:
                return 1;
            default:
                Log.w(TAG, "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                return 1;
        }
    }
}
