package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/ListTagsForResourceResult.class */
public class ListTagsForResourceResult implements Serializable {
    private Map<String, String> tags;

    public ListTagsForResourceResult addTagsEntry(String str, String str2) {
        if (this.tags == null) {
            this.tags = new HashMap();
        }
        if (!this.tags.containsKey(str)) {
            this.tags.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public ListTagsForResourceResult clearTagsEntries() {
        this.tags = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListTagsForResourceResult)) {
            return false;
        }
        ListTagsForResourceResult listTagsForResourceResult = (ListTagsForResourceResult) obj;
        if ((listTagsForResourceResult.getTags() == null) ^ (getTags() == null)) {
            return false;
        }
        return listTagsForResourceResult.getTags() == null || listTagsForResourceResult.getTags().equals(getTags());
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    public int hashCode() {
        return (getTags() == null ? 0 : getTags().hashCode()) + 31;
    }

    public void setTags(Map<String, String> map) {
        this.tags = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getTags() != null) {
            sb.append("Tags: " + getTags());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListTagsForResourceResult withTags(Map<String, String> map) {
        this.tags = map;
        return this;
    }
}
