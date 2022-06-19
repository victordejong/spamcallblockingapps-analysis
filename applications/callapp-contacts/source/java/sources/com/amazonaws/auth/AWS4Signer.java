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

    /* renamed from: e */
    protected static final Log f11971e = LogFactory.m38584a(AWS4Signer.class);

    /* renamed from: a */
    protected String f11972a;

    /* renamed from: b */
    protected String f11973b;

    /* renamed from: c */
    protected Date f11974c;

    /* renamed from: d */
    protected boolean f11975d;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS4Signer$HeaderSigningResult.class */
    public static class HeaderSigningResult {

        /* renamed from: a */
        public final String f11976a;

        /* renamed from: b */
        public final String f11977b;

        /* renamed from: c */
        public final byte[] f11978c;

        /* renamed from: d */
        private final byte[] f11979d;

        public HeaderSigningResult(String str, String str2, byte[] bArr, byte[] bArr2) {
            this.f11976a = str;
            this.f11977b = str2;
            this.f11978c = bArr;
            this.f11979d = bArr2;
        }

        /* renamed from: a */
        public final byte[] m38687a() {
            byte[] bArr = this.f11979d;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
    }

    public AWS4Signer() {
        this(true);
    }

    public AWS4Signer(boolean z) {
        this.f11975d = z;
    }

    /* renamed from: a */
    private String m38692a(URI uri) {
        String str = this.f11973b;
        return str != null ? str : AwsHostNameUtils.m38273a(uri.getHost(), this.f11972a);
    }

    /* renamed from: b */
    private String m38691b(URI uri) {
        String str = this.f11972a;
        return str != null ? str : AwsHostNameUtils.m38272a(uri);
    }

    /* renamed from: e */
    private static boolean m38690e(String str) {
        return "date".equalsIgnoreCase(str) || "Content-MD5".equalsIgnoreCase(str) || "host".equalsIgnoreCase(str) || str.startsWith("x-amz") || str.startsWith("X-Amz");
    }

    /* renamed from: f */
    private static String m38689f(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.mo38711b().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (m38690e(str)) {
                String replaceAll = StringUtils.m38227b(str).replaceAll("\\s+", org.apache.commons.lang3.StringUtils.SPACE);
                String str2 = request.mo38711b().get(str);
                sb.append(replaceAll);
                sb.append(":");
                if (str2 != null) {
                    sb.append(str2.replaceAll("\\s+", org.apache.commons.lang3.StringUtils.SPACE));
                }
                sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
            }
        }
        return sb.toString();
    }

    /* renamed from: g */
    private static String m38688g(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.mo38711b().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (m38690e(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(StringUtils.m38227b(str));
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public String mo38441a(Request<?> request) {
        InputStream d = m38670d(request);
        d.mark(-1);
        String m38259a = BinaryUtils.m38259a(m38682a(d));
        try {
            d.reset();
            return m38259a;
        } catch (IOException e) {
            throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e);
        }
    }

    /* renamed from: a */
    protected void mo38440a(Request<?> request, HeaderSigningResult headerSigningResult) {
    }

    @Override // com.amazonaws.auth.Signer
    /* renamed from: a */
    public final void mo38410a(Request<?> request, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials a = m38683a(aWSCredentials);
        if (a instanceof AWSSessionCredentials) {
            mo38409a(request, (AWSSessionCredentials) a);
        }
        String host = request.mo38705f().getHost();
        String str = host;
        if (HttpUtils.m38242a(request.mo38705f())) {
            str = host + ":" + request.mo38705f().getPort();
        }
        request.mo38714a("Host", str);
        Date a2 = m38685a(m38668e(request));
        Date date = this.f11974c;
        if (date != null) {
            a2 = date;
        }
        long time = a2.getTime();
        String m38253a = DateUtils.m38253a("yyyyMMdd", new Date(time));
        String str2 = m38253a + "/" + m38692a(request.mo38705f()) + "/" + m38691b(request.mo38705f()) + "/aws4_request";
        String mo38441a = mo38441a(request);
        String m38253a2 = DateUtils.m38253a("yyyyMMdd'T'HHmmss'Z'", new Date(time));
        request.mo38714a("X-Amz-Date", m38253a2);
        if (request.mo38711b().get("x-amz-content-sha256") != null && "required".equals(request.mo38711b().get("x-amz-content-sha256"))) {
            request.mo38714a("x-amz-content-sha256", mo38441a);
        }
        String str3 = a.mo38659a() + "/" + str2;
        String m38692a = m38692a(request.mo38705f());
        String m38691b = m38691b(request.mo38705f());
        String str4 = m38253a + "/" + m38692a + "/" + m38691b + "/aws4_request";
        String m38245a = HttpUtils.m38245a(request.mo38705f().getPath(), request.mo38708c());
        String str5 = request.mo38706e().toString() + org.apache.commons.lang3.StringUtils.f67179LF + m38679a(m38245a, this.f11975d) + org.apache.commons.lang3.StringUtils.f67179LF + m38673b(request) + org.apache.commons.lang3.StringUtils.f67179LF + m38689f(request) + org.apache.commons.lang3.StringUtils.f67179LF + m38688g(request) + org.apache.commons.lang3.StringUtils.f67179LF + mo38441a;
        Log log = f11971e;
        log.mo38593b("AWS4 Canonical Request: '\"" + str5 + "\"");
        String str6 = "AWS4-HMAC-SHA256" + org.apache.commons.lang3.StringUtils.f67179LF + m38253a2 + org.apache.commons.lang3.StringUtils.f67179LF + str4 + org.apache.commons.lang3.StringUtils.f67179LF + BinaryUtils.m38259a(m38671c(str5));
        log.mo38593b("AWS4 String to Sign: '\"" + str6 + "\"");
        byte[] a3 = m38678a("aws4_request", m38678a(m38691b, m38678a(m38692a, m38678a(m38253a, ("AWS4" + a.mo38658b()).getBytes(StringUtils.f12513a), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256);
        HeaderSigningResult headerSigningResult = new HeaderSigningResult(m38253a2, str4, a3, m38674a(str6.getBytes(StringUtils.f12513a), a3, SigningAlgorithm.HmacSHA256));
        request.mo38714a("Authorization", "AWS4-HMAC-SHA256 " + "Credential=".concat(String.valueOf(str3)) + ", " + ("SignedHeaders=" + m38688g(request)) + ", " + ("Signature=" + BinaryUtils.m38259a(headerSigningResult.m38687a())));
        mo38440a(request, headerSigningResult);
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    /* renamed from: a */
    protected final void mo38409a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.mo38714a("x-amz-security-token", aWSSessionCredentials.mo38661c());
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    /* renamed from: a */
    public final void mo38655a(String str) {
        this.f11972a = str;
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    /* renamed from: b */
    public final void mo38656b(String str) {
        this.f11973b = str;
    }
}
