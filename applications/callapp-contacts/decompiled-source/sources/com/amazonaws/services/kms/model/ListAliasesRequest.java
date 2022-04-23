package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListAliasesRequest.class */
public class ListAliasesRequest extends AmazonWebServiceRequest implements Serializable {
    private String keyId;
    private Integer limit;
    private String marker;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListAliasesRequest)) {
            return false;
        }
        ListAliasesRequest listAliasesRequest = (ListAliasesRequest) obj;
        if ((listAliasesRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (listAliasesRequest.getKeyId() != null && !listAliasesRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((listAliasesRequest.getLimit() == null) ^ (getLimit() == null)) {
            return false;
        }
        if (listAliasesRequest.getLimit() != null && !listAliasesRequest.getLimit().equals(getLimit())) {
            return false;
        }
        if ((listAliasesRequest.getMarker() == null) ^ (getMarker() == null)) {
            return false;
        }
        return listAliasesRequest.getMarker() == null || listAliasesRequest.getMarker().equals(getMarker());
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

    public ListAliasesRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public ListAliasesRequest withLimit(Integer num) {
        this.limit = num;
        return this;
    }

    public ListAliasesRequest withMarker(String str) {
        this.marker = str;
        return this;
    }
}
