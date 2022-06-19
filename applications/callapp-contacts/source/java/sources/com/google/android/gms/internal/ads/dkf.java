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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkf.class */
public final class dkf {

    /* renamed from: b */
    private static Cipher f47139b;

    /* renamed from: c */
    private static final Object f47140c = new Object();

    /* renamed from: d */
    private static final Object f47141d = new Object();

    /* renamed from: a */
    private final SecureRandom f47142a = null;

    public dkf(SecureRandom secureRandom) {
    }

    /* renamed from: a */
    private static Cipher m16542a() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (f47141d) {
            if (f47139b == null) {
                f47139b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f47139b;
        }
        return cipher;
    }

    /* renamed from: a */
    public final String m16539a(byte[] bArr, byte[] bArr2) throws zzej {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length == 16) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f47140c) {
                    m16542a().init(1, secretKeySpec, (SecureRandom) null);
                    doFinal = m16542a().doFinal(bArr2);
                    iv = m16542a().getIV();
                }
                int length = doFinal.length + iv.length;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.put(iv).put(doFinal);
                allocate.flip();
                byte[] bArr3 = new byte[length];
                allocate.get(bArr3);
                return bxn.m17584a(bArr3, false);
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

    /* renamed from: a */
    public final byte[] m16541a(String str) throws zzej {
        try {
            byte[] m17585a = bxn.m17585a(str, false);
            if (m17585a.length != 32) {
                throw new zzej(this);
            }
            ByteBuffer wrap = ByteBuffer.wrap(m17585a, 4, 16);
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

    /* renamed from: a */
    public final byte[] m16540a(byte[] bArr, String str) throws zzej {
        byte[] doFinal;
        if (bArr.length == 16) {
            try {
                byte[] m17585a = bxn.m17585a(str, false);
                if (m17585a.length <= 16) {
                    throw new zzej(this);
                }
                ByteBuffer allocate = ByteBuffer.allocate(m17585a.length);
                allocate.put(m17585a);
                allocate.flip();
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[m17585a.length - 16];
                allocate.get(bArr2);
                allocate.get(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f47140c) {
                    m16542a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                    doFinal = m16542a().doFinal(bArr3);
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
}
