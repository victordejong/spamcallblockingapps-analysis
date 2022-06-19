package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
/* renamed from: com.google.android.gms.internal.ads.bl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bl.class */
public final class C6333bl extends AbstractC6963sk {

    /* renamed from: c */
    private MessageDigest f20499c;

    /* renamed from: d */
    private final int f20500d;

    /* renamed from: e */
    private final int f20501e;

    public C6333bl(int i) {
        int i2 = i >> 3;
        this.f20500d = (i & 7) > 0 ? i2 + 1 : i2;
        this.f20501e = i;
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6963sk
    /* renamed from: a */
    public final byte[] mo9147a(String str) {
        synchronized (this.f29553b) {
            MessageDigest m11001b = m11001b();
            this.f20499c = m11001b;
            if (m11001b == null) {
                return new byte[0];
            }
            m11001b.reset();
            this.f20499c.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] digest = this.f20499c.digest();
            int length = digest.length;
            int i = this.f20500d;
            int i2 = length;
            if (length > i) {
                i2 = i;
            }
            byte[] bArr = new byte[i2];
            System.arraycopy(digest, 0, bArr, 0, i2);
            if ((this.f20501e & 7) > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    int i5 = i3;
                    if (i4 > 0) {
                        i5 = i3 << 8;
                    }
                    i3 = i5 + (bArr[i4] & 255);
                }
                char c = i3 >>> (8 - (this.f20501e & 7));
                int i6 = this.f20500d;
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
