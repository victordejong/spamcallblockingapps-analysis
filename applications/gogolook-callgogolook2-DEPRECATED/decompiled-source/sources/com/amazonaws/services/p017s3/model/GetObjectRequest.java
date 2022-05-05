package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.GetObjectRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetObjectRequest.class */
public class GetObjectRequest extends AmazonWebServiceRequest {
    public String bucketName;
    public ProgressListener generalProgressListener;
    public boolean isRequesterPays;
    public String key;
    public List<String> matchingETagConstraints;
    public Date modifiedSinceConstraint;
    public List<String> nonmatchingEtagConstraints;
    public long[] range;
    public ResponseHeaderOverrides responseHeaders;
    public SSECustomerKey sseCustomerKey;
    public Date unmodifiedSinceConstraint;
    public String versionId;

    public GetObjectRequest(String str, String str2) {
        this(str, str2, null);
    }

    public GetObjectRequest(String str, String str2, String str3) {
        this.matchingETagConstraints = new ArrayList();
        this.nonmatchingEtagConstraints = new ArrayList();
        setBucketName(str);
        setKey(str2);
        setVersionId(str3);
        setRequesterPays(false);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public ProgressListener getGeneralProgressListener() {
        return this.generalProgressListener;
    }

    public String getKey() {
        return this.key;
    }

    public List<String> getMatchingETagConstraints() {
        return this.matchingETagConstraints;
    }

    public Date getModifiedSinceConstraint() {
        return this.modifiedSinceConstraint;
    }

    public List<String> getNonmatchingETagConstraints() {
        return this.nonmatchingEtagConstraints;
    }

    public long[] getRange() {
        long[] jArr = this.range;
        return jArr == null ? null : (long[]) jArr.clone();
    }

    public ResponseHeaderOverrides getResponseHeaders() {
        return this.responseHeaders;
    }

    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public Date getUnmodifiedSinceConstraint() {
        return this.unmodifiedSinceConstraint;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setGeneralProgressListener(ProgressListener progressListener) {
        this.generalProgressListener = progressListener;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setRange(long j, long j2) {
        this.range = new long[]{j, j2};
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }
}
