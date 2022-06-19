package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzek.class */
public final class zzek {
    private static Cipher zzya;
    private static final Object zzyb = new Object();
    private static final Object zzyc = new Object();
    private final SecureRandom zzxz = null;

    public zzek(SecureRandom secureRandom) {
    }

    private static Cipher getCipher() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (zzyc) {
            if (zzya == null) {
                zzya = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = zzya;
        }
        return cipher;
    }

    public final byte[] zza(byte[] bArr, String str) throws zzej {
        byte[] doFinal;
        if (bArr.length == 16) {
            try {
                byte[] zzb = zzcy.zzb(str, false);
                if (zzb.length <= 16) {
                    throw new zzej(this);
                }
                ByteBuffer allocate = ByteBuffer.allocate(zzb.length);
                allocate.put(zzb);
                allocate.flip();
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[zzb.length - 16];
                allocate.get(bArr2);
                allocate.get(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (zzyb) {
                    getCipher().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                    doFinal = getCipher().doFinal(bArr3);
                }
                return doFinal;
            } catch (IllegalArgumentException e) {
                throw new zzej(this, e);
            } catch (InvalidAlgorithmParameterException e2) {
                throw new zzej(this, e2);
            } catch (InvalidKeyException e3) {
                throw new zzej(this, e3);
            } catch (NoSuchAlgorithmException e4) {
                throw new zzej(this, e4);
            } catch (BadPaddingException e5) {
                throw new zzej(this, e5);
            } catch (IllegalBlockSizeException e6) {
                throw new zzej(this, e6);
            } catch (NoSuchPaddingException e7) {
                throw new zzej(this, e7);
            }
        }
        throw new zzej(this);
    }

    public final byte[] zzao(String str) throws zzej {
        try {
            byte[] zzb = zzcy.zzb(str, false);
            if (zzb.length != 32) {
                throw new zzej(this);
            }
            ByteBuffer wrap = ByteBuffer.wrap(zzb, 4, 16);
            byte[] bArr = new byte[16];
            wrap.get(bArr);
            for (int i = 0; i < 16; i++) {
                bArr[i] = (byte) (bArr[i] ^ 68);
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new zzej(this, e);
        }
    }

    public final String zzb(byte[] bArr, byte[] bArr2) throws zzej {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length == 16) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (zzyb) {
                    getCipher().init(1, secretKeySpec, (SecureRandom) null);
                    doFinal = getCipher().doFinal(bArr2);
                    iv = getCipher().getIV();
                }
                int length = doFinal.length + iv.length;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.put(iv).put(doFinal);
                allocate.flip();
                byte[] bArr3 = new byte[length];
                allocate.get(bArr3);
                return zzcy.zza(bArr3, false);
            } catch (InvalidKeyException e) {
                throw new zzej(this, e);
            } catch (NoSuchAlgorithmException e2) {
                throw new zzej(this, e2);
            } catch (BadPaddingException e3) {
                throw new zzej(this, e3);
            } catch (IllegalBlockSizeException e4) {
                throw new zzej(this, e4);
            } catch (NoSuchPaddingException e5) {
                throw new zzej(this, e5);
            }
        }
        throw new zzej(this);
    }
}
