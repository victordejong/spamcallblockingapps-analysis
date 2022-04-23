package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrt.class */
public final class zzrt extends zzrq {

    /* renamed from: c */
    public MessageDigest f28940c;

    @Override // com.google.android.gms.internal.ads.zzrq
    /* renamed from: a */
    public final byte[] mo11480a(String str) {
        byte[] bArr;
        String[] split = str.split(" ");
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
                    int a = zzru.m11488a(split[i2]);
                    bArr2[i2] = (byte) ((a >> 24) ^ (((a & 255) ^ ((a >> 8) & 255)) ^ ((a >> 16) & 255)));
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
                    int a2 = zzru.m11488a(split[i3]);
                    int i4 = (a2 >> 16) ^ (65535 & a2);
                    byte[] bArr4 = {(byte) i4, (byte) (i4 >> 8)};
                    int i5 = i3 << 1;
                    bArr3[i5] = bArr4[0];
                    bArr3[i5 + 1] = bArr4[1];
                    i3++;
                }
            }
        } else {
            int a3 = zzru.m11488a(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(a3);
            bArr = allocate.array();
        }
        this.f28940c = m11489a();
        synchronized (this.f28939a) {
            try {
                if (this.f28940c == null) {
                    return new byte[0];
                }
                this.f28940c.reset();
                this.f28940c.update(bArr);
                byte[] digest = this.f28940c.digest();
                if (digest.length <= 4) {
                    i = digest.length;
                }
                byte[] bArr5 = new byte[i];
                System.arraycopy(digest, 0, bArr5, 0, i);
                return bArr5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
