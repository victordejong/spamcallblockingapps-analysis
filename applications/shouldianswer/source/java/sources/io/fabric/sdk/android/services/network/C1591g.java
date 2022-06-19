package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.C1449c;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* renamed from: io.fabric.sdk.android.services.network.g */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/g.class */
class C1591g implements X509TrustManager {

    /* renamed from: a */
    private static final X509Certificate[] f4329a = new X509Certificate[0];

    /* renamed from: b */
    private final TrustManager[] f4330b;

    /* renamed from: c */
    private final C1592h f4331c;

    /* renamed from: d */
    private final long f4332d;

    /* renamed from: e */
    private final List<byte[]> f4333e = new LinkedList();

    /* renamed from: f */
    private final Set<X509Certificate> f4334f = Collections.synchronizedSet(new HashSet());

    public C1591g(C1592h c1592h, AbstractC1590f abstractC1590f) {
        this.f4330b = m3224a(c1592h);
        this.f4331c = c1592h;
        this.f4332d = abstractC1590f.getPinCreationTimeInMillis();
        for (String str : abstractC1590f.getPins()) {
            this.f4333e.add(m3223a(str));
        }
    }

    /* renamed from: a */
    private void m3221a(X509Certificate[] x509CertificateArr) {
        if (this.f4332d == -1 || System.currentTimeMillis() - this.f4332d <= 15552000000L) {
            for (X509Certificate x509Certificate : C1584a.m3233a(x509CertificateArr, this.f4331c)) {
                if (m3222a(x509Certificate)) {
                    return;
                }
            }
            throw new CertificateException("No valid pins found in chain!");
        }
        C1449c.m3572g().mo3548d("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.f4332d) + " millis vs 15552000000 millis) falling back to system trust.");
    }

    /* renamed from: a */
    private void m3220a(X509Certificate[] x509CertificateArr, String str) {
        for (TrustManager trustManager : this.f4330b) {
            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
        }
    }

    /* renamed from: a */
    private boolean m3222a(X509Certificate x509Certificate) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            Iterator<byte[]> it = this.f4333e.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!Arrays.equals(it.next(), digest));
            return true;
        } catch (NoSuchAlgorithmException e) {
            throw new CertificateException(e);
        }
    }

    /* renamed from: a */
    private byte[] m3223a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    /* renamed from: a */
    private TrustManager[] m3224a(C1592h c1592h) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
            trustManagerFactory.init(c1592h.f4335a);
            return trustManagerFactory.getTrustManagers();
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        if (this.f4334f.contains(x509CertificateArr[0])) {
            return;
        }
        m3220a(x509CertificateArr, str);
        m3221a(x509CertificateArr);
        this.f4334f.add(x509CertificateArr[0]);
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return f4329a;
    }
}
