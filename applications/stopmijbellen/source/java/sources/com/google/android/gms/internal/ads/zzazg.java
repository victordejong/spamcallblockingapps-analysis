package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazg.class */
public final class zzazg extends zzazb {
    private MessageDigest zzb;

    @Override // com.google.android.gms.internal.ads.zzazb
    public final byte[] zzb(String str) {
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
                    int zza = zzazf.zza(split[i]);
                    bArr2[i] = (byte) ((zza >> 24) ^ (((zza & 255) ^ ((zza >> 8) & 255)) ^ ((zza >> 16) & 255)));
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
                    int zza2 = zzazf.zza(split[i2]);
                    int i3 = (zza2 >> 16) ^ ((char) zza2);
                    byte[] bArr4 = {(byte) i3, (byte) (i3 >> 8)};
                    int i4 = i2 + i2;
                    bArr3[i4] = bArr4[0];
                    bArr3[i4 + 1] = bArr4[1];
                    i2++;
                }
            }
        } else {
            int zza3 = zzazf.zza(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zza3);
            bArr = allocate.array();
        }
        this.zzb = zza();
        synchronized (this.zza) {
            MessageDigest messageDigest = this.zzb;
            if (messageDigest == null) {
                return new byte[0];
            }
            messageDigest.reset();
            this.zzb.update(bArr);
            byte[] digest = this.zzb.digest();
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
