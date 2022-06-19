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

    /* renamed from: a */
    private static final ThreadLocal<MessageDigest> f11984a = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.auth.AbstractAWSSigner.1
        /* renamed from: a */
        private static MessageDigest m38666a() {
            try {
                return MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException e) {
                throw new AmazonClientException("Unable to get SHA256 Function" + e.getMessage(), e);
            }
        }

        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ MessageDigest initialValue() {
            return m38666a();
        }
    };

    /* renamed from: f */
    public static final String f11985f = BinaryUtils.m38259a(m38681a(""));

    /* renamed from: a */
    public static AWSCredentials m38683a(AWSCredentials aWSCredentials) {
        String mo38659a;
        String mo38658b;
        String mo38661c;
        synchronized (aWSCredentials) {
            mo38659a = aWSCredentials.mo38659a();
            mo38658b = aWSCredentials.mo38658b();
            mo38661c = aWSCredentials instanceof AWSSessionCredentials ? ((AWSSessionCredentials) aWSCredentials).mo38661c() : null;
        }
        String str = mo38658b;
        if (mo38658b != null) {
            str = mo38658b.trim();
        }
        String str2 = mo38659a;
        if (mo38659a != null) {
            str2 = mo38659a.trim();
        }
        String str3 = mo38661c;
        if (mo38661c != null) {
            str3 = mo38661c.trim();
        }
        return aWSCredentials instanceof AWSSessionCredentials ? new BasicSessionCredentials(str2, str, str3) : new BasicAWSCredentials(str2, str);
    }

    /* renamed from: a */
    public static String m38679a(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        String str2 = str;
        if (z) {
            str2 = HttpUtils.m38243a(str, true);
        }
        return str2.startsWith("/") ? str2 : "/".concat(str2);
    }

    /* renamed from: a */
    public static String m38677a(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(HttpUtils.m38243a(entry.getKey(), false), HttpUtils.m38243a(entry.getValue(), false));
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

    /* renamed from: a */
    public static String m38675a(byte[] bArr, String str, SigningAlgorithm signingAlgorithm) {
        try {
            return Base64.encodeAsString(m38674a(bArr, str.getBytes(StringUtils.f12513a), signingAlgorithm));
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    private static MessageDigest m38686a() {
        MessageDigest messageDigest = f11984a.get();
        messageDigest.reset();
        return messageDigest;
    }

    /* renamed from: a */
    public static Date m38685a(int i) {
        Date date = new Date();
        Date date2 = date;
        if (i != 0) {
            date2 = new Date(date.getTime() - (i * 1000));
        }
        return date2;
    }

    /* renamed from: a */
    private static byte[] m38684a(Request<?> request) {
        InputStream m38667f = m38667f(request);
        try {
            m38667f.mark(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[5120];
            while (true) {
                int read = m38667f.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.close();
                    m38667f.reset();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static byte[] m38682a(InputStream inputStream) {
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(inputStream, m38686a());
            do {
            } while (sdkDigestInputStream.read(new byte[1024]) >= 0);
            return sdkDigestInputStream.getMessageDigest().digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    private static byte[] m38681a(String str) {
        try {
            MessageDigest m38686a = m38686a();
            m38686a.update(str.getBytes(StringUtils.f12513a));
            return m38686a.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static byte[] m38678a(String str, byte[] bArr, SigningAlgorithm signingAlgorithm) {
        try {
            return m38674a(str.getBytes(StringUtils.f12513a), bArr, signingAlgorithm);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static byte[] m38676a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static byte[] m38674a(byte[] bArr, byte[] bArr2, SigningAlgorithm signingAlgorithm) {
        try {
            Mac mac = Mac.getInstance(signingAlgorithm.toString());
            mac.init(new SecretKeySpec(bArr2, signingAlgorithm.toString()));
            return mac.doFinal(bArr);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public static String m38673b(Request<?> request) {
        return HttpUtils.m38246a(request) ? "" : m38677a(request.mo38707d());
    }

    /* renamed from: c */
    public static byte[] m38671c(String str) {
        return m38681a(str);
    }

    /* renamed from: d */
    public static InputStream m38670d(Request<?> request) {
        if (HttpUtils.m38246a(request)) {
            String m38241b = HttpUtils.m38241b(request);
            return m38241b == null ? new ByteArrayInputStream(new byte[0]) : new ByteArrayInputStream(m38241b.getBytes(StringUtils.f12513a));
        }
        return m38667f(request);
    }

    /* renamed from: d */
    public static String m38669d(String str) {
        return m38679a(str, true);
    }

    /* renamed from: e */
    public static int m38668e(Request<?> request) {
        int mo38701j = request.mo38701j();
        if (SDKGlobalConfiguration.getGlobalTimeOffset() != 0) {
            mo38701j = SDKGlobalConfiguration.getGlobalTimeOffset();
        }
        return mo38701j;
    }

    /* renamed from: f */
    private static InputStream m38667f(Request<?> request) {
        try {
            InputStream mo38703h = request.mo38703h();
            if (mo38703h == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (mo38703h instanceof StringInputStream) {
                return mo38703h;
            }
            if (!mo38703h.markSupported()) {
                throw new AmazonClientException("Unable to read request payload to sign request.");
            }
            return request.mo38703h();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public final String m38680a(String str, String str2, SigningAlgorithm signingAlgorithm) {
        return m38675a(str.getBytes(StringUtils.f12513a), str2, signingAlgorithm);
    }

    /* renamed from: a */
    protected abstract void mo38409a(Request<?> request, AWSSessionCredentials aWSSessionCredentials);

    /* renamed from: c */
    public final String m38672c(Request<?> request) {
        return new String(m38684a(request), StringUtils.f12513a);
    }
}
