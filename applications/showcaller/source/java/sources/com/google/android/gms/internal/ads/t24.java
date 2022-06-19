package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t24.class */
public final class t24 {

    /* renamed from: a */
    static boolean f29798a = false;

    /* renamed from: b */
    private static MessageDigest f29799b;

    /* renamed from: c */
    private static final Object f29800c = new Object();

    /* renamed from: d */
    private static final Object f29801d = new Object();

    /* renamed from: e */
    static final CountDownLatch f29802e = new CountDownLatch(1);

    /* renamed from: b */
    public static void m10851b() {
        synchronized (f29801d) {
            if (!f29798a) {
                f29798a = true;
                new Thread(new r24(null)).start();
            }
        }
    }

    /* renamed from: c */
    public static String m10850c(z14 z14Var, String str) {
        byte[] bArr;
        byte[] mo10723K = z14Var.mo10723K();
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25573R1)).booleanValue()) {
            Vector<byte[]> m10849d = m10849d(mo10723K, 255);
            if (m10849d == null || m10849d.size() == 0) {
                bArr = m10846g(m10847f(4096).mo10723K(), str, true);
            } else {
                m24 m13015C = n24.m13015C();
                int size = m10849d.size();
                for (int i = 0; i < size; i++) {
                    m13015C.m13370q(zzgex.zzt(m10846g(m10849d.get(i), str, false)));
                }
                m13015C.m13369r(zzgex.zzt(m10848e(mo10723K)));
                bArr = m13015C.m15512n().mo10723K();
            }
        } else if (C6906r0.f28716a == null) {
            throw new GeneralSecurityException();
        } else {
            byte[] mo11114a = C6906r0.f28716a.mo11114a(mo10723K, str != null ? str.getBytes() : new byte[0]);
            m24 m13015C2 = n24.m13015C();
            m13015C2.m13370q(zzgex.zzt(mo11114a));
            m13015C2.m13368s(3);
            bArr = m13015C2.m15512n().mo10723K();
        }
        return p24.m12440a(bArr, true);
    }

    /* renamed from: d */
    static Vector<byte[]> m10849d(byte[] bArr, int i) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        int i2 = (length + 254) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                int i5 = length2;
                if (length2 - i4 > 255) {
                    i5 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, i5));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    /* renamed from: e */
    public static byte[] m10848e(byte[] bArr) {
        byte[] digest;
        MessageDigest messageDigest;
        synchronized (f29800c) {
            m10851b();
            MessageDigest messageDigest2 = null;
            try {
                if (f29802e.await(2L, TimeUnit.SECONDS) && (messageDigest = f29799b) != null) {
                    messageDigest2 = messageDigest;
                }
            } catch (InterruptedException e) {
            }
            if (messageDigest2 == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigest2.reset();
            messageDigest2.update(bArr);
            digest = f29799b.digest();
        }
        return digest;
    }

    /* renamed from: f */
    static z14 m10847f(int i) {
        j14 m8561z0 = z14.m8561z0();
        m8561z0.m14211h0(4096L);
        return m8561z0.m15512n();
    }

    /* renamed from: g */
    private static byte[] m10846g(byte[] bArr, String str, boolean z) {
        byte[] bArr2;
        int i = true != z ? 255 : 239;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = m10847f(4096).mo10723K();
        }
        int length = bArr3.length;
        if (length < i) {
            byte[] bArr4 = new byte[i - length];
            new SecureRandom().nextBytes(bArr4);
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr3).put(bArr4).array();
        } else {
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr3).array();
        }
        byte[] bArr5 = bArr2;
        if (z) {
            bArr5 = ByteBuffer.allocate(256).put(m10848e(bArr2)).put(bArr2).array();
        }
        byte[] bArr6 = new byte[256];
        u24[] u24VarArr = new C6609j().f24575G2;
        int length2 = u24VarArr.length;
        for (int i2 = 0; i2 < 12; i2++) {
            u24VarArr[i2].mo8538a(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new rc3(str2.getBytes("UTF-8")).m11610a(bArr6);
        }
        return bArr6;
    }
}
