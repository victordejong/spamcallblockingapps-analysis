package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListKeyPoliciesRequest.class */
public class ListKeyPoliciesRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;
    private Integer limit;
    private String marker;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListKeyPoliciesRequest)) {
            return false;
        }
        ListKeyPoliciesRequest listKeyPoliciesRequest = (ListKeyPoliciesRequest) obj;
        if ((listKeyPoliciesRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (listKeyPoliciesRequest.getKeyId() != null && !listKeyPoliciesRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((listKeyPoliciesRequest.getLimit() == null) ^ (getLimit() == null)) {
            return false;
        }
        if (listKeyPoliciesRequest.getLimit() != null && !listKeyPoliciesRequest.getLimit().equals(getLimit())) {
            return false;
        }
        if ((listKeyPoliciesRequest.getMarker() == null) ^ (getMarker() == null)) {
            return false;
        }
        return listKeyPoliciesRequest.getMarker() == null || listKeyPoliciesRequest.getMarker().equals(getMarker());
    }

    public String getKeyId() {
        return this.keyId;
    }

    public Integer getLimit() {
        return this.limit;
    }

    public String getMarker() {
        return this.marker;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getLimit() == null ? 0 : getLimit().hashCode();
        if (getMarker() != null) {
            i = getMarker().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setKeyId(String str) {
        this.keyId = str;
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
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getLimit() != null) {
            sb.append("Limit: " + getLimit() + ",");
        }
        if (getMarker() != null) {
            sb.append("Marker: " + getMarker());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListKeyPoliciesRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public ListKeyPoliciesRequest withLimit(Integer num) {
        this.limit = num;
        return this;
    }

    public ListKeyPoliciesRequest withMarker(String str) {
        this.marker = str;
        return this;
    }
}
