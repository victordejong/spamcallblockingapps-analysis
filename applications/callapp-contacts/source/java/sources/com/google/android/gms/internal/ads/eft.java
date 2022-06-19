package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eft.class */
public final class eft extends efh {

    /* renamed from: b */
    private MessageDigest f48983b;

    /* renamed from: c */
    private final int f48984c;

    /* renamed from: d */
    private final int f48985d;

    public eft(int i) {
        int i2 = i / 8;
        this.f48984c = i % 8 > 0 ? i2 + 1 : i2;
        this.f48985d = i;
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // com.google.android.gms.internal.ads.efh
    /* renamed from: a */
    public final byte[] mo15082a(String str) {
        synchronized (this.f48957a) {
            MessageDigest m15095a = m15095a();
            this.f48983b = m15095a;
            if (m15095a == null) {
                return new byte[0];
            }
            m15095a.reset();
            this.f48983b.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] digest = this.f48983b.digest();
            int length = digest.length;
            int i = this.f48984c;
            if (length <= i) {
                i = digest.length;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(digest, 0, bArr, 0, i);
            if (this.f48985d % 8 > 0) {
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    int i4 = i2;
                    if (i3 > 0) {
                        i4 = i2 << 8;
                    }
                    i2 = i4 + (bArr[i3] & 255);
                }
                char c = i2 >>> (8 - (this.f48985d % 8));
                for (int i5 = this.f48984c - 1; i5 >= 0; i5--) {
                    bArr[i5] = (byte) (255 & c);
                    c >>>= '\b';
                }
            }
            return bArr;
        }
    }
}
