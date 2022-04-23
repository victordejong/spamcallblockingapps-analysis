package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efp.class */
public final class efp extends efh {

    /* renamed from: b  reason: collision with root package name */
    private MessageDigest f27791b;

    @Override // com.google.android.gms.internal.ads.efh
    public final byte[] a(String str) {
        byte[] bArr;
        String[] split = str.split(StringUtils.SPACE);
        int i = 4;
        if (split.length != 1) {
            if (split.length >= 5) {
                byte[] bArr2 = new byte[split.length];
                int i2 = 0;
                while (true) {
                    bArr = bArr2;
                    if (i2 >= split.length) {
                        break;
                    }
                    int a2 = efm.a(split[i2]);
                    bArr2[i2] = (byte) ((a2 >> 24) ^ (((a2 & 255) ^ ((a2 >> 8) & 255)) ^ ((a2 >> 16) & 255)));
                    i2++;
                }
            } else {
                byte[] bArr3 = new byte[split.length << 1];
                int i3 = 0;
                while (true) {
                    bArr = bArr3;
                    if (i3 >= split.length) {
                        break;
                    }
                    int a3 = efm.a(split[i3]);
                    int i4 = (a3 >> 16) ^ (65535 & a3);
                    byte[] bArr4 = {(byte) i4, (byte) (i4 >> 8)};
                    int i5 = i3 << 1;
                    bArr3[i5] = bArr4[0];
                    bArr3[i5 + 1] = bArr4[1];
                    i3++;
                }
            }
        } else {
            int a4 = efm.a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(a4);
            bArr = allocate.array();
        }
        this.f27791b = a();
        synchronized (this.f27777a) {
            MessageDigest messageDigest = this.f27791b;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.f27791b.update(bArr);
            byte[] digest = this.f27791b.digest();
            if (digest.length <= 4) {
                i = digest.length;
            }
            byte[] bArr5 = new byte[i];
            System.arraycopy(digest, 0, bArr5, 0, i);
            return bArr5;
        }
    }
}
