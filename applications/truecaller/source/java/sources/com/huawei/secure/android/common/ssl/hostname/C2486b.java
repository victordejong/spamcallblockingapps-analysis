package com.huawei.secure.android.common.ssl.hostname;

import com.huawei.secure.android.common.ssl.util.C2493g;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.secure.android.common.ssl.hostname.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/hostname/b.class */
public class C2486b {

    /* renamed from: a */
    private static final Pattern f8076a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b */
    private static final String[] f8077b;

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        f8077b = strArr;
        Arrays.sort(strArr);
    }

    /* renamed from: a */
    public static final void m37009a(String str, X509Certificate x509Certificate, boolean z) throws SSLException {
        String[] m37007a = m37007a(x509Certificate);
        String[] m37005b = m37005b(x509Certificate);
        StringBuilder m8728C = C22128a.m8728C("cn is : ");
        m8728C.append(Arrays.toString(m37007a));
        C2493g.m36958a("", m8728C.toString());
        C2493g.m36958a("", "san is : " + Arrays.toString(m37005b));
        m37008a(str, m37007a, m37005b, z);
    }

    /* renamed from: a */
    public static final void m37008a(String str, String[] strArr, String[] strArr2, boolean z) throws SSLException {
        boolean z2;
        LinkedList linkedList = new LinkedList();
        if (strArr != null && strArr.length > 0 && strArr[0] != null) {
            linkedList.add(strArr[0]);
        }
        if (strArr2 != null) {
            for (String str2 : strArr2) {
                if (str2 != null) {
                    linkedList.add(str2);
                }
            }
        }
        if (!linkedList.isEmpty()) {
            StringBuffer stringBuffer = new StringBuffer();
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            Iterator it = linkedList.iterator();
            boolean z3 = false;
            do {
                z2 = z3;
                if (!it.hasNext()) {
                    break;
                }
                String lowerCase2 = ((String) it.next()).toLowerCase(Locale.ENGLISH);
                stringBuffer.append(" <");
                stringBuffer.append(lowerCase2);
                stringBuffer.append('>');
                if (it.hasNext()) {
                    stringBuffer.append(" OR");
                }
                if (lowerCase2.startsWith("*.") && lowerCase2.indexOf(46, 2) != -1 && m37010a(lowerCase2) && !m37004c(str)) {
                    z2 = lowerCase.endsWith(lowerCase2.substring(1));
                    if (z2 && z) {
                        z2 = m37006b(lowerCase) == m37006b(lowerCase2);
                    }
                } else {
                    z2 = lowerCase.equals(lowerCase2);
                }
                z3 = z2;
            } while (!z2);
            if (z2) {
                return;
            }
            throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) stringBuffer));
        }
        throw new SSLException(C22128a.m8725C2("Certificate for <", str, "> doesn't contain CN or DNS subjectAlt"));
    }

    /* renamed from: a */
    public static boolean m37010a(String str) {
        int length = str.length();
        boolean z = true;
        if (length >= 7) {
            z = true;
            if (length <= 9) {
                int i = length - 3;
                z = true;
                if (str.charAt(i) == '.') {
                    z = Arrays.binarySearch(f8077b, str.substring(2, i)) < 0;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public static String[] m37007a(X509Certificate x509Certificate) {
        List<String> m37015b = new C2485a(x509Certificate.getSubjectX500Principal()).m37015b("cn");
        if (!m37015b.isEmpty()) {
            String[] strArr = new String[m37015b.size()];
            m37015b.toArray(strArr);
            return strArr;
        }
        return null;
    }

    /* renamed from: b */
    public static int m37006b(String str) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < str.length()) {
                int i4 = i3;
                if (str.charAt(i) == '.') {
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: b */
    public static String[] m37005b(X509Certificate x509Certificate) {
        Collection<List<?>> collection;
        LinkedList linkedList = new LinkedList();
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e) {
            C2493g.m36957a("", "Error parsing certificate.", e);
            collection = null;
        }
        if (collection != null) {
            for (List<?> list : collection) {
                if (((Integer) list.get(0)).intValue() == 2) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (!linkedList.isEmpty()) {
            String[] strArr = new String[linkedList.size()];
            linkedList.toArray(strArr);
            return strArr;
        }
        return null;
    }

    /* renamed from: c */
    private static boolean m37004c(String str) {
        return f8076a.matcher(str).matches();
    }
}
