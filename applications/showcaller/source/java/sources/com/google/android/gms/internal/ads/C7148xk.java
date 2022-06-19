package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* renamed from: com.google.android.gms.internal.ads.xk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xk.class */
public final class C7148xk extends AbstractC6963sk {

    /* renamed from: c */
    private MessageDigest f32092c;

    @Override // com.google.android.gms.internal.ads.AbstractC6963sk
    /* renamed from: a */
    public final byte[] mo9147a(String str) {
        byte[] bArr;
        String[] split = str.split(" ");
        int length = split.length;
        if (length != 1) {
            if (length >= 5) {
                byte[] bArr2 = new byte[length];
                int i = 0;
                while (true) {
                    bArr = bArr2;
                    if (i >= split.length) {
                        break;
                    }
                    int m9572a = C7111wk.m9572a(split[i]);
                    bArr2[i] = (byte) ((m9572a >> 24) ^ (((m9572a & 255) ^ ((m9572a >> 8) & 255)) ^ ((m9572a >> 16) & 255)));
                    i++;
                }
            } else {
                byte[] bArr3 = new byte[length + length];
                int i2 = 0;
                while (true) {
                    bArr = bArr3;
                    if (i2 >= split.length) {
                        break;
                    }
                    int m9572a2 = C7111wk.m9572a(split[i2]);
                    int i3 = (m9572a2 >> 16) ^ ((char) m9572a2);
                    byte[] bArr4 = {(byte) i3, (byte) (i3 >> 8)};
                    int i4 = i2 + i2;
                    bArr3[i4] = bArr4[0];
                    bArr3[i4 + 1] = bArr4[1];
                    i2++;
                }
            }
        } else {
            int m9572a3 = C7111wk.m9572a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(m9572a3);
            bArr = allocate.array();
        }
        this.f32092c = m11001b();
        synchronized (this.f29553b) {
            MessageDigest messageDigest = this.f32092c;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.f32092c.update(bArr);
            byte[] digest = this.f32092c.digest();
            int length2 = digest.length;
            if (length2 > 4) {
                length2 = 4;
            }
            byte[] bArr5 = new byte[length2];
            System.arraycopy(digest, 0, bArr5, 0, length2);
            return bArr5;
        }
    }
}
