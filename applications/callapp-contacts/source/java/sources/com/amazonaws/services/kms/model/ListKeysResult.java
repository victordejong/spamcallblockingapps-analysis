package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListKeysResult.class */
public class ListKeysResult implements Serializable {
    private List<KeyListEntry> keys = new ArrayList();
    private String nextMarker;
    private Boolean truncated;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListKeysResult)) {
            return false;
        }
        ListKeysResult listKeysResult = (ListKeysResult) obj;
        if ((listKeysResult.getKeys() == null) ^ (getKeys() == null)) {
            return false;
        }
        if (listKeysResult.getKeys() != null && !listKeysResult.getKeys().equals(getKeys())) {
            return false;
        }
        if ((listKeysResult.getNextMarker() == null) ^ (getNextMarker() == null)) {
            return false;
        }
        if (listKeysResult.getNextMarker() != null && !listKeysResult.getNextMarker().equals(getNextMarker())) {
            return false;
        }
        if ((listKeysResult.getTruncated() == null) ^ (getTruncated() == null)) {
            return false;
        }
        return listKeysResult.getTruncated() == null || listKeysResult.getTruncated().equals(getTruncated());
    }

    public List<KeyListEntry> getKeys() {
        return this.keys;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public Boolean getTruncated() {
        return this.truncated;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeys() == null ? 0 : getKeys().hashCode();
        int hashCode2 = getNextMarker() == null ? 0 : getNextMarker().hashCode();
        if (getTruncated() != null) {
            i = getTruncated().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public Boolean isTruncated() {
        return this.truncated;
    }

    public void setKeys(Collection<KeyListEntry> collection) {
        if (collection == null) {
            this.keys = null;
        } else {
            this.keys = new ArrayList(collection);
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
        if (getKeys() != null) {
            sb.append("Keys: " + getKeys() + ",");
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

    public ListKeysResult withKeys(Collection<KeyListEntry> collection) {
        setKeys(collection);
        return this;
    }

    public ListKeysResult withKeys(KeyListEntry... keyListEntryArr) {
        if (getKeys() == null) {
            this.keys = new ArrayList(keyListEntryArr.length);
        }
        for (KeyListEntry keyListEntry : keyListEntryArr) {
            this.keys.add(keyListEntry);
        }
        return this;
    }

    public ListKeysResult withNextMarker(String str) {
        this.nextMarker = str;
        return this;
    }

    public ListKeysResult withTruncated(Boolean bool) {
        this.truncated = bool;
        return this;
    }
}
