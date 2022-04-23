package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AbstractAWSSigner.class */
public abstract class AbstractAWSSigner implements Signer {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<MessageDigest> f6560a = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.auth.AbstractAWSSigner.1
        private static MessageDigest a() {
            try {
                return MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException e) {
                throw new AmazonClientException("Unable to get SHA256 Function" + e.getMessage(), e);
            }
        }

        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ MessageDigest initialValue() {
            return a();
        }
    };
    public static final String f = BinaryUtils.a(a(""));

    /* JADX INFO: Access modifiers changed from: protected */
    public static AWSCredentials a(AWSCredentials aWSCredentials) {
        String a2;
        String b2;
        String c2;
        synchronized (aWSCredentials) {
            a2 = aWSCredentials.a();
            b2 = aWSCredentials.b();
            c2 = aWSCredentials instanceof AWSSessionCredentials ? ((AWSSessionCredentials) aWSCredentials).c() : null;
        }
        String str = b2;
        if (b2 != null) {
            str = b2.trim();
        }
        String str2 = a2;
        if (a2 != null) {
            str2 = a2.trim();
        }
        String str3 = c2;
        if (c2 != null) {
            str3 = c2.trim();
        }
        return aWSCredentials instanceof AWSSessionCredentials ? new BasicSessionCredentials(str2, str, str3) : new BasicAWSCredentials(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        String str2 = str;
        if (z) {
            str2 = HttpUtils.a(str, true);
        }
        return str2.startsWith("/") ? str2 : "/".concat(str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(HttpUtils.a(entry.getKey(), false), HttpUtils.a(entry.getValue(), false));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it2 = treeMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append((String) entry2.getValue());
            if (it2.hasNext()) {
                sb.append("&");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(byte[] bArr, String str, SigningAlgorithm signingAlgorithm) {
        try {
            return Base64.encodeAsString(a(bArr, str.getBytes(StringUtils.f6920a), signingAlgorithm));
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    private static MessageDigest a() {
        MessageDigest messageDigest = f6560a.get();
        messageDigest.reset();
        return messageDigest;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Date a(int i) {
        Date date = new Date();
        Date date2 = date;
        if (i != 0) {
            date2 = new Date(date.getTime() - (i * 1000));
        }
        return date2;
    }

    private static byte[] a(Request<?> request) {
        InputStream f2 = f(request);
        try {
            f2.mark(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[5120];
            while (true) {
                int read = f2.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.close();
                    f2.reset();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] a(InputStream inputStream) {
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(inputStream, a());
            do {
            } while (sdkDigestInputStream.read(new byte[1024]) >= 0);
            return sdkDigestInputStream.getMessageDigest().digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    private static byte[] a(String str) {
        try {
            MessageDigest a2 = a();
            a2.update(str.getBytes(StringUtils.f6920a));
            return a2.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    public static byte[] a(String str, byte[] bArr, SigningAlgorithm signingAlgorithm) {
        try {
            return a(str.getBytes(StringUtils.f6920a), bArr, signingAlgorithm);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    public static byte[] a(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(bArr);
            return instance.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] a(byte[] bArr, byte[] bArr2, SigningAlgorithm signingAlgorithm) {
        try {
            Mac instance = Mac.getInstance(signingAlgorithm.toString());
            instance.init(new SecretKeySpec(bArr2, signingAlgorithm.toString()));
            return instance.doFinal(bArr);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String b(Request<?> request) {
        return HttpUtils.a(request) ? "" : a(request.d());
    }

    public static byte[] c(String str) {
        return a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static InputStream d(Request<?> request) {
        if (!HttpUtils.a(request)) {
            return f(request);
        }
        String b2 = HttpUtils.b(request);
        return b2 == null ? new ByteArrayInputStream(new byte[0]) : new ByteArrayInputStream(b2.getBytes(StringUtils.f6920a));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String d(String str) {
        return a(str, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int e(Request<?> request) {
        int j = request.j();
        if (SDKGlobalConfiguration.getGlobalTimeOffset() != 0) {
            j = SDKGlobalConfiguration.getGlobalTimeOffset();
        }
        return j;
    }

    private static InputStream f(Request<?> request) {
        try {
            InputStream h = request.h();
            if (h == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (h instanceof StringInputStream) {
                return h;
            }
            if (h.markSupported()) {
                return request.h();
            }
            throw new AmazonClientException("Unable to read request payload to sign request.");
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    public final String a(String str, String str2, SigningAlgorithm signingAlgorithm) {
        return a(str.getBytes(StringUtils.f6920a), str2, signingAlgorithm);
    }

    protected abstract void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c(Request<?> request) {
        return new String(a(request), StringUtils.f6920a);
    }
}
