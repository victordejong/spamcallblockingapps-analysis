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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvn.class */
public final class cvn {

    /* renamed from: b */
    private static Cipher f13729b = null;

    /* renamed from: c */
    private static final Object f13730c = new Object();

    /* renamed from: d */
    private static final Object f13731d = new Object();

    /* renamed from: a */
    private final SecureRandom f13732a = null;

    public cvn(SecureRandom secureRandom) {
    }

    /* renamed from: a */
    private static Cipher m10627a() {
        Cipher cipher;
        synchronized (f13731d) {
            if (f13729b == null) {
                f13729b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f13729b;
        }
        return cipher;
    }

    /* renamed from: a */
    public final String m10624a(byte[] bArr, byte[] bArr2) {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length != 16) {
            throw new zzdy(this);
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f13730c) {
                m10627a().init(1, secretKeySpec, (SecureRandom) null);
                doFinal = m10627a().doFinal(bArr2);
                iv = m10627a().getIV();
            }
            int length = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length];
            allocate.get(bArr3);
            return bkl.m11831a(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new zzdy(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new zzdy(this, e2);
        } catch (BadPaddingException e3) {
            throw new zzdy(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new zzdy(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new zzdy(this, e5);
        }
    }

    /* renamed from: a */
    public final byte[] m10626a(String str) {
        try {
            byte[] m11832a = bkl.m11832a(str, false);
            if (m11832a.length != 32) {
                throw new zzdy(this);
            }
            ByteBuffer wrap = ByteBuffer.wrap(m11832a, 4, 16);
            byte[] bArr = new byte[16];
            wrap.get(bArr);
            for (int i = 0; i < 16; i++) {
                bArr[i] = (byte) (bArr[i] ^ 68);
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new zzdy(this, e);
        }
    }

    /* renamed from: a */
    public final byte[] m10625a(byte[] bArr, String str) {
        byte[] doFinal;
        if (bArr.length != 16) {
            throw new zzdy(this);
        }
        try {
            byte[] m11832a = bkl.m11832a(str, false);
            if (m11832a.length <= 16) {
                throw new zzdy(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(m11832a.length);
            allocate.put(m11832a);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[m11832a.length - 16];
            allocate.get(bArr2);
            allocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f13730c) {
                m10627a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                doFinal = m10627a().doFinal(bArr3);
            }
            return doFinal;
        } catch (IllegalArgumentException e) {
            throw new zzdy(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new zzdy(this, e2);
        } catch (InvalidKeyException e3) {
            throw new zzdy(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new zzdy(this, e4);
        } catch (BadPaddingException e5) {
            throw new zzdy(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new zzdy(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new zzdy(this, e7);
        }
    }
}
