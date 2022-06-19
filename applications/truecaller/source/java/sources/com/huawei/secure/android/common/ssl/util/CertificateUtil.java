package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/CertificateUtil.class */
public final class CertificateUtil {

    /* renamed from: a */
    private static final String f8096a = "CertificateUtil";

    private CertificateUtil() {
    }

    public static X509Certificate getHwCbgRootCA(Context context) {
        Throwable th;
        InputStream inputStream;
        X509Certificate x509Certificate;
        Exception e;
        InputStream inputStream2 = null;
        try {
            try {
                KeyStore keyStore = KeyStore.getInstance(C2496j.f8111e);
                inputStream = context.getAssets().open("hmsrootcas.bks");
                try {
                    inputStream.reset();
                    keyStore.load(inputStream, "".toCharArray());
                    inputStream2 = inputStream;
                    x509Certificate = (X509Certificate) keyStore.getCertificate(C2496j.f8112f);
                } catch (IOException e2) {
                    e = e2;
                    InputStream inputStream3 = inputStream;
                    StringBuilder sb = new StringBuilder();
                    InputStream inputStream4 = inputStream;
                    sb.append("loadBksCA: exception : ");
                    InputStream inputStream5 = inputStream;
                    sb.append(e.getMessage());
                    inputStream2 = inputStream;
                    C2493g.m36956b(f8096a, sb.toString());
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                } catch (KeyStoreException e3) {
                    e = e3;
                    InputStream inputStream32 = inputStream;
                    StringBuilder sb2 = new StringBuilder();
                    InputStream inputStream42 = inputStream;
                    sb2.append("loadBksCA: exception : ");
                    InputStream inputStream52 = inputStream;
                    sb2.append(e.getMessage());
                    inputStream2 = inputStream;
                    C2493g.m36956b(f8096a, sb2.toString());
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                } catch (NoSuchAlgorithmException e4) {
                    e = e4;
                    InputStream inputStream322 = inputStream;
                    StringBuilder sb22 = new StringBuilder();
                    InputStream inputStream422 = inputStream;
                    sb22.append("loadBksCA: exception : ");
                    InputStream inputStream522 = inputStream;
                    sb22.append(e.getMessage());
                    inputStream2 = inputStream;
                    C2493g.m36956b(f8096a, sb22.toString());
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                } catch (CertificateException e5) {
                    e = e5;
                    InputStream inputStream3222 = inputStream;
                    StringBuilder sb222 = new StringBuilder();
                    InputStream inputStream4222 = inputStream;
                    sb222.append("loadBksCA: exception : ");
                    InputStream inputStream5222 = inputStream;
                    sb222.append(e.getMessage());
                    inputStream2 = inputStream;
                    C2493g.m36956b(f8096a, sb222.toString());
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC2492f.m36968a(inputStream2);
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            inputStream = null;
            InputStream inputStream32222 = inputStream;
            StringBuilder sb2222 = new StringBuilder();
            InputStream inputStream42222 = inputStream;
            sb2222.append("loadBksCA: exception : ");
            InputStream inputStream52222 = inputStream;
            sb2222.append(e.getMessage());
            inputStream2 = inputStream;
            C2493g.m36956b(f8096a, sb2222.toString());
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (KeyStoreException e7) {
            e = e7;
            inputStream = null;
            InputStream inputStream322222 = inputStream;
            StringBuilder sb22222 = new StringBuilder();
            InputStream inputStream422222 = inputStream;
            sb22222.append("loadBksCA: exception : ");
            InputStream inputStream522222 = inputStream;
            sb22222.append(e.getMessage());
            inputStream2 = inputStream;
            C2493g.m36956b(f8096a, sb22222.toString());
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            inputStream = null;
            InputStream inputStream3222222 = inputStream;
            StringBuilder sb222222 = new StringBuilder();
            InputStream inputStream4222222 = inputStream;
            sb222222.append("loadBksCA: exception : ");
            InputStream inputStream5222222 = inputStream;
            sb222222.append(e.getMessage());
            inputStream2 = inputStream;
            C2493g.m36956b(f8096a, sb222222.toString());
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (CertificateException e9) {
            e = e9;
            inputStream = null;
            InputStream inputStream32222222 = inputStream;
            StringBuilder sb2222222 = new StringBuilder();
            InputStream inputStream42222222 = inputStream;
            sb2222222.append("loadBksCA: exception : ");
            InputStream inputStream52222222 = inputStream;
            sb2222222.append(e.getMessage());
            inputStream2 = inputStream;
            C2493g.m36956b(f8096a, sb2222222.toString());
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (Throwable th3) {
            th = th3;
            AbstractC2492f.m36968a(inputStream2);
            throw th;
        }
        AbstractC2492f.m36968a(inputStream);
        return x509Certificate;
    }
}
