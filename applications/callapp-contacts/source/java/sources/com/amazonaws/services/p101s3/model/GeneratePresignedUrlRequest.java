package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.HttpMethod;
import java.io.Serializable;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.GeneratePresignedUrlRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GeneratePresignedUrlRequest.class */
public class GeneratePresignedUrlRequest extends AmazonWebServiceRequest implements SSECustomerKeyProvider, Serializable {
    private String bucketName;
    private String contentMd5;
    private String contentType;
    private Map<String, String> customQueryParameters;
    private Date expiration;
    private String key;
    private String kmsCmkId;
    private HttpMethod method;
    private final Map<String, String> requestParameters;
    private ResponseHeaderOverrides responseHeaders;
    private String sseAlgorithm;
    private SSECustomerKey sseCustomerKey;
    private String versionId;
    private boolean zeroByteContent;

    public GeneratePresignedUrlRequest(String str, String str2) {
        this(str, str2, HttpMethod.GET);
    }

    public GeneratePresignedUrlRequest(String str, String str2, HttpMethod httpMethod) {
        this.requestParameters = new HashMap();
        this.bucketName = str;
        this.key = str2;
        this.method = httpMethod;
    }

    public void addCustomQueryParameter(String str, String str2) {
        if (this.customQueryParameters == null) {
            this.customQueryParameters = new HashMap();
        }
        if (this.customQueryParameters.get(str) == null) {
            this.customQueryParameters.put(str, str2);
        }
    }

    public void addRequestParameter(String str, String str2) {
        this.requestParameters.put(str, str2);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getContentMd5() {
        return this.contentMd5;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Map<String, String> getCustomQueryParameters() {
        Map<String, String> map = this.customQueryParameters;
        if (map == null) {
            return null;
        }
        return Collections.unmodifiableMap(map);
    }

    public Date getExpiration() {
        return this.expiration;
    }

    public String getKey() {
        return this.key;
    }

    public String getKmsCmkId() {
        return this.kmsCmkId;
    }

    public HttpMethod getMethod() {
        return this.method;
    }

    public Map<String, String> getRequestParameters() {
        return this.requestParameters;
    }

    public ResponseHeaderOverrides getResponseHeaders() {
        return this.responseHeaders;
    }

    public String getSSEAlgorithm() {
        return this.sseAlgorithm;
    }

    @Override // com.amazonaws.services.p101s3.model.SSECustomerKeyProvider
    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public boolean isZeroByteContent() {
        return this.zeroByteContent;
    }

    public void rejectIllegalArguments() {
        if (this.bucketName != null) {
            if (this.method == null) {
                throw new IllegalArgumentException("The HTTP method request parameter must be specified when generating a pre-signed URL");
            }
            if (this.sseCustomerKey != null) {
                if (this.sseAlgorithm != null) {
                    throw new IllegalArgumentException("Either SSE or SSE-C can be specified but not both");
                }
                if (this.kmsCmkId != null) {
                    throw new IllegalArgumentException("KMS CMK is not applicable for SSE-C");
                }
                return;
            } else if (this.kmsCmkId == null || SSEAlgorithm.KMS.getAlgorithm().equals(this.sseAlgorithm)) {
                return;
            } else {
                throw new IllegalArgumentException("For KMS server side encryption, the SSE algorithm must be set to " + SSEAlgorithm.KMS);
            }
        }
        throw new IllegalArgumentException("The bucket name parameter must be specified when generating a pre-signed URL");
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setContentMd5(String str) {
        this.contentMd5 = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setExpiration(Date date) {
        this.expiration = date;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setKmsCmkId(String str) {
        this.kmsCmkId = str;
    }

    public void setMethod(HttpMethod httpMethod) {
        this.method = httpMethod;
    }

    public void setResponseHeaders(ResponseHeaderOverrides responseHeaderOverrides) {
        this.responseHeaders = responseHeaderOverrides;
    }

    public void setSSEAlgorithm(SSEAlgorithm sSEAlgorithm) {
        this.sseAlgorithm = sSEAlgorithm.getAlgorithm();
    }

    public void setSSEAlgorithm(String str) {
        this.sseAlgorithm = str;
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        this.sseCustomerKey = sSECustomerKey;
    }

    public void setSSECustomerKeyAlgorithm(SSEAlgorithm sSEAlgorithm) {
        if (sSEAlgorithm == null) {
            this.sseCustomerKey = null;
        } else if (sSEAlgorithm.getAlgorithm().equals(SSEAlgorithm.AES256.getAlgorithm())) {
            this.sseCustomerKey = SSECustomerKey.generateSSECustomerKeyForPresignUrl(sSEAlgorithm.getAlgorithm());
        } else {
            throw new IllegalArgumentException("Currently the only supported Server Side Encryption algorithm is " + SSEAlgorithm.AES256);
        }
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }

    public void setZeroByteContent(boolean z) {
        this.zeroByteContent = z;
    }

    public GeneratePresignedUrlRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GeneratePresignedUrlRequest withContentMd5(String str) {
        this.contentMd5 = str;
        return this;
    }

    public GeneratePresignedUrlRequest withContentType(String str) {
        setContentType(str);
        return this;
    }

    public GeneratePresignedUrlRequest withExpiration(Date date) {
        setExpiration(date);
        return this;
    }

    public GeneratePresignedUrlRequest withKey(String str) {
        setKey(str);
        return this;
    }

    public GeneratePresignedUrlRequest withKmsCmkId(String str) {
        setKmsCmkId(str);
        return this;
    }

    public GeneratePresignedUrlRequest withMethod(HttpMethod httpMethod) {
        setMethod(httpMethod);
        return this;
    }

    public GeneratePresignedUrlRequest withResponseHeaders(ResponseHeaderOverrides responseHeaderOverrides) {
        setResponseHeaders(responseHeaderOverrides);
        return this;
    }

    public GeneratePresignedUrlRequest withSSEAlgorithm(SSEAlgorithm sSEAlgorithm) {
        setSSEAlgorithm(sSEAlgorithm);
        return this;
    }

    public GeneratePresignedUrlRequest withSSEAlgorithm(String str) {
        setSSEAlgorithm(str);
        return this;
    }

    public GeneratePresignedUrlRequest withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        setSSECustomerKey(sSECustomerKey);
        return this;
    }

    public GeneratePresignedUrlRequest withSSECustomerKeyAlgorithm(SSEAlgorithm sSEAlgorithm) {
        setSSECustomerKeyAlgorithm(sSEAlgorithm);
        return this;
    }

    public GeneratePresignedUrlRequest withVersionId(String str) {
        setVersionId(str);
        return this;
    }

    public GeneratePresignedUrlRequest withZeroByteContent(boolean z) {
        setZeroByteContent(z);
        return this;
    }
}
