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
/* renamed from: com.google.android.gms.internal.ads.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x.class */
public final class C7127x {

    /* renamed from: a */
    private static Cipher f31856a;

    /* renamed from: b */
    private static final Object f31857b = new Object();

    /* renamed from: c */
    private static final Object f31858c = new Object();

    public C7127x(SecureRandom secureRandom) {
    }

    /* renamed from: c */
    private static final Cipher m9392c() {
        Cipher cipher;
        synchronized (f31858c) {
            if (f31856a == null) {
                f31856a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f31856a;
        }
        return cipher;
    }

    /* renamed from: a */
    public final String m9394a(byte[] bArr, byte[] bArr2) {
        byte[] doFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f31857b) {
                m9392c().init(1, secretKeySpec, (SecureRandom) null);
                doFinal = m9392c().doFinal(bArr2);
                iv = m9392c().getIV();
            }
            int length2 = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length2];
            allocate.get(bArr3);
            return p24.m12440a(bArr3, false);
        } catch (InvalidKeyException e) {
            throw new zzaaw(this, e);
        } catch (NoSuchAlgorithmException e2) {
            throw new zzaaw(this, e2);
        } catch (BadPaddingException e3) {
            throw new zzaaw(this, e3);
        } catch (IllegalBlockSizeException e4) {
            throw new zzaaw(this, e4);
        } catch (NoSuchPaddingException e5) {
            throw new zzaaw(this, e5);
        }
    }

    /* renamed from: b */
    public final byte[] m9393b(byte[] bArr, String str) {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] m12439b = p24.m12439b(str, false);
            int length2 = m12439b.length;
            if (length2 <= 16) {
                throw new zzaaw(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(m12439b);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            allocate.get(bArr2);
            allocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f31857b) {
                m9392c().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                doFinal = m9392c().doFinal(bArr3);
            }
            return doFinal;
        } catch (IllegalArgumentException e) {
            throw new zzaaw(this, e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new zzaaw(this, e2);
        } catch (InvalidKeyException e3) {
            throw new zzaaw(this, e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new zzaaw(this, e4);
        } catch (BadPaddingException e5) {
            throw new zzaaw(this, e5);
        } catch (IllegalBlockSizeException e6) {
            throw new zzaaw(this, e6);
        } catch (NoSuchPaddingException e7) {
            throw new zzaaw(this, e7);
        }
    }
}
