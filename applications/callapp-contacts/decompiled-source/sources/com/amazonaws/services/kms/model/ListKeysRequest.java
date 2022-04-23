package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListKeysRequest.class */
public class ListKeysRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer limit;
    private String marker;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListKeysRequest)) {
            return false;
        }
        ListKeysRequest listKeysRequest = (ListKeysRequest) obj;
        if ((listKeysRequest.getLimit() == null) ^ (getLimit() == null)) {
            return false;
        }
        if (listKeysRequest.getLimit() != null && !listKeysRequest.getLimit().equals(getLimit())) {
            return false;
        }
        if ((listKeysRequest.getMarker() == null) ^ (getMarker() == null)) {
            return false;
        }
        return listKeysRequest.getMarker() == null || listKeysRequest.getMarker().equals(getMarker());
    }

    public Integer getLimit() {
        return this.limit;
    }

    public String getMarker() {
        return this.marker;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getLimit() == null ? 0 : getLimit().hashCode();
        if (getMarker() != null) {
            i = getMarker().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setLimit(Integer num) {
        this.limit = num;
    }

    public void setMarker(String str) {
        this.marker = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getLimit() != null) {
            sb.append("Limit: " + getLimit() + ",");
        }
        if (getMarker() != null) {
            sb.append("Marker: " + getMarker());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListKeysRequest withLimit(Integer num) {
        this.limit = num;
        return this;
    }

    public ListKeysRequest withMarker(String str) {
        this.marker = str;
        return this;
    }
}
