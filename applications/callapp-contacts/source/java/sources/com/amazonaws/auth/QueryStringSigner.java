package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/QueryStringSigner.class */
public class QueryStringSigner extends AbstractAWSSigner implements Signer {

    /* renamed from: a */
    private Date f12017a;

    /* renamed from: b */
    private static String m38657b(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(map);
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append((String) entry.getKey());
            sb.append((String) entry.getValue());
        }
        return sb.toString();
    }

    @Override // com.amazonaws.auth.Signer
    /* renamed from: a */
    public final void mo38410a(Request<?> request, AWSCredentials aWSCredentials) {
        String str;
        String str2;
        SignatureVersion signatureVersion = SignatureVersion.V2;
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        if (!(aWSCredentials instanceof AnonymousAWSCredentials)) {
            AWSCredentials a = m38683a(aWSCredentials);
            request.mo38710b("AWSAccessKeyId", a.mo38659a());
            request.mo38710b("SignatureVersion", signatureVersion.toString());
            int e = m38668e(request);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            Date date = this.f12017a;
            request.mo38710b("Timestamp", date != null ? simpleDateFormat.format(date) : simpleDateFormat.format(m38685a(e)));
            if (a instanceof AWSSessionCredentials) {
                mo38409a(request, (AWSSessionCredentials) a);
            }
            if (signatureVersion.equals(SignatureVersion.V1)) {
                str = m38657b(request.mo38707d());
            } else if (!signatureVersion.equals(SignatureVersion.V2)) {
                throw new AmazonClientException("Invalid Signature Version specified");
            } else {
                request.mo38710b("SignatureMethod", signingAlgorithm.toString());
                URI mo38705f = request.mo38705f();
                Map<String, String> mo38707d = request.mo38707d();
                StringBuilder sb = new StringBuilder();
                sb.append("POST\n");
                String m38227b = StringUtils.m38227b(mo38705f.getHost());
                String str3 = m38227b;
                if (HttpUtils.m38242a(mo38705f)) {
                    str3 = m38227b + ":" + mo38705f.getPort();
                }
                sb.append(str3);
                sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                String str4 = "";
                if (request.mo38705f().getPath() != null) {
                    str4 = "" + request.mo38705f().getPath();
                }
                if (request.mo38708c() != null) {
                    String str5 = str4;
                    if (str4.length() > 0) {
                        str5 = str4;
                        if (!str4.endsWith("/")) {
                            str5 = str4;
                            if (!request.mo38708c().startsWith("/")) {
                                str5 = str4 + "/";
                            }
                        }
                    }
                    str2 = str5 + request.mo38708c();
                } else {
                    str2 = str4;
                    if (!str4.endsWith("/")) {
                        str2 = str4 + "/";
                    }
                }
                String str6 = str2;
                if (!str2.startsWith("/")) {
                    str6 = "/".concat(String.valueOf(str2));
                }
                String str7 = str6;
                if (str6.startsWith("//")) {
                    str7 = str6.substring(1);
                }
                sb.append(str7);
                sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                sb.append(m38677a(mo38707d));
                str = sb.toString();
            }
            request.mo38710b("Signature", m38680a(str, a.mo38658b(), signingAlgorithm));
        }
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    /* renamed from: a */
    protected final void mo38409a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.mo38710b("SecurityToken", aWSSessionCredentials.mo38661c());
    }
}
