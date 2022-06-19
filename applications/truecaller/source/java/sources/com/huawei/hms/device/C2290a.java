package com.huawei.hms.device;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.support.log.common.Base64;
import com.huawei.hms.utils.IOUtils;
import com.huawei.secure.android.common.ssl.util.C2496j;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.device.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/device/a.class */
public class C2290a {
    /* renamed from: a */
    public static String m38069a(String str, String str2) {
        String upperCase = str.toUpperCase(Locale.getDefault());
        int indexOf = upperCase.indexOf(str2 + ContainerUtils.KEY_VALUE_DELIMITER);
        if (indexOf == -1) {
            return null;
        }
        int indexOf2 = str.indexOf(",", indexOf);
        return indexOf2 != -1 ? str.substring(str2.length() + indexOf + 1, indexOf2) : str.substring(str2.length() + indexOf + 1);
    }

    /* renamed from: a */
    public static X509Certificate m38072a(Context context) {
        return m38071a(context, C2496j.f8112f);
    }

    /* renamed from: a */
    public static X509Certificate m38071a(Context context, String str) {
        Throwable th;
        InputStream inputStream;
        NoSuchAlgorithmException e;
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        KeyStore keyStore = KeyStore.getInstance(C2496j.f8111e);
                        InputStream open = context.getAssets().open("hmsrootcas.bks");
                        try {
                            keyStore.load(open, "".toCharArray());
                            if (!keyStore.containsAlias(str)) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Not include alias ");
                                sb.append(str);
                                HMSLog.m37195e("X509CertUtil", sb.toString());
                                IOUtils.closeQuietly(open);
                                return null;
                            }
                            Certificate certificate = keyStore.getCertificate(str);
                            if (!(certificate instanceof X509Certificate)) {
                                IOUtils.closeQuietly(open);
                                return null;
                            }
                            X509Certificate x509Certificate = (X509Certificate) certificate;
                            x509Certificate.checkValidity();
                            IOUtils.closeQuietly(open);
                            return x509Certificate;
                        } catch (IOException e2) {
                            inputStream = open;
                            e = e2;
                            InputStream inputStream2 = inputStream;
                            StringBuilder sb2 = new StringBuilder();
                            InputStream inputStream3 = inputStream;
                            sb2.append("exception:");
                            InputStream inputStream4 = inputStream;
                            sb2.append(e.getMessage());
                            InputStream inputStream5 = inputStream;
                            HMSLog.m37195e("X509CertUtil", sb2.toString());
                            IOUtils.closeQuietly(inputStream);
                            return null;
                        } catch (KeyStoreException e3) {
                            inputStream = open;
                            e = e3;
                            InputStream inputStream22 = inputStream;
                            StringBuilder sb22 = new StringBuilder();
                            InputStream inputStream32 = inputStream;
                            sb22.append("exception:");
                            InputStream inputStream42 = inputStream;
                            sb22.append(e.getMessage());
                            InputStream inputStream52 = inputStream;
                            HMSLog.m37195e("X509CertUtil", sb22.toString());
                            IOUtils.closeQuietly(inputStream);
                            return null;
                        } catch (NoSuchAlgorithmException e4) {
                            inputStream = open;
                            e = e4;
                            InputStream inputStream222 = inputStream;
                            StringBuilder sb222 = new StringBuilder();
                            InputStream inputStream322 = inputStream;
                            sb222.append("exception:");
                            InputStream inputStream422 = inputStream;
                            sb222.append(e.getMessage());
                            InputStream inputStream522 = inputStream;
                            HMSLog.m37195e("X509CertUtil", sb222.toString());
                            IOUtils.closeQuietly(inputStream);
                            return null;
                        } catch (CertificateException e5) {
                            inputStream = open;
                            e = e5;
                            InputStream inputStream2222 = inputStream;
                            StringBuilder sb2222 = new StringBuilder();
                            InputStream inputStream3222 = inputStream;
                            sb2222.append("exception:");
                            InputStream inputStream4222 = inputStream;
                            sb2222.append(e.getMessage());
                            InputStream inputStream5222 = inputStream;
                            HMSLog.m37195e("X509CertUtil", sb2222.toString());
                            IOUtils.closeQuietly(inputStream);
                            return null;
                        }
                    } catch (IOException e6) {
                        e = e6;
                        inputStream = null;
                        InputStream inputStream22222 = inputStream;
                        StringBuilder sb22222 = new StringBuilder();
                        InputStream inputStream32222 = inputStream;
                        sb22222.append("exception:");
                        InputStream inputStream42222 = inputStream;
                        sb22222.append(e.getMessage());
                        InputStream inputStream52222 = inputStream;
                        HMSLog.m37195e("X509CertUtil", sb22222.toString());
                        IOUtils.closeQuietly(inputStream);
                        return null;
                    } catch (KeyStoreException e7) {
                        e = e7;
                        inputStream = null;
                        InputStream inputStream222222 = inputStream;
                        StringBuilder sb222222 = new StringBuilder();
                        InputStream inputStream322222 = inputStream;
                        sb222222.append("exception:");
                        InputStream inputStream422222 = inputStream;
                        sb222222.append(e.getMessage());
                        InputStream inputStream522222 = inputStream;
                        HMSLog.m37195e("X509CertUtil", sb222222.toString());
                        IOUtils.closeQuietly(inputStream);
                        return null;
                    } catch (NoSuchAlgorithmException e8) {
                        e = e8;
                        inputStream = null;
                        InputStream inputStream2222222 = inputStream;
                        StringBuilder sb2222222 = new StringBuilder();
                        InputStream inputStream3222222 = inputStream;
                        sb2222222.append("exception:");
                        InputStream inputStream4222222 = inputStream;
                        sb2222222.append(e.getMessage());
                        InputStream inputStream5222222 = inputStream;
                        HMSLog.m37195e("X509CertUtil", sb2222222.toString());
                        IOUtils.closeQuietly(inputStream);
                        return null;
                    } catch (CertificateException e9) {
                        e = e9;
                        inputStream = null;
                        InputStream inputStream22222222 = inputStream;
                        StringBuilder sb22222222 = new StringBuilder();
                        InputStream inputStream32222222 = inputStream;
                        sb22222222.append("exception:");
                        InputStream inputStream42222222 = inputStream;
                        sb22222222.append(e.getMessage());
                        InputStream inputStream52222222 = inputStream;
                        HMSLog.m37195e("X509CertUtil", sb22222222.toString());
                        IOUtils.closeQuietly(inputStream);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly((InputStream) null);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        HMSLog.m37195e("X509CertUtil", "args are error");
        return null;
    }

    /* renamed from: a */
    public static X509Certificate m38070a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m38062a(Base64.decode(str));
        } catch (IllegalArgumentException e) {
            StringBuilder m8728C = C22128a.m8728C("getCert failed : ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("X509CertUtil", m8728C.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static X509Certificate m38062a(byte[] bArr) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
        } catch (CertificateException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to get cert: ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("X509CertUtil", m8728C.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m38068a(X509Certificate x509Certificate) {
        if (x509Certificate == null || x509Certificate.getBasicConstraints() == -1) {
            return false;
        }
        boolean[] keyUsage = x509Certificate.getKeyUsage();
        if (5 >= keyUsage.length) {
            return false;
        }
        return keyUsage[5];
    }

    /* renamed from: a */
    public static boolean m38067a(X509Certificate x509Certificate, String str) {
        return m38059b(x509Certificate, "CN", str);
    }

    /* renamed from: a */
    public static boolean m38066a(X509Certificate x509Certificate, String str, String str2) {
        try {
            return m38064a(x509Certificate, str.getBytes(StringConstant.UTF8), Base64.decode(str2));
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
            C22128a.m8735A0(e, C22128a.m8728C(" plainText exception: "), "X509CertUtil");
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m38065a(X509Certificate x509Certificate, List<X509Certificate> list) {
        if (list == null || list.size() == 0) {
            return false;
        }
        if (x509Certificate == null) {
            HMSLog.m37195e("X509CertUtil", "rootCert is null,verify failed ");
            return false;
        }
        PublicKey publicKey = x509Certificate.getPublicKey();
        for (X509Certificate x509Certificate2 : list) {
            if (x509Certificate2 == null) {
                return false;
            }
            try {
                x509Certificate2.checkValidity();
                x509Certificate2.verify(publicKey);
                publicKey = x509Certificate2.getPublicKey();
            } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | SignatureException | CertificateException e) {
                StringBuilder m8728C = C22128a.m8728C("verify failed ");
                m8728C.append(e.getMessage());
                HMSLog.m37195e("X509CertUtil", m8728C.toString());
                return false;
            }
        }
        return m38063a(list);
    }

    /* renamed from: a */
    public static boolean m38064a(X509Certificate x509Certificate, byte[] bArr, byte[] bArr2) {
        try {
            Signature signature = Signature.getInstance(x509Certificate.getSigAlgName());
            signature.initVerify(x509Certificate.getPublicKey());
            signature.update(bArr);
            return signature.verify(bArr2);
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            StringBuilder m8728C = C22128a.m8728C("failed checkSignature : ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("X509CertUtil", m8728C.toString());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m38063a(List<X509Certificate> list) {
        for (int i = 0; i < list.size() - 1; i++) {
            if (!m38068a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static List<X509Certificate> m38061b(String str) {
        return m38058b(m38057c(str));
    }

    /* renamed from: b */
    public static List<X509Certificate> m38058b(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            arrayList.add(m38070a(str));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m38060b(X509Certificate x509Certificate, String str) {
        return m38059b(x509Certificate, "OU", str);
    }

    /* renamed from: b */
    public static boolean m38059b(X509Certificate x509Certificate, String str, String str2) {
        if (x509Certificate == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals(m38069a(x509Certificate.getSubjectDN().getName(), str));
    }

    /* renamed from: c */
    public static List<String> m38057c(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() <= 1) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            return arrayList;
        } catch (JSONException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to getCertChain: ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("X509CertUtil", m8728C.toString());
            return Collections.emptyList();
        }
    }
}
