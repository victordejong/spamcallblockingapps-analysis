package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehi.class */
public final class zzehi implements zzeaq {
    private static final ThreadLocal<Cipher> zziiy = new zzehh();
    private static final ThreadLocal<Cipher> zziiz = new zzehk();
    private final SecretKeySpec zziiv;
    private final byte[] zzija;
    private final byte[] zzijb;
    private final int zzijc;

    public zzehi(byte[] bArr, int i) throws GeneralSecurityException {
        if (i == 12 || i == 16) {
            this.zzijc = i;
            zzeiv.zzfu(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.zziiv = secretKeySpec;
            Cipher cipher = zziiy.get();
            cipher.init(1, secretKeySpec);
            byte[] zzo = zzo(cipher.doFinal(new byte[16]));
            this.zzija = zzo;
            this.zzijb = zzo(zzo);
            return;
        }
        throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
    }

    private final byte[] zza(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(zzd(bArr3, this.zzija));
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
            bArr2 = zzd(copyOfRange, this.zzija);
        } else {
            bArr2 = Arrays.copyOf(this.zzijb, 16);
            for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
            }
            bArr2[copyOfRange.length] = (byte) (bArr2[copyOfRange.length] ^ 128);
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

    private static byte[] zzo(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 15) {
                break;
            }
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((bArr[i2] << 1) ^ ((bArr[i3] & 255) >>> 7));
            i = i3;
        }
        bArr2[15] = (byte) ((bArr[15] << 1) ^ ((bArr[0] & 128) == 0 ? 0 : 135));
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zzijc;
        if (length <= (Integer.MAX_VALUE - i) - 16) {
            byte[] bArr3 = new byte[bArr.length + i + 16];
            byte[] zzft = zzeiu.zzft(i);
            System.arraycopy(zzft, 0, bArr3, 0, this.zzijc);
            Cipher cipher = zziiy.get();
            cipher.init(1, this.zziiv);
            byte[] zza = zza(cipher, 0, zzft, 0, zzft.length);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            byte[] zza2 = zza(cipher, 1, bArr2, 0, bArr2.length);
            Cipher cipher2 = zziiz.get();
            cipher2.init(1, this.zziiv, new IvParameterSpec(zza));
            cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.zzijc);
            byte[] zza3 = zza(cipher, 2, bArr3, this.zzijc, bArr.length);
            int length2 = bArr.length;
            int i2 = this.zzijc;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length2 + i2 + i3] = (byte) ((zza2[i3] ^ zza[i3]) ^ zza3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
