package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/QueryStringSigner.class */
public class QueryStringSigner extends AbstractAWSSigner implements Signer {
    public Date overriddenDate;

    public void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.addParameter("SecurityToken", aWSSessionCredentials.getSessionToken());
    }

    public final String calculateStringToSignV1(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(map);
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append((String) entry.getKey());
            sb.append((String) entry.getValue());
        }
        return sb.toString();
    }

    public final String calculateStringToSignV2(Request<?> request) throws AmazonClientException {
        URI endpoint = request.getEndpoint();
        Map<String, String> parameters = request.getParameters();
        return "POST\n" + getCanonicalizedEndpoint(endpoint) + "\n" + getCanonicalizedResourcePath(request) + "\n" + getCanonicalizedQueryString(parameters);
    }

    public final String getCanonicalizedResourcePath(Request<?> request) {
        String str;
        String str2 = "";
        if (request.getEndpoint().getPath() != null) {
            str2 = "" + request.getEndpoint().getPath();
        }
        if (request.getResourcePath() != null) {
            String str3 = str2;
            if (str2.length() > 0) {
                str3 = str2;
                if (!str2.endsWith("/")) {
                    str3 = str2;
                    if (!request.getResourcePath().startsWith("/")) {
                        str3 = str2 + "/";
                    }
                }
            }
            str = str3 + request.getResourcePath();
        } else {
            str = str2;
            if (!str2.endsWith("/")) {
                str = str2 + "/";
            }
        }
        String str4 = str;
        if (!str.startsWith("/")) {
            str4 = "/" + str;
        }
        String str5 = str4;
        if (str4.startsWith("//")) {
            str5 = str4.substring(1);
        }
        return str5;
    }

    public final String getFormattedTimestamp(int i) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Date date = this.overriddenDate;
        return date != null ? simpleDateFormat.format(date) : simpleDateFormat.format(getSignatureDate(i));
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) throws AmazonClientException {
        sign(request, SignatureVersion.V2, SigningAlgorithm.HmacSHA256, aWSCredentials);
    }

    public void sign(Request<?> request, SignatureVersion signatureVersion, SigningAlgorithm signingAlgorithm, AWSCredentials aWSCredentials) throws AmazonClientException {
        String str;
        AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
        request.addParameter("AWSAccessKeyId", sanitizeCredentials.getAWSAccessKeyId());
        request.addParameter("SignatureVersion", signatureVersion.toString());
        request.addParameter("Timestamp", getFormattedTimestamp(getTimeOffset(request)));
        if (sanitizeCredentials instanceof AWSSessionCredentials) {
            addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
        }
        if (signatureVersion.equals(SignatureVersion.V1)) {
            str = calculateStringToSignV1(request.getParameters());
        } else if (signatureVersion.equals(SignatureVersion.V2)) {
            request.addParameter("SignatureMethod", signingAlgorithm.toString());
            str = calculateStringToSignV2(request);
        } else {
            throw new AmazonClientException("Invalid Signature Version specified");
        }
        request.addParameter("Signature", signAndBase64Encode(str, sanitizeCredentials.getAWSSecretKey(), signingAlgorithm));
    }
}
