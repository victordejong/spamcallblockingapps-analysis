package p599h.p600d0.p609m;

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
import p599h.p600d0.C10109c;
/* renamed from: h.d0.m.d */
/* loaded from: classes2-dex2jar.jar:h/d0/m/d.class */
public final class C10208d implements HostnameVerifier {

    /* renamed from: a */
    public static final C10208d f37674a = new C10208d();

    /* renamed from: a */
    public static List<String> m1064a(X509Certificate x509Certificate) {
        List<String> a = m1063a(x509Certificate, 7);
        List<String> a2 = m1063a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(a.size() + a2.size());
        arrayList.addAll(a);
        arrayList.addAll(a2);
        return arrayList;
    }

    /* renamed from: a */
    public static List<String> m1063a(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (!(list == null || list.size() < 2 || (num = (Integer) list.get(0)) == null || num.intValue() != i || (str = (String) list.get(1)) == null)) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException e) {
            return Collections.emptyList();
        }
    }

    /* renamed from: a */
    public boolean m1066a(String str, String str2) {
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
    public boolean m1065a(String str, X509Certificate x509Certificate) {
        return C10109c.m1435d(str) ? m1061c(str, x509Certificate) : m1062b(str, x509Certificate);
    }

    /* renamed from: b */
    public final boolean m1062b(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        for (String str2 : m1063a(x509Certificate, 2)) {
            if (m1066a(lowerCase, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m1061c(String str, X509Certificate x509Certificate) {
        List<String> a = m1063a(x509Certificate, 7);
        int size = a.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(a.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return m1065a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }
}
