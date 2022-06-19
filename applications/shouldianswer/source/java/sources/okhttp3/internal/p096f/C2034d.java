package okhttp3.internal.p096f;

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
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.internal.f.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/f/d.class */
public final class C2034d implements HostnameVerifier {

    /* renamed from: a */
    public static final C2034d f5106a = new C2034d();

    private C2034d() {
    }

    /* renamed from: a */
    public static List<String> m2216a(X509Certificate x509Certificate) {
        List<String> m2215a = m2215a(x509Certificate, 7);
        List<String> m2215a2 = m2215a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m2215a.size() + m2215a2.size());
        arrayList.addAll(m2215a);
        arrayList.addAll(m2215a2);
        return arrayList;
    }

    /* renamed from: a */
    private static List<String> m2215a(X509Certificate x509Certificate, int i) {
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
    private boolean m2214b(String str, X509Certificate x509Certificate) {
        List<String> m2215a = m2215a(x509Certificate, 7);
        int size = m2215a.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(m2215a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private boolean m2213c(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        for (String str2 : m2215a(x509Certificate, 2)) {
            if (m2218a(lowerCase, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m2218a(String str, String str2) {
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
    public boolean m2217a(String str, X509Certificate x509Certificate) {
        return C1999c.m2329c(str) ? m2214b(str, x509Certificate) : m2213c(str, x509Certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return m2217a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }
}
