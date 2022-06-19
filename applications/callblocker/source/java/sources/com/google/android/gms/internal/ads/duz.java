package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duz.class */
public final class duz extends duo {

    /* renamed from: b */
    private MessageDigest f15841b;

    /* renamed from: c */
    private final int f15842c;

    /* renamed from: d */
    private final int f15843d;

    public duz(int i) {
        int i2 = i / 8;
        this.f15842c = i % 8 > 0 ? i2 + 1 : i2;
        this.f15843d = i;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // com.google.android.gms.internal.ads.duo
    /* renamed from: a */
    public final byte[] mo8518a(String str) {
        byte[] bArr;
        synchronized (this.f15818a) {
            this.f15841b = m8538a();
            if (this.f15841b == null) {
                bArr = new byte[0];
            } else {
                this.f15841b.reset();
                this.f15841b.update(str.getBytes(Charset.forName("UTF-8")));
                byte[] digest = this.f15841b.digest();
                bArr = new byte[digest.length > this.f15842c ? this.f15842c : digest.length];
                System.arraycopy(digest, 0, bArr, 0, bArr.length);
                if (this.f15843d % 8 > 0) {
                    int i = 0;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        int i3 = i;
                        if (i2 > 0) {
                            i3 = i << 8;
                        }
                        i = i3 + (bArr[i2] & 255);
                    }
                    char c = i >>> (8 - (this.f15843d % 8));
                    for (int i4 = this.f15842c - 1; i4 >= 0; i4--) {
                        bArr[i4] = (byte) (255 & c);
                        c >>>= '\b';
                    }
                }
            }
        }
        return bArr;
    }
}
