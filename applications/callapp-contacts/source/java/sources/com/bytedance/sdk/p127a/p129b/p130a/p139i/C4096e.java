package com.bytedance.sdk.p127a.p129b.p130a.p139i;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* renamed from: com.bytedance.sdk.a.b.a.i.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/e.class */
public final class C4096e implements HostnameVerifier {

    /* renamed from: a */
    public static final C4096e f14875a = new C4096e();

    private C4096e() {
    }

    /* renamed from: a */
    public static List<String> m36619a(X509Certificate x509Certificate) {
        List<String> m36618a = m36618a(x509Certificate, 7);
        List<String> m36618a2 = m36618a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m36618a.size() + m36618a2.size());
        arrayList.addAll(m36618a);
        arrayList.addAll(m36618a2);
        return arrayList;
    }

    /* renamed from: a */
    private static List<String> m36618a(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException e) {
            return Collections.emptyList();
        }
    }

    /* renamed from: b */
    private boolean m36617b(String str, X509Certificate x509Certificate) {
        List<String> m36618a = m36618a(x509Certificate, 7);
        int size = m36618a.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(m36618a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private boolean m36616c(String str, X509Certificate x509Certificate) {
        String m36627a;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> m36618a = m36618a(x509Certificate, 2);
        int size = m36618a.size();
        int i = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i >= size) {
                if (!z2 && (m36627a = new C4095d(x509Certificate.getSubjectX500Principal()).m36627a("cn")) != null) {
                    return m36621a(lowerCase, m36627a);
                }
                return false;
            } else if (m36621a(lowerCase, m36618a.get(i))) {
                return true;
            } else {
                i++;
                z = true;
            }
        }
    }

    /* renamed from: a */
    public final boolean m36621a(String str, String str2) {
        if (str == null || str.length() == 0 || str.startsWith(".") || str.endsWith("..") || str2 == null || str2.length() == 0 || str2.startsWith(".") || str2.endsWith("..")) {
            return false;
        }
        String str3 = str;
        if (!str.endsWith(".")) {
            str3 = str + '.';
        }
        String str4 = str2;
        if (!str2.endsWith(".")) {
            str4 = str2 + '.';
        }
        String lowerCase = str4.toLowerCase(Locale.US);
        if (!lowerCase.contains("*")) {
            return str3.equals(lowerCase);
        }
        if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str3.length() < lowerCase.length() || "*.".equals(lowerCase)) {
            return false;
        }
        String substring = lowerCase.substring(1);
        if (!str3.endsWith(substring)) {
            return false;
        }
        int length = str3.length() - substring.length();
        return length <= 0 || str3.lastIndexOf(46, length - 1) == -1;
    }

    /* renamed from: a */
    public final boolean m36620a(String str, X509Certificate x509Certificate) {
        return C4015c.m36891c(str) ? m36617b(str, x509Certificate) : m36616c(str, x509Certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            return m36620a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }
}
