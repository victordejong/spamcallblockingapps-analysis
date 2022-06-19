package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonServiceException;
import java.io.Serializable;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.AmazonS3Exception */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/AmazonS3Exception.class */
public class AmazonS3Exception extends AmazonServiceException implements Serializable {
    private static final long serialVersionUID = 7573680383273658477L;
    private Map<String, String> additionalDetails;
    private String cloudFrontId;
    private final String errorResponseXml;
    private String extendedRequestId;

    public AmazonS3Exception(String str) {
        super(str);
        this.errorResponseXml = null;
    }

    public AmazonS3Exception(String str, Exception exc) {
        super(str, exc);
        this.errorResponseXml = null;
    }

    public AmazonS3Exception(String str, String str2) {
        super(str);
        if (str2 != null) {
            this.errorResponseXml = str2;
            return;
        }
        throw new IllegalArgumentException("Error Response XML cannot be null");
    }

    public Map<String, String> getAdditionalDetails() {
        return this.additionalDetails;
    }

    public String getCloudFrontId() {
        return this.cloudFrontId;
    }

    public String getErrorResponseXml() {
        return this.errorResponseXml;
    }

    public String getExtendedRequestId() {
        return this.extendedRequestId;
    }

    public void setAdditionalDetails(Map<String, String> map) {
        this.additionalDetails = map;
    }

    public void setCloudFrontId(String str) {
        this.cloudFrontId = str;
    }

    public void setExtendedRequestId(String str) {
        this.extendedRequestId = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ", S3 Extended Request ID: " + getExtendedRequestId();
    }
}
