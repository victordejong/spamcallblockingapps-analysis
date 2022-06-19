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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cv1.class */
public final class cv1 {

    /* renamed from: a */
    static boolean f6300a = false;

    /* renamed from: b */
    private static MessageDigest f6301b;

    /* renamed from: c */
    private static final Object f6302c = new Object();

    /* renamed from: d */
    private static final Object f6303d = new Object();

    /* renamed from: e */
    static final CountDownLatch f6304e = new CountDownLatch(1);

    /* renamed from: a */
    static void m7778a() {
        synchronized (f6303d) {
            if (!f6300a) {
                f6300a = true;
                new Thread(new iu1(null)).start();
            }
        }
    }

    /* renamed from: b */
    static String m7777b(d61 d61Var, String str) {
        byte[] bArr;
        oc2 m;
        byte[] A = d61Var.A();
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7218B1)).booleanValue()) {
            Vector<byte[]> m7776c = m7776c(A, 255);
            if (m7776c == null || m7776c.size() == 0) {
                bArr = m7772g(m7775d(zzcv.u).A(), str, true);
                return ir1.m7099a(bArr, true);
            }
            lo1 E = lp1.E();
            int size = m7776c.size();
            for (int i = 0; i < size; i++) {
                E.q(zzesf.zzs(m7772g(m7776c.get(i), str, false)));
            }
            E.r(zzesf.zzs(m7774e(A)));
            m = E.m();
        } else if (ti2.f8602a == null) {
            throw new GeneralSecurityException();
        } else {
            byte[] m6474a = ti2.f8602a.m6474a(A, str != null ? str.getBytes() : new byte[0]);
            lo1 E2 = lp1.E();
            E2.q(zzesf.zzs(m6474a));
            E2.s(zzdj.d);
            m = E2.m();
        }
        bArr = m.A();
        return ir1.m7099a(bArr, true);
    }

    /* renamed from: c */
    static Vector<byte[]> m7776c(byte[] bArr, int i) {
        int length = bArr.length;
        if (length <= 0) {
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

    /* renamed from: d */
    static d61 m7775d(zzcv zzcvVar) {
        ar0 A0 = d61.A0();
        A0.k0(zzcvVar.zza());
        return A0.m();
    }

    /* renamed from: e */
    public static byte[] m7774e(byte[] bArr) {
        byte[] digest;
        MessageDigest messageDigest;
        synchronized (f6302c) {
            m7778a();
            MessageDigest messageDigest2 = null;
            try {
                if (f6304e.await(2L, TimeUnit.SECONDS) && (messageDigest = f6301b) != null) {
                    messageDigest2 = messageDigest;
                }
            } catch (InterruptedException e) {
            }
            if (messageDigest2 == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            messageDigest2.reset();
            messageDigest2.update(bArr);
            digest = f6301b.digest();
        }
        return digest;
    }

    /* renamed from: g */
    private static byte[] m7772g(byte[] bArr, String str, boolean z) {
        ByteBuffer byteBuffer;
        int i = true != z ? 255 : 239;
        byte[] bArr2 = bArr;
        if (bArr.length > i) {
            bArr2 = m7775d(zzcv.u).A();
        }
        int length = bArr2.length;
        if (length < i) {
            byte[] bArr3 = new byte[i - length];
            new SecureRandom().nextBytes(bArr3);
            byteBuffer = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr2).put(bArr3);
        } else {
            byteBuffer = ByteBuffer.allocate(i + 1).put((byte) length).put(bArr2);
        }
        byte[] array = byteBuffer.array();
        byte[] bArr4 = array;
        if (z) {
            bArr4 = ByteBuffer.allocate(256).put(m7774e(array)).put(array).array();
        }
        byte[] bArr5 = new byte[256];
        bx1[] bx1VarArr = new p92().f7953G2;
        int length2 = bx1VarArr.length;
        for (int i2 = 0; i2 < 12; i2++) {
            bx1VarArr[i2].m7912a(bArr4, bArr5);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new bb2(str2.getBytes("UTF-8")).m8044a(bArr5);
        }
        return bArr5;
    }
}
