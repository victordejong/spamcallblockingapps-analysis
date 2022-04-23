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

    /* renamed from: a  reason: collision with root package name */
    private Date f6580a;

    private static String b(Map<String, String> map) {
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
    public final void a(Request<?> request, AWSCredentials aWSCredentials) {
        String str;
        String str2;
        SignatureVersion signatureVersion = SignatureVersion.V2;
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        if (!(aWSCredentials instanceof AnonymousAWSCredentials)) {
            AWSCredentials a2 = a(aWSCredentials);
            request.b("AWSAccessKeyId", a2.a());
            request.b("SignatureVersion", signatureVersion.toString());
            int e = e(request);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            Date date = this.f6580a;
            request.b("Timestamp", date != null ? simpleDateFormat.format(date) : simpleDateFormat.format(a(e)));
            if (a2 instanceof AWSSessionCredentials) {
                a(request, (AWSSessionCredentials) a2);
            }
            if (signatureVersion.equals(SignatureVersion.V1)) {
                str = b(request.d());
            } else if (signatureVersion.equals(SignatureVersion.V2)) {
                request.b("SignatureMethod", signingAlgorithm.toString());
                URI f = request.f();
                Map<String, String> d2 = request.d();
                StringBuilder sb = new StringBuilder();
                sb.append("POST\n");
                String b2 = StringUtils.b(f.getHost());
                String str3 = b2;
                if (HttpUtils.a(f)) {
                    str3 = b2 + ":" + f.getPort();
                }
                sb.append(str3);
                sb.append(org.apache.commons.lang3.StringUtils.LF);
                String str4 = "";
                if (request.f().getPath() != null) {
                    str4 = "" + request.f().getPath();
                }
                if (request.c() != null) {
                    String str5 = str4;
                    if (str4.length() > 0) {
                        str5 = str4;
                        if (!str4.endsWith("/")) {
                            str5 = str4;
                            if (!request.c().startsWith("/")) {
                                str5 = str4 + "/";
                            }
                        }
                    }
                    str2 = str5 + request.c();
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
                sb.append(org.apache.commons.lang3.StringUtils.LF);
                sb.append(a(d2));
                str = sb.toString();
            } else {
                throw new AmazonClientException("Invalid Signature Version specified");
            }
            request.b("Signature", a(str, a2.b(), signingAlgorithm));
        }
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected final void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.b("SecurityToken", aWSSessionCredentials.c());
    }
}
