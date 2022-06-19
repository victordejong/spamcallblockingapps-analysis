package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxn.class */
public final class zzaxn extends zzaxe {
    private MessageDigest zzb;
    private final int zzc;
    private final int zzd;

    public zzaxn(int i) {
        int i2 = i >> 3;
        this.zzc = (i & 7) > 0 ? i2 + 1 : i2;
        this.zzd = i;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaxe
    public final byte[] zza(String str) {
        synchronized (this.zza) {
            MessageDigest zzb = zzb();
            this.zzb = zzb;
            if (zzb == null) {
                return new byte[0];
            }
            zzb.reset();
            this.zzb.update(str.getBytes(Charset.forName(StringConstant.UTF8)));
            byte[] digest = this.zzb.digest();
            int length = digest.length;
            int i = this.zzc;
            int i2 = length;
            if (length > i) {
                i2 = i;
            }
            byte[] bArr = new byte[i2];
            System.arraycopy(digest, 0, bArr, 0, i2);
            if ((this.zzd & 7) > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    int i5 = i3;
                    if (i4 > 0) {
                        i5 = i3 << 8;
                    }
                    i3 = i5 + (bArr[i4] & 255);
                }
                char c = i3 >>> (8 - (this.zzd & 7));
                int i6 = this.zzc;
                while (true) {
                    i6--;
                    if (i6 < 0) {
                        break;
                    }
                    bArr[i6] = (byte) (255 & c);
                    c >>>= '\b';
                }
            }
            return bArr;
        }
    }
}
