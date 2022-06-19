package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duv.class */
public final class duv extends duo {

    /* renamed from: b */
    private MessageDigest f15830b;

    @Override // com.google.android.gms.internal.ads.duo
    /* renamed from: a */
    public final byte[] mo8518a(String str) {
        byte[] bArr;
        byte[] bArr2;
        int i = 0;
        String[] split = str.split(" ");
        if (split.length == 1) {
            int m8530a = dus.m8530a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(m8530a);
            bArr = allocate.array();
        } else if (split.length >= 5) {
            byte[] bArr3 = new byte[split.length];
            while (true) {
                bArr = bArr3;
                if (i >= split.length) {
                    break;
                }
                int m8530a2 = dus.m8530a(split[i]);
                bArr3[i] = (byte) ((m8530a2 >> 24) ^ (((m8530a2 & 255) ^ ((m8530a2 >> 8) & 255)) ^ ((m8530a2 >> 16) & 255)));
                i++;
            }
        } else {
            bArr = new byte[split.length << 1];
            for (int i2 = 0; i2 < split.length; i2++) {
                int m8530a3 = dus.m8530a(split[i2]);
                int i3 = (m8530a3 >> 16) ^ (65535 & m8530a3);
                byte[] bArr4 = {(byte) i3, (byte) (i3 >> 8)};
                bArr[i2 << 1] = bArr4[0];
                bArr[(i2 << 1) + 1] = bArr4[1];
            }
        }
        this.f15830b = m8538a();
        synchronized (this.f15818a) {
            if (this.f15830b == null) {
                bArr2 = new byte[0];
            } else {
                this.f15830b.reset();
                this.f15830b.update(bArr);
                byte[] digest = this.f15830b.digest();
                bArr2 = new byte[digest.length > 4 ? 4 : digest.length];
                System.arraycopy(digest, 0, bArr2, 0, bArr2.length);
            }
        }
        return bArr2;
    }
}
