package okhttp3.internal.p197f;

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
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.internal.f.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/f/d.class */
public final class C5484d implements HostnameVerifier {

    /* renamed from: a */
    public static final C5484d f22880a = new C5484d();

    private C5484d() {
    }

    /* renamed from: a */
    public static List<String> m534a(X509Certificate x509Certificate) {
        List<String> m533a = m533a(x509Certificate, 7);
        List<String> m533a2 = m533a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m533a.size() + m533a2.size());
        arrayList.addAll(m533a);
        arrayList.addAll(m533a2);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.util.List] */
    /* renamed from: a */
    private static List<String> m533a(X509Certificate x509Certificate, int i) {
        ArrayList emptyList;
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                emptyList = Collections.emptyList();
            } else {
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                        arrayList.add(str);
                    }
                }
                emptyList = arrayList;
            }
        } catch (CertificateParsingException e) {
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    /* renamed from: b */
    private boolean m532b(String str, X509Certificate x509Certificate) {
        boolean z;
        List<String> m533a = m533a(x509Certificate, 7);
        int size = m533a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            } else if (str.equalsIgnoreCase(m533a.get(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: c */
    private boolean m531c(String str, X509Certificate x509Certificate) {
        boolean z;
        String lowerCase = str.toLowerCase(Locale.US);
        Iterator<String> it = m533a(x509Certificate, 2).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (m536a(lowerCase, it.next())) {
                z = true;
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
        if (r10.lastIndexOf(46, r0 - 1) == (-1)) goto L44;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m536a(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p197f.C5484d.m536a(java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: a */
    public boolean m535a(String str, X509Certificate x509Certificate) {
        return C5449c.m649c(str) ? m532b(str, x509Certificate) : m531c(str, x509Certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        boolean z;
        try {
            z = m535a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            z = false;
        }
        return z;
    }
}
