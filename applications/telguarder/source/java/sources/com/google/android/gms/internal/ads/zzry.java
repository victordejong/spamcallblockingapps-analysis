package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzry.class */
public final class zzry extends zzrv {
    private MessageDigest zzbuj;

    @Override // com.google.android.gms.internal.ads.zzrv
    public final byte[] zzbq(String str) {
        byte[] bArr;
        String[] split = str.split(" ");
        if (split.length != 1) {
            if (split.length >= 5) {
                byte[] bArr2 = new byte[split.length];
                int i = 0;
                while (true) {
                    bArr = bArr2;
                    if (i >= split.length) {
                        break;
                    }
                    int zzbr = zzrz.zzbr(split[i]);
                    bArr2[i] = (byte) ((zzbr >> 24) ^ (((zzbr & 255) ^ ((zzbr >> 8) & 255)) ^ ((zzbr >> 16) & 255)));
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
                    int zzbr2 = zzrz.zzbr(split[i2]);
                    int i3 = (zzbr2 >> 16) ^ (65535 & zzbr2);
                    byte[] bArr4 = {(byte) i3, (byte) (i3 >> 8)};
                    int i4 = i2 << 1;
                    bArr3[i4] = bArr4[0];
                    bArr3[i4 + 1] = bArr4[1];
                    i2++;
                }
            }
        } else {
            int zzbr3 = zzrz.zzbr(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zzbr3);
            bArr = allocate.array();
        }
        this.zzbuj = zzms();
        synchronized (this.mLock) {
            MessageDigest messageDigest = this.zzbuj;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.zzbuj.update(bArr);
            byte[] digest = this.zzbuj.digest();
            int length = digest.length > 4 ? 4 : digest.length;
            byte[] bArr5 = new byte[length];
            System.arraycopy(digest, 0, bArr5, 0, length);
            return bArr5;
        }
    }
}
