package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CreateBucketRequest.class */
public class CreateBucketRequest extends AmazonWebServiceRequest implements S3AccelerateUnsupported {
    private AccessControlList accessControlList;
    private String bucketName;
    private CannedAccessControlList cannedAcl;
    private String region;

    public CreateBucketRequest(String str) {
        this(str, Region.US_Standard);
    }

    public CreateBucketRequest(String str, Region region) {
        this(str, region.toString());
    }

    public CreateBucketRequest(String str, String str2) {
        setBucketName(str);
        setRegion(str2);
    }

    public AccessControlList getAccessControlList() {
        return this.accessControlList;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public CannedAccessControlList getCannedAcl() {
        return this.cannedAcl;
    }

    public String getRegion() {
        return this.region;
    }

    public void setAccessControlList(AccessControlList accessControlList) {
        this.accessControlList = accessControlList;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setCannedAcl(CannedAccessControlList cannedAccessControlList) {
        this.cannedAcl = cannedAccessControlList;
    }

    public void setRegion(String str) {
        this.region = str;
    }

    public CreateBucketRequest withAccessControlList(AccessControlList accessControlList) {
        setAccessControlList(accessControlList);
        return this;
    }

    public CreateBucketRequest withCannedAcl(CannedAccessControlList cannedAccessControlList) {
        setCannedAcl(cannedAccessControlList);
        return this;
    }
}
