package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efp.class */
public final class efp extends efh {

    /* renamed from: b */
    private MessageDigest f48972b;

    @Override // com.google.android.gms.internal.ads.efh
    /* renamed from: a */
    public final byte[] mo15082a(String str) {
        byte[] bArr;
        String[] split = str.split(StringUtils.SPACE);
        if (split.length != 1) {
            if (split.length >= 5) {
                byte[] bArr2 = new byte[split.length];
                int i = 0;
                while (true) {
                    bArr = bArr2;
                    if (i >= split.length) {
                        break;
                    }
                    int m15092a = efm.m15092a(split[i]);
                    bArr2[i] = (byte) ((m15092a >> 24) ^ (((m15092a & 255) ^ ((m15092a >> 8) & 255)) ^ ((m15092a >> 16) & 255)));
                    i++;
                }
            } else {
                byte[] bArr3 = new byte[split.length << 1];
                int i2 = 0;
                while (true) {
                    bArr = bArr3;
                    if (i2 >= split.length) {
                        break;
                    }
                    int m15092a2 = efm.m15092a(split[i2]);
                    int i3 = (m15092a2 >> 16) ^ (65535 & m15092a2);
                    byte[] bArr4 = {(byte) i3, (byte) (i3 >> 8)};
                    int i4 = i2 << 1;
                    bArr3[i4] = bArr4[0];
                    bArr3[i4 + 1] = bArr4[1];
                    i2++;
                }
            }
        } else {
            int m15092a3 = efm.m15092a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(m15092a3);
            bArr = allocate.array();
        }
        this.f48972b = m15095a();
        synchronized (this.f48957a) {
            MessageDigest messageDigest = this.f48972b;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.f48972b.update(bArr);
            byte[] digest = this.f48972b.digest();
            int length = digest.length > 4 ? 4 : digest.length;
            byte[] bArr5 = new byte[length];
            System.arraycopy(digest, 0, bArr5, 0, length);
            return bArr5;
        }
    }
}
