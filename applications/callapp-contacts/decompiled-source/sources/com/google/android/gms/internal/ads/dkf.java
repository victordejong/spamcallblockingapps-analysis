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

    /* renamed from: b  reason: collision with root package name */
    private static Cipher f26889b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f26890c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f26891d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final SecureRandom f26892a = null;

    public dkf(SecureRandom secureRandom) {
    }

    private static Cipher a() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (f26891d) {
            if (f26889b == null) {
                f26889b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f26889b;
        }
        return cipher;
    }

    public final String a(byte[] bArr, byte[] bArr2) throws zzej {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length == 16) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f26890c) {
                    a().init(1, secretKeySpec, (SecureRandom) null);
                    doFinal = a().doFinal(bArr2);
                    iv = a().getIV();
                }
                int length = doFinal.length + iv.length;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.put(iv).put(doFinal);
                allocate.flip();
                byte[] bArr3 = new byte[length];
                allocate.get(bArr3);
                return bxn.a(bArr3, false);
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
        } else {
            throw new zzej(this);
        }
    }

    public final byte[] a(String str) throws zzej {
        try {
            byte[] a2 = bxn.a(str, false);
            if (a2.length == 32) {
                ByteBuffer wrap = ByteBuffer.wrap(a2, 4, 16);
                byte[] bArr = new byte[16];
                wrap.get(bArr);
                for (int i = 0; i < 16; i++) {
                    bArr[i] = (byte) (bArr[i] ^ 68);
                }
                return bArr;
            }
            throw new zzej(this);
        } catch (IllegalArgumentException e) {
            throw new zzej(this, e);
        }
    }

    public final byte[] a(byte[] bArr, String str) throws zzej {
        byte[] doFinal;
        if (bArr.length == 16) {
            try {
                byte[] a2 = bxn.a(str, false);
                if (a2.length > 16) {
                    ByteBuffer allocate = ByteBuffer.allocate(a2.length);
                    allocate.put(a2);
                    allocate.flip();
                    byte[] bArr2 = new byte[16];
                    byte[] bArr3 = new byte[a2.length - 16];
                    allocate.get(bArr2);
                    allocate.get(bArr3);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    synchronized (f26890c) {
                        a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                        doFinal = a().doFinal(bArr3);
                    }
                    return doFinal;
                }
                throw new zzej(this);
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
        } else {
            throw new zzej(this);
        }
    }
}
