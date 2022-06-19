package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListGrantsResult.class */
public class ListGrantsResult implements Serializable {
    private List<GrantListEntry> grants = new ArrayList();
    private String nextMarker;
    private Boolean truncated;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListGrantsResult)) {
            return false;
        }
        ListGrantsResult listGrantsResult = (ListGrantsResult) obj;
        if ((listGrantsResult.getGrants() == null) ^ (getGrants() == null)) {
            return false;
        }
        if (listGrantsResult.getGrants() != null && !listGrantsResult.getGrants().equals(getGrants())) {
            return false;
        }
        if ((listGrantsResult.getNextMarker() == null) ^ (getNextMarker() == null)) {
            return false;
        }
        if (listGrantsResult.getNextMarker() != null && !listGrantsResult.getNextMarker().equals(getNextMarker())) {
            return false;
        }
        if ((listGrantsResult.getTruncated() == null) ^ (getTruncated() == null)) {
            return false;
        }
        return listGrantsResult.getTruncated() == null || listGrantsResult.getTruncated().equals(getTruncated());
    }

    public List<GrantListEntry> getGrants() {
        return this.grants;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public Boolean getTruncated() {
        return this.truncated;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getGrants() == null ? 0 : getGrants().hashCode();
        int hashCode2 = getNextMarker() == null ? 0 : getNextMarker().hashCode();
        if (getTruncated() != null) {
            i = getTruncated().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public Boolean isTruncated() {
        return this.truncated;
    }

    public void setGrants(Collection<GrantListEntry> collection) {
        if (collection == null) {
            this.grants = null;
        } else {
            this.grants = new ArrayList(collection);
        }
    }

    public void setNextMarker(String str) {
        this.nextMarker = str;
    }

    public void setTruncated(Boolean bool) {
        this.truncated = bool;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getGrants() != null) {
            sb.append("Grants: " + getGrants() + ",");
        }
        if (getNextMarker() != null) {
            sb.append("NextMarker: " + getNextMarker() + ",");
        }
        if (getTruncated() != null) {
            sb.append("Truncated: " + getTruncated());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListGrantsResult withGrants(Collection<GrantListEntry> collection) {
        setGrants(collection);
        return this;
    }

    public ListGrantsResult withGrants(GrantListEntry... grantListEntryArr) {
        if (getGrants() == null) {
            this.grants = new ArrayList(grantListEntryArr.length);
        }
        for (GrantListEntry grantListEntry : grantListEntryArr) {
            this.grants.add(grantListEntry);
        }
        return this;
    }

    public ListGrantsResult withNextMarker(String str) {
        this.nextMarker = str;
        return this;
    }

    public ListGrantsResult withTruncated(Boolean bool) {
        this.truncated = bool;
        return this;
    }
}
