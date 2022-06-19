package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggx.class */
public final class zzggx implements zzfxu {
    private static final ThreadLocal<Cipher> zza = new zzggv();
    private static final ThreadLocal<Cipher> zzb = new zzggw();
    private final byte[] zzc;
    private final byte[] zzd;
    private final SecretKeySpec zze;
    private final int zzf;

    public zzggx(byte[] bArr, int i) throws GeneralSecurityException {
        if (zzgak.zza(1)) {
            if (i != 12 && i != 16) {
                throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
            }
            this.zzf = i;
            zzgii.zza(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.zze = secretKeySpec;
            Cipher cipher = zza.get();
            cipher.init(1, secretKeySpec);
            byte[] zzb2 = zzb(cipher.doFinal(new byte[16]));
            this.zzc = zzb2;
            this.zzd = zzb(zzb2);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    private static byte[] zzb(byte[] bArr) {
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

    private final byte[] zzc(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2;
        int length;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(zzd(bArr3, this.zzc));
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
            bArr2 = zzd(copyOfRange, this.zzc);
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
        return cipher.doFinal(zzd(doFinal, bArr2));
    }

    private static byte[] zzd(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.zzfxu
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzf;
        if (length <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - i) - 16) {
            byte[] bArr3 = new byte[i + length + 16];
            byte[] zza2 = zzgig.zza(i);
            System.arraycopy(zza2, 0, bArr3, 0, this.zzf);
            Cipher cipher = zza.get();
            cipher.init(1, this.zze);
            byte[] zzc = zzc(cipher, 0, zza2, 0, zza2.length);
            byte[] zzc2 = zzc(cipher, 1, bArr2, 0, 0);
            Cipher cipher2 = zzb.get();
            cipher2.init(1, this.zze, new IvParameterSpec(zzc));
            cipher2.doFinal(bArr, 0, length, bArr3, this.zzf);
            byte[] zzc3 = zzc(cipher, 2, bArr3, this.zzf, length);
            int i2 = this.zzf;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length + i2 + i3] = (byte) ((zzc2[i3] ^ zzc[i3]) ^ zzc3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
