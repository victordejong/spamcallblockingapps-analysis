package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest.class */
public class DescribeCustomKeyStoresRequest extends AmazonWebServiceRequest implements Serializable {
    private String customKeyStoreId;
    private String customKeyStoreName;
    private Integer limit;
    private String marker;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DescribeCustomKeyStoresRequest)) {
            return false;
        }
        DescribeCustomKeyStoresRequest describeCustomKeyStoresRequest = (DescribeCustomKeyStoresRequest) obj;
        if ((describeCustomKeyStoresRequest.getCustomKeyStoreId() == null) ^ (getCustomKeyStoreId() == null)) {
            return false;
        }
        if (describeCustomKeyStoresRequest.getCustomKeyStoreId() != null && !describeCustomKeyStoresRequest.getCustomKeyStoreId().equals(getCustomKeyStoreId())) {
            return false;
        }
        if ((describeCustomKeyStoresRequest.getCustomKeyStoreName() == null) ^ (getCustomKeyStoreName() == null)) {
            return false;
        }
        if (describeCustomKeyStoresRequest.getCustomKeyStoreName() != null && !describeCustomKeyStoresRequest.getCustomKeyStoreName().equals(getCustomKeyStoreName())) {
            return false;
        }
        if ((describeCustomKeyStoresRequest.getLimit() == null) ^ (getLimit() == null)) {
            return false;
        }
        if (describeCustomKeyStoresRequest.getLimit() != null && !describeCustomKeyStoresRequest.getLimit().equals(getLimit())) {
            return false;
        }
        if ((describeCustomKeyStoresRequest.getMarker() == null) ^ (getMarker() == null)) {
            return false;
        }
        return describeCustomKeyStoresRequest.getMarker() == null || describeCustomKeyStoresRequest.getMarker().equals(getMarker());
    }

    public String getCustomKeyStoreId() {
        return this.customKeyStoreId;
    }

    public String getCustomKeyStoreName() {
        return this.customKeyStoreName;
    }

    public Integer getLimit() {
        return this.limit;
    }

    public String getMarker() {
        return this.marker;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCustomKeyStoreId() == null ? 0 : getCustomKeyStoreId().hashCode();
        int hashCode2 = getCustomKeyStoreName() == null ? 0 : getCustomKeyStoreName().hashCode();
        int hashCode3 = getLimit() == null ? 0 : getLimit().hashCode();
        if (getMarker() != null) {
            i = getMarker().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
    }

    public void setCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
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
        if (getCustomKeyStoreId() != null) {
            sb.append("CustomKeyStoreId: " + getCustomKeyStoreId() + ",");
        }
        if (getCustomKeyStoreName() != null) {
            sb.append("CustomKeyStoreName: " + getCustomKeyStoreName() + ",");
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

    public DescribeCustomKeyStoresRequest withCustomKeyStoreId(String str) {
        this.customKeyStoreId = str;
        return this;
    }

    public DescribeCustomKeyStoresRequest withCustomKeyStoreName(String str) {
        this.customKeyStoreName = str;
        return this;
    }

    public DescribeCustomKeyStoresRequest withLimit(Integer num) {
        this.limit = num;
        return this;
    }

    public DescribeCustomKeyStoresRequest withMarker(String str) {
        this.marker = str;
        return this;
    }
}
