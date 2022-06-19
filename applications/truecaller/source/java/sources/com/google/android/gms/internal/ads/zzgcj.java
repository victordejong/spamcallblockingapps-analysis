package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcj.class */
public final class zzgcj implements zzftg {
    private static final ThreadLocal<Cipher> zza = new zzgch();
    private static final ThreadLocal<Cipher> zzb = new zzgci();
    private final byte[] zzc;
    private final byte[] zzd;
    private final SecretKeySpec zze;
    private final int zzf;

    public zzgcj(byte[] bArr, int i) throws GeneralSecurityException {
        if (zzfvw.zza(1)) {
            if (i != 12 && i != 16) {
                throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
            }
            this.zzf = i;
            zzgdu.zza(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.zze = secretKeySpec;
            Cipher cipher = zza.get();
            cipher.init(1, secretKeySpec);
            byte[] zzc = zzc(cipher.doFinal(new byte[16]));
            this.zzc = zzc;
            this.zzd = zzc(zzc);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    private static byte[] zzb(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    private static byte[] zzc(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 15) {
                byte b = bArr[15];
                bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b + b));
                return bArr2;
            }
            byte b2 = bArr[i2];
            int i3 = i2 + 1;
            bArr2[i2] = (byte) (((b2 + b2) ^ ((bArr[i3] & 255) >>> 7)) & 255);
            i = i3;
        }
    }

    private final byte[] zzd(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2;
        int length;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(zzb(bArr3, this.zzc));
        }
        byte[] doFinal = cipher.doFinal(bArr3);
        int i4 = 0;
        while (i3 - i4 > 16) {
            for (int i5 = 0; i5 < 16; i5++) {
                doFinal[i5] = (byte) (doFinal[i5] ^ bArr[(i2 + i4) + i5]);
            }
            doFinal = cipher.doFinal(doFinal);
            i4 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i4 + i2, i2 + i3);
        if (copyOfRange.length == 16) {
            bArr2 = zzb(copyOfRange, this.zzc);
        } else {
            bArr2 = Arrays.copyOf(this.zzd, 16);
            int i6 = 0;
            while (true) {
                length = copyOfRange.length;
                if (i6 >= length) {
                    break;
                }
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
                i6++;
            }
            bArr2[length] = (byte) (bArr2[length] ^ 128);
        }
        return cipher.doFinal(zzb(doFinal, bArr2));
    }

    @Override // com.google.android.gms.internal.ads.zzftg
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzf;
        if (length <= (Integer.MAX_VALUE - i) - 16) {
            byte[] bArr3 = new byte[i + length + 16];
            byte[] zza2 = zzgds.zza(i);
            System.arraycopy(zza2, 0, bArr3, 0, this.zzf);
            Cipher cipher = zza.get();
            cipher.init(1, this.zze);
            byte[] zzd = zzd(cipher, 0, zza2, 0, zza2.length);
            byte[] zzd2 = zzd(cipher, 1, bArr2, 0, 0);
            Cipher cipher2 = zzb.get();
            cipher2.init(1, this.zze, new IvParameterSpec(zzd));
            cipher2.doFinal(bArr, 0, length, bArr3, this.zzf);
            byte[] zzd3 = zzd(cipher, 2, bArr3, this.zzf, length);
            int i2 = this.zzf;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length + i2 + i3] = (byte) ((zzd2[i3] ^ zzd[i3]) ^ zzd3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
