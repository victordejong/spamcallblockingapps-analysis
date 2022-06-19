package com.huawei.secure.android.common.ssl;

import android.content.Context;
import com.huawei.secure.android.common.ssl.util.AbstractC2492f;
import com.huawei.secure.android.common.ssl.util.BksUtil;
import com.huawei.secure.android.common.ssl.util.C2489c;
import com.huawei.secure.android.common.ssl.util.C2493g;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/SecureX509TrustManager.class */
public class SecureX509TrustManager implements X509TrustManager {

    /* renamed from: c */
    private static final String f8040c = SecureX509TrustManager.class.getSimpleName();

    /* renamed from: d */
    public static final String f8041d = "hmsrootcas.bks";

    /* renamed from: e */
    private static final String f8042e = "";

    /* renamed from: f */
    private static final String f8043f = "X509";

    /* renamed from: g */
    private static final String f8044g = "bks";

    /* renamed from: h */
    private static final String f8045h = "AndroidCAStore";

    /* renamed from: a */
    public List<X509TrustManager> f8046a;

    /* renamed from: b */
    private X509Certificate[] f8047b;

    public SecureX509TrustManager(Context context) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, IllegalArgumentException {
        this(context, false);
    }

    public SecureX509TrustManager(Context context, boolean z) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, IllegalArgumentException {
        this.f8046a = new ArrayList();
        if (context != null) {
            C2489c.m36978a(context);
            if (z) {
                m37026a();
            }
            m37025a(context);
            if (this.f8046a.isEmpty()) {
                throw new CertificateException("X509TrustManager is empty");
            }
            return;
        }
        throw new IllegalArgumentException("context is null");
    }

    public SecureX509TrustManager(InputStream inputStream, String str) throws IllegalArgumentException {
        this.f8046a = new ArrayList();
        m37023a(inputStream, str);
    }

    public SecureX509TrustManager(InputStream inputStream, String str, boolean z) throws IllegalArgumentException {
        this.f8046a = new ArrayList();
        if (z) {
            m37026a();
        }
        m37023a(inputStream, str);
    }

    public SecureX509TrustManager(String str) throws IllegalArgumentException, FileNotFoundException {
        this(str, false);
    }

    public SecureX509TrustManager(String str, boolean z) throws IllegalArgumentException, FileNotFoundException {
        FileInputStream fileInputStream;
        Throwable th;
        this.f8046a = new ArrayList();
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            m37023a(fileInputStream, "");
            AbstractC2492f.m36968a((InputStream) fileInputStream);
            if (!z) {
                return;
            }
            m37026a();
        } catch (Throwable th3) {
            th = th3;
            AbstractC2492f.m36968a((InputStream) fileInputStream);
            throw th;
        }
    }

    /* renamed from: a */
    private void m37026a() {
        C2493g.m36955c(f8040c, "loadSystemCA");
        long currentTimeMillis = System.currentTimeMillis();
        try {
            KeyStore keyStore = KeyStore.getInstance(f8045h);
            keyStore.load(null, null);
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(f8043f);
            trustManagerFactory.init(keyStore);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            for (int i = 0; i < trustManagers.length; i++) {
                if (trustManagers[i] instanceof X509TrustManager) {
                    this.f8046a.add((X509TrustManager) trustManagers[i]);
                }
            }
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            String str = f8040c;
            StringBuilder m8728C = C22128a.m8728C("loadSystemCA: exception : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str, m8728C.toString());
        }
        String str2 = f8040c;
        StringBuilder m8728C2 = C22128a.m8728C("loadSystemCA: cost : ");
        m8728C2.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C2.append(" ms");
        C2493g.m36958a(str2, m8728C2.toString());
    }

    /* renamed from: a */
    private void m37025a(Context context) throws CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException {
        boolean z;
        String str = f8040c;
        C2493g.m36955c(str, "loadBksCA");
        long currentTimeMillis = System.currentTimeMillis();
        InputStream filesBksIS = BksUtil.getFilesBksIS(context);
        if (filesBksIS != null) {
            try {
                C2493g.m36955c(str, "get bks not from assets");
                m37024a(filesBksIS);
            } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
                String str2 = f8040c;
                StringBuilder m8728C = C22128a.m8728C("loadBksCA: exception : ");
                m8728C.append(e.getMessage());
                C2493g.m36956b(str2, m8728C.toString());
                z = false;
            }
        }
        z = true;
        if (!z || filesBksIS == null) {
            C2493g.m36955c(f8040c, " get bks from assets ");
            m37024a(context.getAssets().open("hmsrootcas.bks"));
        }
        String str3 = f8040c;
        StringBuilder m8728C2 = C22128a.m8728C("loadBksCA: cost : ");
        m8728C2.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C2.append(" ms");
        C2493g.m36958a(str3, m8728C2.toString());
    }

    /* renamed from: a */
    private void m37024a(InputStream inputStream) throws NoSuchAlgorithmException, KeyStoreException, CertificateException, IOException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(f8043f);
            KeyStore keyStore = KeyStore.getInstance("bks");
            keyStore.load(inputStream, "".toCharArray());
            trustManagerFactory.init(keyStore);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            for (int i = 0; i < trustManagers.length; i++) {
                if (trustManagers[i] instanceof X509TrustManager) {
                    this.f8046a.add((X509TrustManager) trustManagers[i]);
                }
            }
        } finally {
            AbstractC2492f.m36968a(inputStream);
        }
    }

    /* renamed from: a */
    private void m37023a(InputStream inputStream, String str) {
        if (inputStream == null || str == null) {
            throw new IllegalArgumentException("inputstream or trustPwd is null");
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(f8043f);
                KeyStore keyStore = KeyStore.getInstance("bks");
                keyStore.load(inputStream, str.toCharArray());
                trustManagerFactory.init(keyStore);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                for (int i = 0; i < trustManagers.length; i++) {
                    if (trustManagers[i] instanceof X509TrustManager) {
                        this.f8046a.add((X509TrustManager) trustManagers[i]);
                    }
                }
                AbstractC2492f.m36968a(inputStream);
            } finally {
                AbstractC2492f.m36968a(inputStream);
            }
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            C2493g.m36956b(f8040c, "loadInputStream: exception : " + e.getMessage());
        }
        String str2 = f8040c;
        StringBuilder m8728C = C22128a.m8728C("loadInputStream: cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36958a(str2, m8728C.toString());
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        C2493g.m36955c(f8040c, "checkClientTrusted: ");
        for (X509TrustManager x509TrustManager : this.f8046a) {
            try {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e) {
                String str2 = f8040c;
                StringBuilder m8728C = C22128a.m8728C("checkServerTrusted CertificateException");
                m8728C.append(e.getMessage());
                C2493g.m36956b(str2, m8728C.toString());
            }
        }
        throw new CertificateException("checkServerTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        setChain(x509CertificateArr);
        String str2 = f8040c;
        StringBuilder m8728C = C22128a.m8728C("checkServerTrusted begin ,server ca chain size is : ");
        m8728C.append(x509CertificateArr.length);
        m8728C.append(" ,auth type is : ");
        m8728C.append(str);
        C2493g.m36955c(str2, m8728C.toString());
        long currentTimeMillis = System.currentTimeMillis();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            String str3 = f8040c;
            StringBuilder m8728C2 = C22128a.m8728C("server ca chain: getSubjectDN is :");
            m8728C2.append(x509Certificate.getSubjectDN());
            C2493g.m36958a(str3, m8728C2.toString());
            C2493g.m36958a(str3, "IssuerDN :" + x509Certificate.getIssuerDN());
            C2493g.m36958a(str3, "SerialNumber : " + x509Certificate.getSerialNumber());
        }
        int size = this.f8046a.size();
        for (int i = 0; i < size; i++) {
            try {
                String str4 = f8040c;
                C2493g.m36955c(str4, "check server i : " + i);
                X509TrustManager x509TrustManager = this.f8046a.get(i);
                X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
                if (acceptedIssuers != null) {
                    C2493g.m36955c(str4, "client root ca size is : " + acceptedIssuers.length);
                    for (int i2 = 0; i2 < acceptedIssuers.length; i2++) {
                        C2493g.m36958a(f8040c, "client root ca getIssuerDN :" + acceptedIssuers[i2].getIssuerDN());
                    }
                }
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                C2493g.m36955c(f8040c, "checkServerTrusted succeed ,root ca issuer is : " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                return;
            } catch (CertificateException e) {
                String str5 = f8040c;
                StringBuilder m8728C3 = C22128a.m8728C("checkServerTrusted error :");
                m8728C3.append(e.getMessage());
                m8728C3.append(" , time : ");
                m8728C3.append(i);
                C2493g.m36956b(str5, m8728C3.toString());
                if (i == size - 1) {
                    if (x509CertificateArr.length > 0) {
                        StringBuilder m8728C4 = C22128a.m8728C("root ca issuer : ");
                        m8728C4.append(x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                        C2493g.m36956b(str5, m8728C4.toString());
                    }
                    throw e;
                }
            }
        }
        String str6 = f8040c;
        StringBuilder m8728C5 = C22128a.m8728C("checkServerTrusted: cost : ");
        m8728C5.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C5.append(" ms");
        C2493g.m36958a(str6, m8728C5.toString());
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        try {
            ArrayList arrayList = new ArrayList();
            for (X509TrustManager x509TrustManager : this.f8046a) {
                arrayList.addAll(Arrays.asList(x509TrustManager.getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (Exception e) {
            String str = f8040c;
            StringBuilder m8728C = C22128a.m8728C("getAcceptedIssuers exception : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str, m8728C.toString());
            return new X509Certificate[0];
        }
    }

    public X509Certificate[] getChain() {
        return this.f8047b;
    }

    public List<X509TrustManager> getX509TrustManagers() {
        return this.f8046a;
    }

    public void setChain(X509Certificate[] x509CertificateArr) {
        this.f8047b = x509CertificateArr;
    }

    public void setX509TrustManagers(List<X509TrustManager> list) {
        this.f8046a = list;
    }
}
