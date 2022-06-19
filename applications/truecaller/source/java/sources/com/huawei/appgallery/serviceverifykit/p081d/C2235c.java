package com.huawei.appgallery.serviceverifykit.p081d;

import android.text.TextUtils;
import com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.ByteArrayInputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.appgallery.serviceverifykit.d.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/d/c.class */
public class C2235c {
    /* renamed from: a */
    private static String m38221a(String str, String str2) {
        String upperCase = str.toUpperCase(Locale.getDefault());
        int indexOf = upperCase.indexOf(str2 + ContainerUtils.KEY_VALUE_DELIMITER);
        if (indexOf == -1) {
            return null;
        }
        int indexOf2 = str.indexOf(",", indexOf);
        int length = str2.length() + indexOf + 1;
        return indexOf2 != -1 ? str.substring(length, indexOf2) : str.substring(length);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.cert.X509Certificate m38223a(android.content.Context r5) {
        /*
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r6 = r0
            r0 = r6
            r1 = r5
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Exception -> L14 android.content.pm.PackageManager.NameNotFoundException -> L1f
            r2 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r1, r2)     // Catch: java.lang.Exception -> L14 android.content.pm.PackageManager.NameNotFoundException -> L1f
            r5 = r0
            goto L31
        L14:
            r5 = move-exception
            com.huawei.appgallery.serviceverifykit.d.d.b r0 = com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b.f7220b
            r6 = r0
            java.lang.String r0 = "PackageInfo with Exception:"
            r7 = r0
            goto L27
        L1f:
            r5 = move-exception
            com.huawei.appgallery.serviceverifykit.d.d.b r0 = com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b.f7220b
            r6 = r0
            java.lang.String r0 = "PackageInfo with NameNotFoundException:"
            r7 = r0
        L27:
            r0 = r6
            java.lang.String r1 = "X509CertUtil"
            r2 = r7
            r3 = r5
            r0.m38208a(r1, r2, r3)
            r0 = 0
            r5 = r0
        L31:
            r0 = r5
            if (r0 == 0) goto L6b
            r0 = r5
            android.os.Bundle r0 = r0.metaData
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L4e
            com.huawei.appgallery.serviceverifykit.d.d.b r0 = com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b.f7220b
            r6 = r0
            java.lang.String r0 = "failed getCBGRootCA metaData is null"
            r5 = r0
        L45:
            r0 = r6
            java.lang.String r1 = "X509CertUtil"
            r2 = r5
            r0.m38209a(r1, r2)
            r0 = 0
            return r0
        L4e:
            r0 = r5
            java.lang.String r1 = "componentverify_ag_cbg_root"
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L66
            com.huawei.appgallery.serviceverifykit.d.d.b r0 = com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b.f7220b
            r6 = r0
            java.lang.String r0 = "failed getCBGRootCA sdkCbgRoot is null"
            r5 = r0
            goto L45
        L66:
            r0 = r5
            java.security.cert.X509Certificate r0 = m38222a(r0)
            return r0
        L6b:
            com.huawei.appgallery.serviceverifykit.d.d.b r0 = com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b.f7220b
            r6 = r0
            java.lang.String r0 = "failed getCBGRootCA packageInfo is null"
            r5 = r0
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.appgallery.serviceverifykit.p081d.C2235c.m38223a(android.content.Context):java.security.cert.X509Certificate");
    }

    /* renamed from: a */
    private static X509Certificate m38222a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return m38214a(C2233a.m38228a(str));
    }

    /* renamed from: a */
    private static X509Certificate m38214a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            Certificate generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
            if (!(generateCertificate instanceof X509Certificate)) {
                return null;
            }
            return (X509Certificate) generateCertificate;
        } catch (CertificateException e) {
            C2237b c2237b = C2237b.f7220b;
            StringBuilder m8728C = C22128a.m8728C("Failed to get cert: ");
            m8728C.append(e.getMessage());
            c2237b.m38209a("X509CertUtil", m8728C.toString());
            return null;
        }
    }

    /* renamed from: a */
    private static boolean m38220a(X509Certificate x509Certificate) {
        if (x509Certificate == null || x509Certificate.getBasicConstraints() == -1) {
            return false;
        }
        return x509Certificate.getKeyUsage()[5];
    }

    /* renamed from: a */
    public static boolean m38219a(X509Certificate x509Certificate, String str) {
        return m38218a(x509Certificate, "CN", str);
    }

    /* renamed from: a */
    private static boolean m38218a(X509Certificate x509Certificate, String str, String str2) {
        if (x509Certificate == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals(m38221a(x509Certificate.getSubjectDN().getName(), str));
    }

    /* renamed from: a */
    public static boolean m38217a(X509Certificate x509Certificate, List<X509Certificate> list) {
        if (list == null || list.size() == 0) {
            return false;
        }
        if (x509Certificate == null) {
            C2237b.f7220b.m38209a("X509CertUtil", "rootCert is null,verify failed ");
            return false;
        }
        try {
            x509Certificate.checkValidity();
            PublicKey publicKey = x509Certificate.getPublicKey();
            int size = list.size();
            while (true) {
                size--;
                if (size < 0) {
                    return m38215a(list);
                }
                X509Certificate x509Certificate2 = list.get(size);
                if (x509Certificate2 == null) {
                    return false;
                }
                try {
                    x509Certificate2.verify(publicKey);
                    x509Certificate2.checkValidity();
                    publicKey = x509Certificate2.getPublicKey();
                } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchProviderException | SignatureException | CertificateException e) {
                    C2237b c2237b = C2237b.f7220b;
                    StringBuilder m8728C = C22128a.m8728C("verify failed ");
                    m8728C.append(e.getMessage());
                    c2237b.m38209a("X509CertUtil", m8728C.toString());
                    return false;
                }
            }
        } catch (CertificateExpiredException | CertificateNotYetValidException e2) {
            C2237b c2237b2 = C2237b.f7220b;
            StringBuilder m8728C2 = C22128a.m8728C("verifyCertChain Exception:");
            m8728C2.append(e2.getMessage());
            c2237b2.m38209a("X509CertUtil", m8728C2.toString());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m38216a(X509Certificate x509Certificate, byte[] bArr, byte[] bArr2) {
        if (x509Certificate == null || bArr == null || bArr2 == null || bArr2.length == 0) {
            C2237b.f7220b.m38206c("X509CertUtil", "checkSignature parameter is null");
            return false;
        }
        try {
            Signature signature = Signature.getInstance(x509Certificate.getSigAlgName());
            signature.initVerify(x509Certificate.getPublicKey());
            signature.update(bArr);
            return signature.verify(bArr2);
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e) {
            C2237b.f7220b.m38208a("X509CertUtil", "failed checkSignature,Exception:", e);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m38215a(List<X509Certificate> list) {
        for (int i = 1; i < list.size(); i++) {
            if (!m38220a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static List<X509Certificate> m38213b(String str) {
        return m38211b(m38210c(str));
    }

    /* renamed from: b */
    private static List<X509Certificate> m38211b(List<String> list) {
        if (list == null) {
            C2237b.f7220b.m38206c("X509CertUtil", "base64 CertChain is null.");
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            X509Certificate m38222a = m38222a(str);
            if (m38222a == null) {
                C2237b.f7220b.m38209a("X509CertUtil", "Failed to get cert from CertChain");
            } else {
                arrayList.add(m38222a);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m38212b(X509Certificate x509Certificate, String str) {
        return m38218a(x509Certificate, "OU", str);
    }

    /* renamed from: c */
    private static List<String> m38210c(String str) {
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
            C2237b c2237b = C2237b.f7220b;
            StringBuilder m8728C = C22128a.m8728C("Failed to getCertChain: ");
            m8728C.append(e.getMessage());
            c2237b.m38209a("X509CertUtil", m8728C.toString());
            return Collections.emptyList();
        }
    }
}
