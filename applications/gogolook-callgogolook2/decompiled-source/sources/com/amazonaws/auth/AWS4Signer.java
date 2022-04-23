package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.facebook.ads.ExtraHints;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS4Signer.class */
public class AWS4Signer extends AbstractAWSSigner implements ServiceAwareSigner, RegionAwareSigner, Presigner {
    public static final Log log = LogFactory.getLog(AWS4Signer.class);
    public boolean doubleUrlEncode;
    public Date overriddenDate;
    public String regionName;
    public String serviceName;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS4Signer$HeaderSigningResult.class */
    public static class HeaderSigningResult {
        public final String dateTime;
        public final byte[] kSigning;
        public final String scope;
        public final byte[] signature;

        public HeaderSigningResult(String str, String str2, byte[] bArr, byte[] bArr2) {
            this.dateTime = str;
            this.scope = str2;
            this.kSigning = bArr;
            this.signature = bArr2;
        }

        public String getDateTime() {
            return this.dateTime;
        }

        public byte[] getKSigning() {
            byte[] bArr = this.kSigning;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }

        public String getScope() {
            return this.scope;
        }

        public byte[] getSignature() {
            byte[] bArr = this.signature;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
    }

    public AWS4Signer() {
        this(true);
    }

    public AWS4Signer(boolean z) {
        this.doubleUrlEncode = z;
    }

    public void addHostHeader(Request<?> request) {
        String host = request.getEndpoint().getHost();
        String str = host;
        if (HttpUtils.isUsingNonDefaultPort(request.getEndpoint())) {
            str = host + ":" + request.getEndpoint().getPort();
        }
        request.addHeader("Host", str);
    }

    public void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.addHeader("x-amz-security-token", aWSSessionCredentials.getSessionToken());
    }

    public String calculateContentHash(Request<?> request) {
        InputStream binaryRequestPayloadStream = getBinaryRequestPayloadStream(request);
        binaryRequestPayloadStream.mark(-1);
        String hex = BinaryUtils.toHex(hash(binaryRequestPayloadStream));
        try {
            binaryRequestPayloadStream.reset();
            return hex;
        } catch (IOException e) {
            throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e);
        }
    }

    public final HeaderSigningResult computeSignature(Request<?> request, String str, String str2, String str3, String str4, AWSCredentials aWSCredentials) {
        String extractRegionName = extractRegionName(request.getEndpoint());
        String extractServiceName = extractServiceName(request.getEndpoint());
        String str5 = str + "/" + extractRegionName + "/" + extractServiceName + "/aws4_request";
        String stringToSign = getStringToSign(str3, str2, str5, getCanonicalRequest(request, str4));
        byte[] sign = sign("aws4_request", sign(extractServiceName, sign(extractRegionName, sign(str, ("AWS4" + aWSCredentials.getAWSSecretKey()).getBytes(StringUtils.UTF8), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256), SigningAlgorithm.HmacSHA256);
        return new HeaderSigningResult(str2, str5, sign, sign(stringToSign.getBytes(StringUtils.UTF8), sign, SigningAlgorithm.HmacSHA256));
    }

    public String extractRegionName(URI uri) {
        String str = this.regionName;
        return str != null ? str : AwsHostNameUtils.parseRegionName(uri.getHost(), this.serviceName);
    }

    public String extractServiceName(URI uri) {
        String str = this.serviceName;
        return str != null ? str : AwsHostNameUtils.parseServiceName(uri);
    }

    public String getCanonicalRequest(Request<?> request, String str) {
        String appendUri = HttpUtils.appendUri(request.getEndpoint().getPath(), request.getResourcePath());
        String str2 = request.getHttpMethod().toString() + "\n" + getCanonicalizedResourcePath(appendUri, this.doubleUrlEncode) + "\n" + getCanonicalizedQueryString(request) + "\n" + getCanonicalizedHeaderString(request) + "\n" + getSignedHeadersString(request) + "\n" + str;
        log.debug("AWS4 Canonical Request: '\"" + str2 + "\"");
        return str2;
    }

    public String getCanonicalizedHeaderString(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.getHeaders().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (needsSign(str)) {
                String replaceAll = StringUtils.lowerCase(str).replaceAll("\\s+", " ");
                String str2 = request.getHeaders().get(str);
                sb.append(replaceAll);
                sb.append(":");
                if (str2 != null) {
                    sb.append(str2.replaceAll("\\s+", " "));
                }
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public final long getDateFromRequest(Request<?> request) {
        Date signatureDate = getSignatureDate(getTimeOffset(request));
        Date date = this.overriddenDate;
        if (date != null) {
            signatureDate = date;
        }
        return signatureDate.getTime();
    }

    public final String getDateStamp(long j) {
        return DateUtils.format("yyyyMMdd", new Date(j));
    }

    public String getScope(Request<?> request, String str) {
        String extractRegionName = extractRegionName(request.getEndpoint());
        String extractServiceName = extractServiceName(request.getEndpoint());
        return str + "/" + extractRegionName + "/" + extractServiceName + "/aws4_request";
    }

    public String getSignedHeadersString(Request<?> request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.getHeaders().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (needsSign(str)) {
                if (sb.length() > 0) {
                    sb.append(ExtraHints.KEYWORD_SEPARATOR);
                }
                sb.append(StringUtils.lowerCase(str));
            }
        }
        return sb.toString();
    }

    public String getStringToSign(String str, String str2, String str3, String str4) {
        String str5 = str + "\n" + str2 + "\n" + str3 + "\n" + BinaryUtils.toHex(hash(str4));
        log.debug("AWS4 String to Sign: '\"" + str5 + "\"");
        return str5;
    }

    public final String getTimeStamp(long j) {
        return DateUtils.format("yyyyMMdd'T'HHmmss'Z'", new Date(j));
    }

    public boolean needsSign(String str) {
        return str.equalsIgnoreCase("date") || str.equalsIgnoreCase("Content-MD5") || str.equalsIgnoreCase("host") || str.startsWith("x-amz") || str.startsWith("X-Amz");
    }

    public void processRequestPayload(Request<?> request, HeaderSigningResult headerSigningResult) {
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    public void setRegionName(String str) {
        this.regionName = str;
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    public void setServiceName(String str) {
        this.serviceName = str;
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) {
        AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
        if (sanitizeCredentials instanceof AWSSessionCredentials) {
            addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
        }
        addHostHeader(request);
        long dateFromRequest = getDateFromRequest(request);
        String dateStamp = getDateStamp(dateFromRequest);
        String scope = getScope(request, dateStamp);
        String calculateContentHash = calculateContentHash(request);
        String timeStamp = getTimeStamp(dateFromRequest);
        request.addHeader("X-Amz-Date", timeStamp);
        if (request.getHeaders().get("x-amz-content-sha256") != null && request.getHeaders().get("x-amz-content-sha256").equals("required")) {
            request.addHeader("x-amz-content-sha256", calculateContentHash);
        }
        String str = sanitizeCredentials.getAWSAccessKeyId() + "/" + scope;
        HeaderSigningResult computeSignature = computeSignature(request, dateStamp, timeStamp, "AWS4-HMAC-SHA256", calculateContentHash, sanitizeCredentials);
        request.addHeader("Authorization", "AWS4-HMAC-SHA256 " + ("Credential=" + str) + UserProfile.CARD_CATE_SEPARATOR + ("SignedHeaders=" + getSignedHeadersString(request)) + UserProfile.CARD_CATE_SEPARATOR + ("Signature=" + BinaryUtils.toHex(computeSignature.getSignature())));
        processRequestPayload(request, computeSignature);
    }
}
