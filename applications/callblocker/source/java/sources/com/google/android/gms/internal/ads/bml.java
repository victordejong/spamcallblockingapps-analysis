package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bml.class */
public final class bml {

    /* renamed from: b */
    private static boolean f11546b = false;

    /* renamed from: c */
    private static MessageDigest f11547c = null;

    /* renamed from: d */
    private static final Object f11548d = new Object();

    /* renamed from: e */
    private static final Object f11549e = new Object();

    /* renamed from: a */
    static CountDownLatch f11545a = new CountDownLatch(1);

    /* renamed from: a */
    private static atw.C2798a m11772a(atw.C2798a.EnumC2802d enumC2802d) {
        atw.C2798a.C2799a m12647h = atw.C2798a.m12647h();
        m12647h.m12565j(enumC2802d.mo8208a());
        return (atw.C2798a) ((dcw) m12647h.mo9987g());
    }

    /* renamed from: a */
    public static String m11771a(atw.C2798a c2798a, String str) {
        byte[] m11767a;
        byte[] mo9984l = c2798a.mo9984l();
        if (((Boolean) dyx.m8158e().m7876a(edi.f16427bg)).booleanValue()) {
            Vector<byte[]> m11768a = m11768a(mo9984l, 255);
            if (m11768a == null || m11768a.size() == 0) {
                m11767a = m11767a(m11772a(atw.C2798a.EnumC2802d.PSN_ENCODE_SIZE_FAIL).mo9984l(), str, true);
            } else {
                atw.C2815f.C2816a m12443a = atw.C2815f.m12443a();
                Iterator<byte[]> it = m11768a.iterator();
                while (it.hasNext()) {
                    m12443a.m12434a(dbi.m10219a(m11767a(it.next(), str, false)));
                }
                m12443a.m12433b(dbi.m10219a(m11769a(mo9984l)));
                m11767a = ((atw.C2815f) ((dcw) m12443a.mo9987g())).mo9984l();
            }
        } else if (diq.f14431a == null) {
            throw new GeneralSecurityException();
        } else {
            m11767a = ((atw.C2815f) ((dcw) atw.C2815f.m12443a().m12434a(dbi.m10219a(diq.f14431a.mo10292a(mo9984l, str != null ? str.getBytes() : new byte[0]))).m12435a(bbd.TINK_HYBRID).mo9987g())).mo9984l();
        }
        return bkl.m11831a(m11767a, true);
    }

    /* renamed from: a */
    private static Vector<byte[]> m11768a(byte[] bArr, int i) {
        Vector<byte[]> vector = null;
        if (bArr != null) {
            if (bArr.length <= 0) {
                vector = null;
            } else {
                int length = ((bArr.length + 255) - 1) / 255;
                vector = new Vector<>();
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = i2 * 255;
                    try {
                        vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
                    } catch (IndexOutOfBoundsException e) {
                        vector = null;
                    }
                }
            }
        }
        return vector;
    }

    /* renamed from: a */
    public static void m11773a() {
        synchronized (f11549e) {
            if (!f11546b) {
                f11546b = true;
                new Thread(new bom()).start();
            }
        }
    }

    /* renamed from: a */
    public static byte[] m11769a(byte[] bArr) {
        byte[] digest;
        synchronized (f11548d) {
            MessageDigest m11766b = m11766b();
            if (m11766b == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            m11766b.reset();
            m11766b.update(bArr);
            digest = f11547c.digest();
        }
        return digest;
    }

    /* renamed from: a */
    private static byte[] m11767a(byte[] bArr, String str, boolean z) {
        byte[] array;
        int i = z ? 239 : 255;
        byte[] bArr2 = bArr;
        if (bArr.length > i) {
            bArr2 = m11772a(atw.C2798a.EnumC2802d.PSN_ENCODE_SIZE_FAIL).mo9984l();
        }
        if (bArr2.length < i) {
            byte[] bArr3 = new byte[i - bArr2.length];
            new SecureRandom().nextBytes(bArr3);
            array = ByteBuffer.allocate(i + 1).put((byte) bArr2.length).put(bArr2).put(bArr3).array();
        } else {
            array = ByteBuffer.allocate(i + 1).put((byte) bArr2.length).put(bArr2).array();
        }
        byte[] bArr4 = array;
        if (z) {
            bArr4 = ByteBuffer.allocate(256).put(m11769a(array)).put(array).array();
        }
        byte[] bArr5 = new byte[256];
        for (btp btpVar : new brn().f12056cN) {
            btpVar.mo11386a(bArr4, bArr5);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new daz(str2.getBytes("UTF-8")).m10249a(bArr5);
        }
        return bArr5;
    }

    /* renamed from: b */
    private static MessageDigest m11766b() {
        MessageDigest messageDigest = null;
        m11773a();
        boolean z = false;
        try {
            z = f11545a.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        if (z && f11547c != null) {
            messageDigest = f11547c;
        }
        return messageDigest;
    }
}
