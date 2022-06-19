package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;
/* renamed from: io.fabric.sdk.android.services.network.h */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/h.class */
class C1592h {

    /* renamed from: a */
    final KeyStore f4335a;

    /* renamed from: b */
    private final HashMap<Principal, X509Certificate> f4336b;

    public C1592h(InputStream inputStream, String str) {
        KeyStore m3219a = m3219a(inputStream, str);
        this.f4336b = m3218a(m3219a);
        this.f4335a = m3219a;
    }

    /* renamed from: a */
    private KeyStore m3219a(InputStream inputStream, String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance("BKS");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                keyStore.load(bufferedInputStream, str.toCharArray());
                return keyStore;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        } catch (KeyStoreException e2) {
            throw new AssertionError(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError(e3);
        } catch (CertificateException e4) {
            throw new AssertionError(e4);
        }
    }

    /* renamed from: a */
    private HashMap<Principal, X509Certificate> m3218a(KeyStore keyStore) {
        try {
            HashMap<Principal, X509Certificate> hashMap = new HashMap<>();
            Enumeration<String> aliases = keyStore.aliases();
            while (aliases.hasMoreElements()) {
                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(aliases.nextElement());
                if (x509Certificate != null) {
                    hashMap.put(x509Certificate.getSubjectX500Principal(), x509Certificate);
                }
            }
            return hashMap;
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public boolean m3217a(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.f4336b.get(x509Certificate.getSubjectX500Principal());
        return x509Certificate2 != null && x509Certificate2.getPublicKey().equals(x509Certificate.getPublicKey());
    }

    /* renamed from: b */
    public X509Certificate m3216b(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.f4336b.get(x509Certificate.getIssuerX500Principal());
        if (x509Certificate2 != null && !x509Certificate2.getSubjectX500Principal().equals(x509Certificate.getSubjectX500Principal())) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (GeneralSecurityException e) {
                return null;
            }
        }
        return null;
    }
}
