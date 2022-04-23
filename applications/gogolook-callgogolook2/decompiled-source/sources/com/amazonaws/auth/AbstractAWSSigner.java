package com.amazonaws.auth;

import androidx.core.app.NotificationCompat;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URI;
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
    public static final ThreadLocal<MessageDigest> SHA256_MESSAGE_DIGEST = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.auth.AbstractAWSSigner.1
        @Override // java.lang.ThreadLocal
        public MessageDigest initialValue() {
            try {
                return MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException e) {
                throw new AmazonClientException("Unable to get SHA256 Function" + e.getMessage(), e);
            }
        }
    };

    static {
        BinaryUtils.toHex(doHash(""));
    }

    public static byte[] doHash(String str) throws AmazonClientException {
        try {
            MessageDigest messageDigestInstance = getMessageDigestInstance();
            messageDigestInstance.update(str.getBytes(StringUtils.UTF8));
            return messageDigestInstance.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    public static MessageDigest getMessageDigestInstance() {
        MessageDigest messageDigest = SHA256_MESSAGE_DIGEST.get();
        messageDigest.reset();
        return messageDigest;
    }

    public InputStream getBinaryRequestPayloadStream(Request<?> request) {
        if (!HttpUtils.usePayloadForQueryParameters(request)) {
            return getBinaryRequestPayloadStreamWithoutQueryParams(request);
        }
        String encodeParameters = HttpUtils.encodeParameters(request);
        return encodeParameters == null ? new ByteArrayInputStream(new byte[0]) : new ByteArrayInputStream(encodeParameters.getBytes(StringUtils.UTF8));
    }

    public InputStream getBinaryRequestPayloadStreamWithoutQueryParams(Request<?> request) {
        try {
            InputStream content = request.getContent();
            if (content == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (content.markSupported()) {
                return request.getContent();
            }
            throw new AmazonClientException("Unable to read request payload to sign request.");
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    public byte[] getBinaryRequestPayloadWithoutQueryParams(Request<?> request) {
        InputStream binaryRequestPayloadStreamWithoutQueryParams = getBinaryRequestPayloadStreamWithoutQueryParams(request);
        try {
            binaryRequestPayloadStreamWithoutQueryParams.mark(-1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[NotificationCompat.Builder.MAX_CHARSEQUENCE_LENGTH];
            while (true) {
                int read = binaryRequestPayloadStreamWithoutQueryParams.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.close();
                    binaryRequestPayloadStreamWithoutQueryParams.reset();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e.getMessage(), e);
        }
    }

    public String getCanonicalizedEndpoint(URI uri) {
        String lowerCase = StringUtils.lowerCase(uri.getHost());
        String str = lowerCase;
        if (HttpUtils.isUsingNonDefaultPort(uri)) {
            str = lowerCase + ":" + uri.getPort();
        }
        return str;
    }

    public String getCanonicalizedQueryString(Request<?> request) {
        return HttpUtils.usePayloadForQueryParameters(request) ? "" : getCanonicalizedQueryString(request.getParameters());
    }

    public String getCanonicalizedQueryString(Map<String, String> map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            treeMap.put(HttpUtils.urlEncode(entry.getKey(), false), HttpUtils.urlEncode(entry.getValue(), false));
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append((String) entry2.getValue());
            if (it.hasNext()) {
                sb.append(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
            }
        }
        return sb.toString();
    }

    public String getCanonicalizedResourcePath(String str) {
        return getCanonicalizedResourcePath(str, true);
    }

    public String getCanonicalizedResourcePath(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        String str2 = str;
        if (z) {
            str2 = HttpUtils.urlEncode(str, true);
        }
        return str2.startsWith("/") ? str2 : "/".concat(str2);
    }

    public String getRequestPayloadWithoutQueryParams(Request<?> request) {
        return newString(getBinaryRequestPayloadWithoutQueryParams(request));
    }

    public Date getSignatureDate(int i) {
        Date date = new Date();
        if (i != 0) {
            date = new Date(date.getTime() - (i * 1000));
        }
        return date;
    }

    public int getTimeOffset(Request<?> request) {
        int timeOffset = request.getTimeOffset();
        if (SDKGlobalConfiguration.getGlobalTimeOffset() != 0) {
            timeOffset = SDKGlobalConfiguration.getGlobalTimeOffset();
        }
        return timeOffset;
    }

    public byte[] hash(InputStream inputStream) throws AmazonClientException {
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(inputStream, getMessageDigestInstance());
            while (sdkDigestInputStream.read(new byte[1024]) > -1) {
            }
            return sdkDigestInputStream.getMessageDigest().digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    public byte[] hash(String str) throws AmazonClientException {
        return doHash(str);
    }

    public byte[] hash(byte[] bArr) throws AmazonClientException {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(bArr);
            return instance.digest();
        } catch (Exception e) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e.getMessage(), e);
        }
    }

    public String newString(byte[] bArr) {
        return new String(bArr, StringUtils.UTF8);
    }

    public AWSCredentials sanitizeCredentials(AWSCredentials aWSCredentials) {
        String aWSAccessKeyId;
        String aWSSecretKey;
        String sessionToken;
        synchronized (aWSCredentials) {
            aWSAccessKeyId = aWSCredentials.getAWSAccessKeyId();
            aWSSecretKey = aWSCredentials.getAWSSecretKey();
            sessionToken = aWSCredentials instanceof AWSSessionCredentials ? ((AWSSessionCredentials) aWSCredentials).getSessionToken() : null;
        }
        String str = aWSSecretKey;
        if (aWSSecretKey != null) {
            str = aWSSecretKey.trim();
        }
        String str2 = aWSAccessKeyId;
        if (aWSAccessKeyId != null) {
            str2 = aWSAccessKeyId.trim();
        }
        String str3 = sessionToken;
        if (sessionToken != null) {
            str3 = sessionToken.trim();
        }
        return aWSCredentials instanceof AWSSessionCredentials ? new BasicSessionCredentials(str2, str, str3) : new BasicAWSCredentials(str2, str);
    }

    public byte[] sign(String str, byte[] bArr, SigningAlgorithm signingAlgorithm) throws AmazonClientException {
        try {
            return sign(str.getBytes(StringUtils.UTF8), bArr, signingAlgorithm);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    public byte[] sign(byte[] bArr, byte[] bArr2, SigningAlgorithm signingAlgorithm) throws AmazonClientException {
        try {
            Mac instance = Mac.getInstance(signingAlgorithm.toString());
            instance.init(new SecretKeySpec(bArr2, signingAlgorithm.toString()));
            return instance.doFinal(bArr);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }

    public String signAndBase64Encode(String str, String str2, SigningAlgorithm signingAlgorithm) throws AmazonClientException {
        return signAndBase64Encode(str.getBytes(StringUtils.UTF8), str2, signingAlgorithm);
    }

    public String signAndBase64Encode(byte[] bArr, String str, SigningAlgorithm signingAlgorithm) throws AmazonClientException {
        try {
            return Base64.encodeAsString(sign(bArr, str.getBytes(StringUtils.UTF8), signingAlgorithm));
        } catch (Exception e) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e.getMessage(), e);
        }
    }
}
