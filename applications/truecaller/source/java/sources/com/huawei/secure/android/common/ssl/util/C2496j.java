package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
/* renamed from: com.huawei.secure.android.common.ssl.util.j */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/j.class */
public class C2496j {

    /* renamed from: b */
    private static final String f8108b = "X509CertificateUtil";

    /* renamed from: c */
    public static final String f8109c = "hmsrootcas.bks";

    /* renamed from: d */
    public static final String f8110d = "";

    /* renamed from: e */
    public static final String f8111e = "bks";

    /* renamed from: f */
    public static final String f8112f = "052root";

    /* renamed from: g */
    private static final String f8113g = "hmsincas.bks";

    /* renamed from: h */
    private static final String f8114h = "huawei cbg application integration ca";

    /* renamed from: a */
    private Context f8115a;

    public C2496j(Context context) {
        this.f8115a = context;
    }

    /* renamed from: a */
    public X509Certificate m36941a() {
        return m36940a(f8113g, f8114h);
    }

    /* renamed from: a */
    public X509Certificate m36940a(String str, String str2) {
        Throwable th;
        X509Certificate x509Certificate;
        InputStream inputStream;
        InputStream inputStream2;
        NoSuchAlgorithmException e;
        InputStream inputStream3 = null;
        try {
            try {
                KeyStore keyStore = KeyStore.getInstance(f8111e);
                inputStream = this.f8115a.getAssets().open(str);
                try {
                    inputStream.reset();
                    keyStore.load(inputStream, "".toCharArray());
                    inputStream3 = inputStream;
                    x509Certificate = (X509Certificate) keyStore.getCertificate(str2);
                } catch (IOException e2) {
                    inputStream2 = inputStream;
                    e = e2;
                    InputStream inputStream4 = inputStream2;
                    StringBuilder sb = new StringBuilder();
                    InputStream inputStream5 = inputStream2;
                    sb.append("loadBksCA: exception : ");
                    InputStream inputStream6 = inputStream2;
                    sb.append(e.getMessage());
                    inputStream3 = inputStream2;
                    C2493g.m36956b(f8108b, sb.toString());
                    inputStream = inputStream2;
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                } catch (KeyStoreException e3) {
                    inputStream2 = inputStream;
                    e = e3;
                    InputStream inputStream42 = inputStream2;
                    StringBuilder sb2 = new StringBuilder();
                    InputStream inputStream52 = inputStream2;
                    sb2.append("loadBksCA: exception : ");
                    InputStream inputStream62 = inputStream2;
                    sb2.append(e.getMessage());
                    inputStream3 = inputStream2;
                    C2493g.m36956b(f8108b, sb2.toString());
                    inputStream = inputStream2;
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                } catch (NoSuchAlgorithmException e4) {
                    inputStream2 = inputStream;
                    e = e4;
                    InputStream inputStream422 = inputStream2;
                    StringBuilder sb22 = new StringBuilder();
                    InputStream inputStream522 = inputStream2;
                    sb22.append("loadBksCA: exception : ");
                    InputStream inputStream622 = inputStream2;
                    sb22.append(e.getMessage());
                    inputStream3 = inputStream2;
                    C2493g.m36956b(f8108b, sb22.toString());
                    inputStream = inputStream2;
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                } catch (CertificateException e5) {
                    inputStream2 = inputStream;
                    e = e5;
                    InputStream inputStream4222 = inputStream2;
                    StringBuilder sb222 = new StringBuilder();
                    InputStream inputStream5222 = inputStream2;
                    sb222.append("loadBksCA: exception : ");
                    InputStream inputStream6222 = inputStream2;
                    sb222.append(e.getMessage());
                    inputStream3 = inputStream2;
                    C2493g.m36956b(f8108b, sb222.toString());
                    inputStream = inputStream2;
                    x509Certificate = null;
                    AbstractC2492f.m36968a(inputStream);
                    return x509Certificate;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC2492f.m36968a(inputStream3);
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            inputStream2 = null;
            InputStream inputStream42222 = inputStream2;
            StringBuilder sb2222 = new StringBuilder();
            InputStream inputStream52222 = inputStream2;
            sb2222.append("loadBksCA: exception : ");
            InputStream inputStream62222 = inputStream2;
            sb2222.append(e.getMessage());
            inputStream3 = inputStream2;
            C2493g.m36956b(f8108b, sb2222.toString());
            inputStream = inputStream2;
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (KeyStoreException e7) {
            e = e7;
            inputStream2 = null;
            InputStream inputStream422222 = inputStream2;
            StringBuilder sb22222 = new StringBuilder();
            InputStream inputStream522222 = inputStream2;
            sb22222.append("loadBksCA: exception : ");
            InputStream inputStream622222 = inputStream2;
            sb22222.append(e.getMessage());
            inputStream3 = inputStream2;
            C2493g.m36956b(f8108b, sb22222.toString());
            inputStream = inputStream2;
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            inputStream2 = null;
            InputStream inputStream4222222 = inputStream2;
            StringBuilder sb222222 = new StringBuilder();
            InputStream inputStream5222222 = inputStream2;
            sb222222.append("loadBksCA: exception : ");
            InputStream inputStream6222222 = inputStream2;
            sb222222.append(e.getMessage());
            inputStream3 = inputStream2;
            C2493g.m36956b(f8108b, sb222222.toString());
            inputStream = inputStream2;
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (CertificateException e9) {
            e = e9;
            inputStream2 = null;
            InputStream inputStream42222222 = inputStream2;
            StringBuilder sb2222222 = new StringBuilder();
            InputStream inputStream52222222 = inputStream2;
            sb2222222.append("loadBksCA: exception : ");
            InputStream inputStream62222222 = inputStream2;
            sb2222222.append(e.getMessage());
            inputStream3 = inputStream2;
            C2493g.m36956b(f8108b, sb2222222.toString());
            inputStream = inputStream2;
            x509Certificate = null;
            AbstractC2492f.m36968a(inputStream);
            return x509Certificate;
        } catch (Throwable th3) {
            th = th3;
            AbstractC2492f.m36968a(inputStream3);
            throw th;
        }
        AbstractC2492f.m36968a(inputStream);
        return x509Certificate;
    }

    /* renamed from: b */
    public X509Certificate m36939b() {
        return m36940a("hmsrootcas.bks", f8112f);
    }
}
