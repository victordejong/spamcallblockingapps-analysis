package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/UntagResourceRequest.class */
public class UntagResourceRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;
    private List<String> tagKeys = new ArrayList();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UntagResourceRequest)) {
            return false;
        }
        UntagResourceRequest untagResourceRequest = (UntagResourceRequest) obj;
        if ((untagResourceRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (untagResourceRequest.getKeyId() != null && !untagResourceRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((untagResourceRequest.getTagKeys() == null) ^ (getTagKeys() == null)) {
            return false;
        }
        return untagResourceRequest.getTagKeys() == null || untagResourceRequest.getTagKeys().equals(getTagKeys());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public List<String> getTagKeys() {
        return this.tagKeys;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getTagKeys() != null) {
            i = getTagKeys().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setTagKeys(Collection<String> collection) {
        if (collection == null) {
            this.tagKeys = null;
        } else {
            this.tagKeys = new ArrayList(collection);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getTagKeys() != null) {
            sb.append("TagKeys: " + getTagKeys());
        }
        sb.append("}");
        return sb.toString();
    }

    public UntagResourceRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public UntagResourceRequest withTagKeys(Collection<String> collection) {
        setTagKeys(collection);
        return this;
    }

    public UntagResourceRequest withTagKeys(String... strArr) {
        if (getTagKeys() == null) {
            this.tagKeys = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.tagKeys.add(str);
        }
        return this;
    }
}
