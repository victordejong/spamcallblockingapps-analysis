package com.squareup.okhttp.p089u.p091l;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
/* renamed from: com.squareup.okhttp.u.l.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/l/a.class */
public final class C2981a implements HostnameVerifier {

    /* renamed from: a */
    private static final Pattern f12537a = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: a */
    public static List<String> m632a(X509Certificate x509Certificate) {
        List<String> m631b = m631b(x509Certificate, 7);
        List<String> m631b2 = m631b(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m631b.size() + m631b2.size());
        arrayList.addAll(m631b);
        arrayList.addAll(m631b2);
        return arrayList;
    }

    /* renamed from: b */
    private static List<String> m631b(X509Certificate x509Certificate, int i) {
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
}
