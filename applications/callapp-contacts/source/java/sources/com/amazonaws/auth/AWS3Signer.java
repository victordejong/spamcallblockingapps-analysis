package com.amazonaws.auth;

import com.amazonaws.Request;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS3Signer.class */
public class AWS3Signer extends AbstractAWSSigner {

    /* renamed from: b */
    private static final Log f11969b = LogFactory.m38584a(AWS3Signer.class);

    /* renamed from: a */
    private String f11970a;

    /* renamed from: a */
    private static String m38695a(Request<?> request) {
        StringBuilder sb = new StringBuilder();
        sb.append("SignedHeaders=");
        Iterator<String> it2 = m38694f(request).iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                String next = it2.next();
                if (!z2) {
                    sb.append(";");
                }
                sb.append(next);
                z = false;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: f */
    private static List<String> m38694f(Request<?> request) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : request.mo38711b().entrySet()) {
            String key = entry.getKey();
            String m38227b = StringUtils.m38227b(key);
            if (m38227b.startsWith("x-amz") || "host".equals(m38227b)) {
                arrayList.add(key);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: g */
    private static String m38693g(Request<?> request) {
        List<String> m38694f = m38694f(request);
        for (int i = 0; i < m38694f.size(); i++) {
            m38694f.set(i, StringUtils.m38227b(m38694f.get(i)));
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : request.mo38711b().entrySet()) {
            if (m38694f.contains(StringUtils.m38227b(entry.getKey()))) {
                treeMap.put(StringUtils.m38227b(entry.getKey()), entry.getValue());
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb.append(StringUtils.m38227b((String) entry2.getKey()));
            sb.append(":");
            sb.append((String) entry2.getValue());
            sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
        }
        return sb.toString();
    }

    @Override // com.amazonaws.auth.Signer
    /* renamed from: a */
    public final void mo38410a(Request<?> request, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials a = m38683a(aWSCredentials);
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        UUID.randomUUID();
        String m38250b = DateUtils.m38250b(m38685a(m38668e(request)));
        String str = this.f11970a;
        if (str != null) {
            m38250b = str;
        }
        request.mo38714a("Date", m38250b);
        request.mo38714a("X-Amz-Date", m38250b);
        String host = request.mo38705f().getHost();
        String str2 = host;
        if (HttpUtils.m38242a(request.mo38705f())) {
            str2 = host + ":" + request.mo38705f().getPort();
        }
        request.mo38714a("Host", str2);
        if (a instanceof AWSSessionCredentials) {
            mo38409a(request, (AWSSessionCredentials) a);
        }
        String m38245a = HttpUtils.m38245a(request.mo38705f().getPath(), request.mo38708c());
        String str3 = request.mo38706e().toString() + org.apache.commons.lang3.StringUtils.f67179LF + m38669d(m38245a) + org.apache.commons.lang3.StringUtils.f67179LF + m38677a(request.mo38707d()) + org.apache.commons.lang3.StringUtils.f67179LF + m38693g(request) + org.apache.commons.lang3.StringUtils.f67179LF + m38672c(request);
        byte[] c = m38671c(str3);
        f11969b.mo38593b("Calculated StringToSign: ".concat(String.valueOf(str3)));
        String a2 = m38675a(c, a.mo38658b(), signingAlgorithm);
        StringBuilder sb = new StringBuilder();
        sb.append("AWS3 ");
        sb.append("AWSAccessKeyId=" + a.mo38659a() + ",");
        sb.append("Algorithm=" + signingAlgorithm.toString() + ",");
        sb.append(m38695a(request) + ",");
        sb.append("Signature=".concat(String.valueOf(a2)));
        request.mo38714a("X-Amzn-Authorization", sb.toString());
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    /* renamed from: a */
    protected final void mo38409a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.mo38714a("x-amz-security-token", aWSSessionCredentials.mo38661c());
    }
}
