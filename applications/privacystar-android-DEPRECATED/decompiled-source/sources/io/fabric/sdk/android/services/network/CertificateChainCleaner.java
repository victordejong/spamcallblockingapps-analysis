package io.fabric.sdk.android.services.network;

import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/network/CertificateChainCleaner.class */
final class CertificateChainCleaner {
    private CertificateChainCleaner() {
    }

    public static X509Certificate[] getCleanChain(X509Certificate[] x509CertificateArr, SystemKeyStore systemKeyStore) throws CertificateException {
        LinkedList linkedList = new LinkedList();
        boolean isTrustRoot = systemKeyStore.isTrustRoot(x509CertificateArr[0]);
        linkedList.add(x509CertificateArr[0]);
        boolean z = true;
        int i = 1;
        while (true) {
            z = isTrustRoot;
            if (i < x509CertificateArr.length) {
                if (systemKeyStore.isTrustRoot(x509CertificateArr[i])) {
                    isTrustRoot = true;
                }
                z = isTrustRoot;
                if (!isValidLink(x509CertificateArr[i], x509CertificateArr[i - 1])) {
                    break;
                }
                linkedList.add(x509CertificateArr[i]);
                i++;
            } else {
                break;
            }
        }
        X509Certificate trustRootFor = systemKeyStore.getTrustRootFor(x509CertificateArr[i - 1]);
        if (trustRootFor != null) {
            linkedList.add(trustRootFor);
        }
        if (z) {
            return (X509Certificate[]) linkedList.toArray(new X509Certificate[linkedList.size()]);
        }
        throw new CertificateException("Didn't find a trust anchor in chain cleanup!");
    }

    private static boolean isValidLink(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
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
}
