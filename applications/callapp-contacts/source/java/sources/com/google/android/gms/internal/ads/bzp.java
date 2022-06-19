package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import io.objectbox.model.PropertyFlags;
import java.io.UnsupportedEncodingException;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzp.class */
public final class bzp {

    /* renamed from: b */
    private static boolean f45165b = false;

    /* renamed from: c */
    private static MessageDigest f45166c;

    /* renamed from: d */
    private static final Object f45167d = new Object();

    /* renamed from: e */
    private static final Object f45168e = new Object();

    /* renamed from: a */
    static CountDownLatch f45164a = new CountDownLatch(1);

    /* renamed from: a */
    private static beb.C12217a m17543a(beb.C12217a.EnumC12221d enumC12221d) {
        beb.C12217a.C12219b m18096c = beb.C12217a.m18096c();
        m18096c.m18023j(enumC12221d.zzv());
        return m18096c.mo16259f();
    }

    /* renamed from: a */
    public static String m17542a(beb.C12217a c12217a, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArr;
        byte[] mo16256g = c12217a.mo16256g();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42696bF)).booleanValue()) {
            Vector<byte[]> m17537b = m17537b(mo16256g);
            if (m17537b == null || m17537b.size() == 0) {
                bArr = m17539a(m17543a(beb.C12217a.EnumC12221d.PSN_ENCODE_SIZE_FAIL).mo16256g(), str, true);
            } else {
                beb.C12236f.C12237a m17938a = beb.C12236f.m17938a();
                Iterator<byte[]> it2 = m17537b.iterator();
                while (it2.hasNext()) {
                    m17938a.m17932a(dlw.m16475a(m17539a(it2.next(), str, false)));
                }
                m17938a.m17931b(dlw.m16475a(m17540a(mo16256g)));
                bArr = m17938a.mo16259f().mo16256g();
            }
        } else if (dtj.f47568a == null) {
            throw new GeneralSecurityException();
        } else {
            bArr = beb.C12236f.m17938a().m17932a(dlw.m16475a(dtj.f47568a.mo16550a(mo16256g, str != null ? str.getBytes() : new byte[0]))).m17933a(blg.TINK_HYBRID).mo16259f().mo16256g();
        }
        return bxn.m17584a(bArr, true);
    }

    /* renamed from: a */
    public static void m17544a() {
        synchronized (f45168e) {
            if (!f45165b) {
                f45165b = true;
                new Thread(new cbr()).start();
            }
        }
    }

    /* renamed from: a */
    public static byte[] m17540a(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (f45167d) {
            MessageDigest m17538b = m17538b();
            if (m17538b == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            m17538b.reset();
            m17538b.update(bArr);
            digest = f45166c.digest();
        }
        return digest;
    }

    /* renamed from: a */
    private static byte[] m17539a(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArr2;
        int i = z ? 239 : 255;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = m17543a(beb.C12217a.EnumC12221d.PSN_ENCODE_SIZE_FAIL).mo16256g();
        }
        if (bArr3.length < i) {
            byte[] bArr4 = new byte[i - bArr3.length];
            new SecureRandom().nextBytes(bArr4);
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr3.length).put(bArr3).put(bArr4).array();
        } else {
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr3.length).put(bArr3).array();
        }
        byte[] bArr5 = bArr2;
        if (z) {
            bArr5 = ByteBuffer.allocate(PropertyFlags.INDEX_PARTIAL_SKIP_NULL).put(m17540a(bArr2)).put(bArr2).array();
        }
        byte[] bArr6 = new byte[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        for (ccs ccsVar : new caq().f45361cN) {
            ccsVar.mo17343a(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new dlk(str2.getBytes("UTF-8")).m16508a(bArr6);
        }
        return bArr6;
    }

    /* renamed from: b */
    private static MessageDigest m17538b() {
        boolean z;
        MessageDigest messageDigest;
        m17544a();
        try {
            z = f45164a.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            z = false;
        }
        if (z && (messageDigest = f45166c) != null) {
            return messageDigest;
        }
        return null;
    }

    /* renamed from: b */
    private static Vector<byte[]> m17537b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i = 0; i < length; i++) {
            int i2 = i * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i2, bArr.length - i2 > 255 ? i2 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }
}
