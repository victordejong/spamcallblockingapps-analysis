package com.amazonaws.services.p017s3.model;

import com.amazonaws.services.p017s3.internal.ObjectExpirationResult;
import com.amazonaws.services.p017s3.internal.ObjectRestoreResult;
import com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.ObjectMetadata */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ObjectMetadata.class */
public class ObjectMetadata implements ServerSideEncryptionResult, ObjectExpirationResult, ObjectRestoreResult, Cloneable {
    public Date expirationTime;
    public String expirationTimeRuleId;
    public Date httpExpiresDate;
    public Map<String, Object> metadata;
    public Boolean ongoingRestore;
    public Date restoreExpirationTime;
    public Map<String, String> userMetadata;

    public ObjectMetadata() {
        this.userMetadata = new HashMap();
        this.metadata = new HashMap();
    }

    public ObjectMetadata(ObjectMetadata objectMetadata) {
        Map<String, String> map = objectMetadata.userMetadata;
        HashMap hashMap = null;
        this.userMetadata = map == null ? null : new HashMap(map);
        Map<String, Object> map2 = objectMetadata.metadata;
        if (map2 != null) {
            hashMap = new HashMap(map2);
        }
        this.metadata = hashMap;
        this.expirationTime = objectMetadata.expirationTime;
        this.expirationTimeRuleId = objectMetadata.expirationTimeRuleId;
        this.httpExpiresDate = objectMetadata.httpExpiresDate;
        this.ongoingRestore = objectMetadata.ongoingRestore;
        this.restoreExpirationTime = objectMetadata.restoreExpirationTime;
    }

    public void addUserMetadata(String str, String str2) {
        this.userMetadata.put(str, str2);
    }

    public ObjectMetadata clone() {
        return new ObjectMetadata(this);
    }

    public long getContentLength() {
        Long l = (Long) this.metadata.get("Content-Length");
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    public String getContentMD5() {
        return (String) this.metadata.get("Content-MD5");
    }

    public String getContentType() {
        return (String) this.metadata.get("Content-Type");
    }

    public String getETag() {
        return (String) this.metadata.get("ETag");
    }

    public Date getExpirationTime() {
        return this.expirationTime;
    }

    public String getExpirationTimeRuleId() {
        return this.expirationTimeRuleId;
    }

    public Date getHttpExpiresDate() {
        return this.httpExpiresDate;
    }

    public long getInstanceLength() {
        int lastIndexOf;
        String str = (String) this.metadata.get("Content-Range");
        return (str == null || (lastIndexOf = str.lastIndexOf("/")) < 0) ? getContentLength() : Long.parseLong(str.substring(lastIndexOf + 1));
    }

    public Map<String, Object> getRawMetadata() {
        return Collections.unmodifiableMap(new HashMap(this.metadata));
    }

    public Object getRawMetadataValue(String str) {
        return this.metadata.get(str);
    }

    public String getSSEAlgorithm() {
        return (String) this.metadata.get("x-amz-server-side-encryption");
    }

    public String getSSECustomerAlgorithm() {
        return (String) this.metadata.get("x-amz-server-side-encryption-customer-algorithm");
    }

    public String getSSECustomerKeyMd5() {
        return (String) this.metadata.get("x-amz-server-side-encryption-customer-key-MD5");
    }

    public String getSSEKMSKeyId() {
        return (String) this.metadata.get("x-amz-server-side-encryption-aws-kms-key-id");
    }

    public Map<String, String> getUserMetadata() {
        return this.userMetadata;
    }

    public String getVersionId() {
        return (String) this.metadata.get("x-amz-version-id");
    }

    public void setCacheControl(String str) {
        this.metadata.put("Cache-Control", str);
    }

    public void setContentDisposition(String str) {
        this.metadata.put("Content-Disposition", str);
    }

    public void setContentEncoding(String str) {
        this.metadata.put("Content-Encoding", str);
    }

    public void setContentLength(long j) {
        this.metadata.put("Content-Length", Long.valueOf(j));
    }

    public void setContentMD5(String str) {
        if (str == null) {
            this.metadata.remove("Content-MD5");
        } else {
            this.metadata.put("Content-MD5", str);
        }
    }

    public void setContentType(String str) {
        this.metadata.put("Content-Type", str);
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
    public void setExpirationTime(Date date) {
        this.expirationTime = date;
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
    public void setExpirationTimeRuleId(String str) {
        this.expirationTimeRuleId = str;
    }

    public void setHeader(String str, Object obj) {
        this.metadata.put(str, obj);
    }

    public void setHttpExpiresDate(Date date) {
        this.httpExpiresDate = date;
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectRestoreResult
    public void setOngoingRestore(boolean z) {
        this.ongoingRestore = Boolean.valueOf(z);
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectRestoreResult
    public void setRestoreExpirationTime(Date date) {
        this.restoreExpirationTime = date;
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public void setSSEAlgorithm(String str) {
        this.metadata.put("x-amz-server-side-encryption", str);
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public void setSSECustomerAlgorithm(String str) {
        this.metadata.put("x-amz-server-side-encryption-customer-algorithm", str);
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public void setSSECustomerKeyMd5(String str) {
        this.metadata.put("x-amz-server-side-encryption-customer-key-MD5", str);
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public void setSSEKMSKeyId(String str) {
        this.metadata.put("x-amz-server-side-encryption-aws-kms-key-id", str);
    }

    public void setUserMetadata(Map<String, String> map) {
        this.userMetadata = map;
    }
}
