package p310z9;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import p214q9.C4171c;
/* renamed from: z9.d */
/* loaded from: classes2-dex2jar.jar:z9/d.class */
public final class C5119d implements HostnameVerifier {

    /* renamed from: a */
    public static final C5119d f15486a = new C5119d();

    /* renamed from: a */
    public static List<String> m3a(X509Certificate x509Certificate) {
        List<String> m2b = m2b(x509Certificate, 7);
        List<String> m2b2 = m2b(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m2b2.size() + m2b.size());
        arrayList.addAll(m2b);
        arrayList.addAll(m2b2);
        return arrayList;
    }

    /* renamed from: b */
    public static List<String> m2b(X509Certificate x509Certificate, int i) {
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

    /* renamed from: c */
    public boolean m1c(String str, X509Certificate x509Certificate) {
        boolean z;
        boolean z2;
        String str2;
        int length;
        if (C4171c.f13151h.matcher(str).matches()) {
            List<String> m2b = m2b(x509Certificate, 7);
            int size = m2b.size();
            int i = 0;
            while (true) {
                z = false;
                if (i >= size) {
                    break;
                } else if (str.equalsIgnoreCase(m2b.get(i))) {
                    break;
                } else {
                    i++;
                }
            }
            z = true;
        } else {
            String lowerCase = str.toLowerCase(Locale.US);
            Iterator<String> it2 = m2b(x509Certificate, 2).iterator();
            do {
                z = false;
                if (!it2.hasNext()) {
                    break;
                }
                String next = it2.next();
                if (lowerCase != null && lowerCase.length() != 0 && !lowerCase.startsWith(".") && !lowerCase.endsWith("..") && next != null && next.length() != 0 && !next.startsWith(".") && !next.endsWith("..")) {
                    if (!lowerCase.endsWith(".")) {
                        str2 = lowerCase + '.';
                    } else {
                        str2 = lowerCase;
                    }
                    String str3 = next;
                    if (!next.endsWith(".")) {
                        str3 = next + '.';
                    }
                    String lowerCase2 = str3.toLowerCase(Locale.US);
                    if (!lowerCase2.contains("*")) {
                        z2 = str2.equals(lowerCase2);
                    } else if (lowerCase2.startsWith("*.") && lowerCase2.indexOf(42, 1) == -1 && str2.length() >= lowerCase2.length() && !"*.".equals(lowerCase2)) {
                        String substring = lowerCase2.substring(1);
                        if (str2.endsWith(substring) && ((length = str2.length() - substring.length()) <= 0 || str2.lastIndexOf(46, length - 1) == -1)) {
                            z2 = true;
                        }
                    }
                }
                z2 = false;
            } while (!z2);
            z = true;
        }
        return z;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return m1c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }
}
