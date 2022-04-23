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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzp.class */
public final class bzp {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f25457b = false;

    /* renamed from: c  reason: collision with root package name */
    private static MessageDigest f25458c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f25459d = new Object();
    private static final Object e = new Object();

    /* renamed from: a  reason: collision with root package name */
    static CountDownLatch f25456a = new CountDownLatch(1);

    private static beb.a a(beb.a.d dVar) {
        beb.a.b c2 = beb.a.c();
        c2.j(dVar.zzv());
        return c2.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(beb.a aVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] bArr;
        byte[] g = aVar.g();
        if (((Boolean) ekb.e().a(aq.bF)).booleanValue()) {
            Vector<byte[]> b2 = b(g);
            if (b2 == null || b2.size() == 0) {
                bArr = a(a(beb.a.d.PSN_ENCODE_SIZE_FAIL).g(), str, true);
            } else {
                beb.f.a a2 = beb.f.a();
                Iterator<byte[]> it2 = b2.iterator();
                while (it2.hasNext()) {
                    a2.a(dlw.a(a(it2.next(), str, false)));
                }
                a2.b(dlw.a(a(g)));
                bArr = a2.f().g();
            }
        } else if (dtj.f27198a != null) {
            bArr = beb.f.a().a(dlw.a(dtj.f27198a.a(g, str != null ? str.getBytes() : new byte[0]))).a(blg.TINK_HYBRID).f().g();
        } else {
            throw new GeneralSecurityException();
        }
        return bxn.a(bArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        synchronized (e) {
            if (!f25457b) {
                f25457b = true;
                new Thread(new cbr(null)).start();
            }
        }
    }

    public static byte[] a(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (f25459d) {
            MessageDigest b2 = b();
            if (b2 != null) {
                b2.reset();
                b2.update(bArr);
                digest = f25458c.digest();
            } else {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
        }
        return digest;
    }

    private static byte[] a(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArr2;
        int i = z ? 239 : 255;
        byte[] bArr3 = bArr;
        if (bArr.length > i) {
            bArr3 = a(beb.a.d.PSN_ENCODE_SIZE_FAIL).g();
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
            bArr5 = ByteBuffer.allocate(PropertyFlags.INDEX_PARTIAL_SKIP_NULL).put(a(bArr2)).put(bArr2).array();
        }
        byte[] bArr6 = new byte[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        for (ccs ccsVar : new caq().cN) {
            ccsVar.a(bArr5, bArr6);
        }
        if (str != null && str.length() > 0) {
            String str2 = str;
            if (str.length() > 32) {
                str2 = str.substring(0, 32);
            }
            new dlk(str2.getBytes("UTF-8")).a(bArr6);
        }
        return bArr6;
    }

    private static MessageDigest b() {
        boolean z;
        MessageDigest messageDigest;
        a();
        try {
            z = f25456a.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            z = false;
        }
        if (z && (messageDigest = f25458c) != null) {
            return messageDigest;
        }
        return null;
    }

    private static Vector<byte[]> b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i = 0; i < length; i++) {
            int i2 = i * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i2, bArr.length - i2 > 255 ? i2 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException e2) {
                return null;
            }
        }
        return vector;
    }
}
