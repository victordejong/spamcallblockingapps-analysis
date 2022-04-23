package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/TagResourceRequest.class */
public class TagResourceRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;
    private List<Tag> tags = new ArrayList();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TagResourceRequest)) {
            return false;
        }
        TagResourceRequest tagResourceRequest = (TagResourceRequest) obj;
        if ((tagResourceRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (tagResourceRequest.getKeyId() != null && !tagResourceRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((tagResourceRequest.getTags() == null) ^ (getTags() == null)) {
            return false;
        }
        return tagResourceRequest.getTags() == null || tagResourceRequest.getTags().equals(getTags());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public List<Tag> getTags() {
        return this.tags;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getTags() != null) {
            i = getTags().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setTags(Collection<Tag> collection) {
        if (collection == null) {
            this.tags = null;
        } else {
            this.tags = new ArrayList(collection);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getTags() != null) {
            sb.append("Tags: " + getTags());
        }
        sb.append("}");
        return sb.toString();
    }

    public TagResourceRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public TagResourceRequest withTags(Collection<Tag> collection) {
        setTags(collection);
        return this;
    }

    public TagResourceRequest withTags(Tag... tagArr) {
        if (getTags() == null) {
            this.tags = new ArrayList(tagArr.length);
        }
        for (Tag tag : tagArr) {
            this.tags.add(tag);
        }
        return this;
    }
}
