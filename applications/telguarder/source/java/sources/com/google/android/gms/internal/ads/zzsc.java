package com.google.android.gms.internal.ads;

import com.pubmatic.sdk.common.POBCommonConstants;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsc.class */
public final class zzsc extends zzrv {
    private MessageDigest zzbuj;
    private final int zzbuk;
    private final int zzbul;

    public zzsc(int i) {
        int i2 = i / 8;
        this.zzbuk = i % 8 > 0 ? i2 + 1 : i2;
        this.zzbul = i;
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzrv
    public final byte[] zzbq(String str) {
        synchronized (this.mLock) {
            MessageDigest zzms = zzms();
            this.zzbuj = zzms;
            if (zzms == null) {
                return new byte[0];
            }
            zzms.reset();
            this.zzbuj.update(str.getBytes(Charset.forName(POBCommonConstants.URL_ENCODING)));
            byte[] digest = this.zzbuj.digest();
            int length = digest.length;
            int i = this.zzbuk;
            if (length <= i) {
                i = digest.length;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(digest, 0, bArr, 0, i);
            if (this.zzbul % 8 > 0) {
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    int i4 = i2;
                    if (i3 > 0) {
                        i4 = i2 << 8;
                    }
                    i2 = i4 + (bArr[i3] & 255);
                }
                char c = i2 >>> (8 - (this.zzbul % 8));
                for (int i5 = this.zzbuk - 1; i5 >= 0; i5--) {
                    bArr[i5] = (byte) (255 & c);
                    c >>>= '\b';
                }
            }
            return bArr;
        }
    }
}
