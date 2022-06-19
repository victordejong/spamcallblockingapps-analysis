package io.fabric.sdk.android.services.network;

import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.LinkedList;
/* renamed from: io.fabric.sdk.android.services.network.a */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/a.class */
final class C1584a {
    /* renamed from: a */
    private static boolean m3234a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getSubjectX500Principal().equals(x509Certificate2.getIssuerX500Principal())) {
            return false;
        }
        try {
            x509Certificate2.verify(x509Certificate.getPublicKey());
            return true;
        } catch (GeneralSecurityException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static X509Certificate[] m3233a(X509Certificate[] x509CertificateArr, C1592h c1592h) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        boolean m3217a = c1592h.m3217a(x509CertificateArr[0]);
        linkedList.add(x509CertificateArr[0]);
        int i = 1;
        while (true) {
            z = m3217a;
            if (i < x509CertificateArr.length) {
                if (c1592h.m3217a(x509CertificateArr[i])) {
                    m3217a = true;
                }
                z = m3217a;
                if (!m3234a(x509CertificateArr[i], x509CertificateArr[i - 1])) {
                    break;
                }
                linkedList.add(x509CertificateArr[i]);
                i++;
            } else {
                break;
            }
        }
        X509Certificate m3216b = c1592h.m3216b(x509CertificateArr[i - 1]);
        if (m3216b != null) {
            linkedList.add(m3216b);
            z = true;
        }
        if (z) {
            return (X509Certificate[]) linkedList.toArray(new X509Certificate[linkedList.size()]);
        }
        throw new CertificateException("Didn't find a trust anchor in chain cleanup!");
    }
}
