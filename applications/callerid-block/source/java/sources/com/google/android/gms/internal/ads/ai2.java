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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ai2.class */
public final class ai2 {

    /* renamed from: a */
    private static Cipher f5970a;

    /* renamed from: b */
    private static final Object f5971b = new Object();

    /* renamed from: c */
    private static final Object f5972c = new Object();

    public ai2(SecureRandom secureRandom) {
    }

    /* renamed from: c */
    private static final Cipher m8132c() {
        Cipher cipher;
        synchronized (f5972c) {
            if (f5970a == null) {
                f5970a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f5970a;
        }
        return cipher;
    }

    /* renamed from: a */
    public final String m8134a(byte[] bArr, byte[] bArr2) {
        byte[] doFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f5971b) {
                m8132c().init(1, secretKeySpec, (SecureRandom) null);
                doFinal = m8132c().doFinal(bArr2);
                iv = m8132c().getIV();
            }
            int length2 = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length2];
            allocate.get(bArr3);
            return ir1.m7099a(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new zzfj(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new zzfj(this, e2);
        } catch (BadPaddingException e3) {
            throw new zzfj(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new zzfj(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new zzfj(this, e5);
        }
    }

    /* renamed from: b */
    public final byte[] m8133b(byte[] bArr, String str) {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] m7098b = ir1.m7098b(str, false);
            int length2 = m7098b.length;
            if (length2 <= 16) {
                throw new zzfj(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(m7098b);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            allocate.get(bArr2);
            allocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f5971b) {
                m8132c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                doFinal = m8132c().doFinal(bArr3);
            }
            return doFinal;
        } catch (IllegalArgumentException e) {
            throw new zzfj(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new zzfj(this, e2);
        } catch (InvalidKeyException e3) {
            throw new zzfj(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new zzfj(this, e4);
        } catch (BadPaddingException e5) {
            throw new zzfj(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new zzfj(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new zzfj(this, e7);
        }
    }
}
