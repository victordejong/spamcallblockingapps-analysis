package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS4Signer.class */
public class AWS4Signer extends AbstractAWSSigner implements RegionAwareSigner, ServiceAwareSigner {
    protected static final Log e = LogFactory.a(AWS4Signer.class);

    /* renamed from: a  reason: collision with root package name */
    protected String f6548a;

    /* renamed from: b  reason: collision with root package name */
    protected String f6549b;

    /* renamed from: c  reason: collision with root package name */
    protected Date f6550c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f6551d;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS4Signer$HeaderSigningResult.class */
    public static class HeaderSigningResult {

        /* renamed from: a  reason: collision with root package name */
        public final String f6552a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6553b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f6554c;

        /* renamed from: d  reason: collision with root package name */
        private final byte[] f6555d;

        public HeaderSigningResult(String str, String str2, byte[] bArr, byte[] bArr2) {
            this.f6552a = str;
            this.f6553b = str2;
            this.f6554c = bArr;
            this.f6555d = bArr2;
        }

        public final byte[] a() {
            byte[] bArr = this.f6555d;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
    }

    public AWS4Signer() {
        this(true);
    }

    public AWS4Signer(boolean z) {
        this.f6551d = z;
    }

    private String a(URI uri) {
        String str = this.f6549b;
        return str != null ? str : AwsHostNameUtils.a(uri.getHost(), this.f6548a);
    }

    private String b(URI uri) {
        String str = this.f6548a;
        return str != null ? str : AwsHostNameUtils.a(uri);
    }

    private static boolean e(String str) {
        return "date".equalsIgnoreCase(str) || "Content-MD5".equalsIgnoreCase(str) || "host".equalsIgnoreCase(str) || str.startsWith("x-amz") || str.startsWith("X-Amz");
    }

    private static String f(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.b().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (e(str)) {
                String replaceAll = StringUtils.b(str).replaceAll("\\s+", org.apache.commons.lang3.StringUtils.SPACE);
                String str2 = request.b().get(str);
                sb.append(replaceAll);
                sb.append(":");
                if (str2 != null) {
                    sb.append(str2.replaceAll("\\s+", org.apache.commons.lang3.StringUtils.SPACE));
                }
                sb.append(org.apache.commons.lang3.StringUtils.LF);
            }
        }
        return sb.toString();
    }

    private static String g(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.b().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (e(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(StringUtils.b(str));
            }
        }
        return sb.toString();
    }

    public String a(Request<?> request) {
        InputStream d2 = d(request);
        d2.mark(-1);
        String a2 = BinaryUtils.a(a(d2));
        try {
            d2.reset();
            return a2;
        } catch (IOException e2) {
            throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e2);
        }
    }

    protected void a(Request<?> request, HeaderSigningResult headerSigningResult) {
    }

    @Override // com.amazonaws.auth.Signer
    public final void a(Request<?> request, AWSCredentials aWSCredentials) {
        if (!(aWSCredentials instanceof AnonymousAWSCredentials)) {
            AWSCredentials a2 = a(aWSCredentials);
            if (a2 instanceof AWSSessionCredentials) {
                a(request, (AWSSessionCredentials) a2);
            }
            String host = request.f().getHost();
            String str = host;
            if (HttpUtils.a(request.f())) {
                str = host + ":" + request.f().getPort();
            }
            request.a("Host", str);
            Date a3 = a(e(request));
            Date date = this.f6550c;
            if (date != null) {
                a3 = date;
            }
            long time = a3.getTime();
            String a4 = DateUtils.a("yyyyMMdd", new Date(time));
            String str2 = a4 + "/" + a(request.f()) + "/" + b(request.f()) + "/aws4_request";
            String a5 = a(request);
            String a6 = DateUtils.a("yyyyMMdd'T'HHmmss'Z'", new Date(time));
            request.a("X-Amz-Date", a6);
            if (request.b().get("x-amz-content-sha256") != null && "required".equals(request.b().get("x-amz-content-sha256"))) {
                request.a("x-amz-content-sha256", a5);
            }
            String str3 = a2.a() + "/" + str2;
            String a7 = a(request.f());
            String b2 = b(request.f());
            String str4 = a4 + "/" + a7 + "/" + b2 + "/aws4_request";
            String a8 = HttpUtils.a(request.f().getPath(), request.c());
            String str5 = request.e().toString() + org.apache.commons.lang3.StringUtils.LF + a(a8, this.f6551d) + org.apache.commons.lang3.StringUtils.LF + b(request) + org.apache.commons.lang3.StringUtils.LF + f(request) + org.apache.commons.lang3.StringUtils.LF + g(request) + org.apache.commons.lang3.StringUtils.LF + a5;
            Log log = e;
            log.b("AWS4 Canonical Request: '\"" + str5 + "\"");
            String str6 = "AWS4-HMAC-SHA256" + org.apache.commons.lang3.StringUtils.LF + a6 + org.apache.commons.lang3.StringUtils.LF + str4 + org.apache.commons.lang3.StringUtils.LF + BinaryUtils.a(c(str5));
            log.b("AWS4 String to Sign: '\"" + str6 + "\"");
            byte[] a9 = a("aws4_request", a(b2, a(a7, a(a4, ("AWS4" + a2.b()).getBytes(StringUtils.f6920a), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256);
            HeaderSigningResult headerSigningResult = new HeaderSigningResult(a6, str4, a9, a(str6.getBytes(StringUtils.f6920a), a9, SigningAlgorithm.HmacSHA256));
            request.a("Authorization", "AWS4-HMAC-SHA256 " + "Credential=".concat(String.valueOf(str3)) + ", " + ("SignedHeaders=" + g(request)) + ", " + ("Signature=" + BinaryUtils.a(headerSigningResult.a())));
            a(request, headerSigningResult);
        }
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    protected final void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.a("x-amz-security-token", aWSSessionCredentials.c());
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    public final void a(String str) {
        this.f6548a = str;
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    public final void b(String str) {
        this.f6549b = str;
    }
}
