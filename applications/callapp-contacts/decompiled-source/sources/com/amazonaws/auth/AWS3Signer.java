package com.amazonaws.auth;

import com.amazonaws.Request;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS3Signer.class */
public class AWS3Signer extends AbstractAWSSigner {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6546b = LogFactory.a(AWS3Signer.class);

    /* renamed from: a  reason: collision with root package name */
    private String f6547a;

    private static String a(Request<?> request) {
        StringBuilder sb = new StringBuilder();
        sb.append("SignedHeaders=");
        boolean z = true;
        for (String str : f(request)) {
            if (!z) {
                sb.append(";");
            }
            sb.append(str);
            z = false;
        }
        return sb.toString();
    }

    private static List<String> f(Request<?> request) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : request.b().entrySet()) {
            String key = entry.getKey();
            String b2 = StringUtils.b(key);
            if (b2.startsWith("x-amz") || "host".equals(b2)) {
                arrayList.add(key);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static String g(Request<?> request) {
        List<String> f = f(request);
        for (int i = 0; i < f.size(); i++) {
            f.set(i, StringUtils.b(f.get(i)));
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : request.b().entrySet()) {
            if (f.contains(StringUtils.b(entry.getKey()))) {
                treeMap.put(StringUtils.b(entry.getKey()), entry.getValue());
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb.append(StringUtils.b((String) entry2.getKey()));
            sb.append(":");
            sb.append((String) entry2.getValue());
            sb.append(org.apache.commons.lang3.StringUtils.LF);
        }
        return sb.toString();
    }

    @Override // com.amazonaws.auth.Signer
    public final void a(Request<?> request, AWSCredentials aWSCredentials) {
        if (!(aWSCredentials instanceof AnonymousAWSCredentials)) {
            AWSCredentials a2 = a(aWSCredentials);
            SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
            UUID.randomUUID();
            String b2 = DateUtils.b(a(e(request)));
            String str = this.f6547a;
            if (str != null) {
                b2 = str;
            }
            request.a("Date", b2);
            request.a("X-Amz-Date", b2);
            String host = request.f().getHost();
            String str2 = host;
            if (HttpUtils.a(request.f())) {
                str2 = host + ":" + request.f().getPort();
            }
            request.a("Host", str2);
            if (a2 instanceof AWSSessionCredentials) {
                a(request, (AWSSessionCredentials) a2);
            }
            String a3 = HttpUtils.a(request.f().getPath(), request.c());
            String str3 = request.e().toString() + org.apache.commons.lang3.StringUtils.LF + d(a3) + org.apache.commons.lang3.StringUtils.LF + a(request.d()) + org.apache.commons.lang3.StringUtils.LF + g(request) + org.apache.commons.lang3.StringUtils.LF + c(request);
            byte[] c2 = c(str3);
            f6546b.b("Calculated StringToSign: ".concat(String.valueOf(str3)));
            String a4 = a(c2, a2.b(), signingAlgorithm);
            StringBuilder sb = new StringBuilder();
            sb.append("AWS3 ");
            sb.append("AWSAccessKeyId=" + a2.a() + ",");
            sb.append("Algorithm=" + signingAlgorithm.toString() + ",");
            sb.append(a(request) + ",");
            sb.append("Signature=".concat(String.valueOf(a4)));
            request.a("X-Amzn-Authorization", sb.toString());
        }
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected final void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.a("x-amz-security-token", aWSSessionCredentials.c());
    }
}
