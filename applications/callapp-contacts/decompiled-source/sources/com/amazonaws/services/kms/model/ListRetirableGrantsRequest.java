package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListRetirableGrantsRequest.class */
public class ListRetirableGrantsRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer limit;
    private String marker;
    private String retiringPrincipal;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListRetirableGrantsRequest)) {
            return false;
        }
        ListRetirableGrantsRequest listRetirableGrantsRequest = (ListRetirableGrantsRequest) obj;
        if ((listRetirableGrantsRequest.getLimit() == null) ^ (getLimit() == null)) {
            return false;
        }
        if (listRetirableGrantsRequest.getLimit() != null && !listRetirableGrantsRequest.getLimit().equals(getLimit())) {
            return false;
        }
        if ((listRetirableGrantsRequest.getMarker() == null) ^ (getMarker() == null)) {
            return false;
        }
        if (listRetirableGrantsRequest.getMarker() != null && !listRetirableGrantsRequest.getMarker().equals(getMarker())) {
            return false;
        }
        if ((listRetirableGrantsRequest.getRetiringPrincipal() == null) ^ (getRetiringPrincipal() == null)) {
            return false;
        }
        return listRetirableGrantsRequest.getRetiringPrincipal() == null || listRetirableGrantsRequest.getRetiringPrincipal().equals(getRetiringPrincipal());
    }

    public Integer getLimit() {
        return this.limit;
    }

    public String getMarker() {
        return this.marker;
    }

    public String getRetiringPrincipal() {
        return this.retiringPrincipal;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getLimit() == null ? 0 : getLimit().hashCode();
        int hashCode2 = getMarker() == null ? 0 : getMarker().hashCode();
        if (getRetiringPrincipal() != null) {
            i = getRetiringPrincipal().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setLimit(Integer num) {
        this.limit = num;
    }

    public void setMarker(String str) {
        this.marker = str;
    }

    public void setRetiringPrincipal(String str) {
        this.retiringPrincipal = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getLimit() != null) {
            sb.append("Limit: " + getLimit() + ",");
        }
        if (getMarker() != null) {
            sb.append("Marker: " + getMarker() + ",");
        }
        if (getRetiringPrincipal() != null) {
            sb.append("RetiringPrincipal: " + getRetiringPrincipal());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListRetirableGrantsRequest withLimit(Integer num) {
        this.limit = num;
        return this;
    }

    public ListRetirableGrantsRequest withMarker(String str) {
        this.marker = str;
        return this;
    }

    public ListRetirableGrantsRequest withRetiringPrincipal(String str) {
        this.retiringPrincipal = str;
        return this;
    }
}
