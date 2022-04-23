package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ListAliasesResult.class */
public class ListAliasesResult implements Serializable {
    private List<AliasListEntry> aliases = new ArrayList();
    private String nextMarker;
    private Boolean truncated;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListAliasesResult)) {
            return false;
        }
        ListAliasesResult listAliasesResult = (ListAliasesResult) obj;
        if ((listAliasesResult.getAliases() == null) ^ (getAliases() == null)) {
            return false;
        }
        if (listAliasesResult.getAliases() != null && !listAliasesResult.getAliases().equals(getAliases())) {
            return false;
        }
        if ((listAliasesResult.getNextMarker() == null) ^ (getNextMarker() == null)) {
            return false;
        }
        if (listAliasesResult.getNextMarker() != null && !listAliasesResult.getNextMarker().equals(getNextMarker())) {
            return false;
        }
        if ((listAliasesResult.getTruncated() == null) ^ (getTruncated() == null)) {
            return false;
        }
        return listAliasesResult.getTruncated() == null || listAliasesResult.getTruncated().equals(getTruncated());
    }

    public List<AliasListEntry> getAliases() {
        return this.aliases;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public Boolean getTruncated() {
        return this.truncated;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getAliases() == null ? 0 : getAliases().hashCode();
        int hashCode2 = getNextMarker() == null ? 0 : getNextMarker().hashCode();
        if (getTruncated() != null) {
            i = getTruncated().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public Boolean isTruncated() {
        return this.truncated;
    }

    public void setAliases(Collection<AliasListEntry> collection) {
        if (collection == null) {
            this.aliases = null;
        } else {
            this.aliases = new ArrayList(collection);
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
        if (getAliases() != null) {
            sb.append("Aliases: " + getAliases() + ",");
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

    public ListAliasesResult withAliases(Collection<AliasListEntry> collection) {
        setAliases(collection);
        return this;
    }

    public ListAliasesResult withAliases(AliasListEntry... aliasListEntryArr) {
        if (getAliases() == null) {
            this.aliases = new ArrayList(aliasListEntryArr.length);
        }
        for (AliasListEntry aliasListEntry : aliasListEntryArr) {
            this.aliases.add(aliasListEntry);
        }
        return this;
    }

    public ListAliasesResult withNextMarker(String str) {
        this.nextMarker = str;
        return this;
    }

    public ListAliasesResult withTruncated(Boolean bool) {
        this.truncated = bool;
        return this;
    }
}
