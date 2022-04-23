package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/AliasListEntry.class */
public class AliasListEntry implements Serializable {
    private String aliasArn;
    private String aliasName;
    private Date creationDate;
    private Date lastUpdatedDate;
    private String targetKeyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AliasListEntry)) {
            return false;
        }
        AliasListEntry aliasListEntry = (AliasListEntry) obj;
        if ((aliasListEntry.getAliasName() == null) ^ (getAliasName() == null)) {
            return false;
        }
        if (aliasListEntry.getAliasName() != null && !aliasListEntry.getAliasName().equals(getAliasName())) {
            return false;
        }
        if ((aliasListEntry.getAliasArn() == null) ^ (getAliasArn() == null)) {
            return false;
        }
        if (aliasListEntry.getAliasArn() != null && !aliasListEntry.getAliasArn().equals(getAliasArn())) {
            return false;
        }
        if ((aliasListEntry.getTargetKeyId() == null) ^ (getTargetKeyId() == null)) {
            return false;
        }
        if (aliasListEntry.getTargetKeyId() != null && !aliasListEntry.getTargetKeyId().equals(getTargetKeyId())) {
            return false;
        }
        if ((aliasListEntry.getCreationDate() == null) ^ (getCreationDate() == null)) {
            return false;
        }
        if (aliasListEntry.getCreationDate() != null && !aliasListEntry.getCreationDate().equals(getCreationDate())) {
            return false;
        }
        if ((aliasListEntry.getLastUpdatedDate() == null) ^ (getLastUpdatedDate() == null)) {
            return false;
        }
        return aliasListEntry.getLastUpdatedDate() == null || aliasListEntry.getLastUpdatedDate().equals(getLastUpdatedDate());
    }

    public String getAliasArn() {
        return this.aliasArn;
    }

    public String getAliasName() {
        return this.aliasName;
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    public Date getLastUpdatedDate() {
        return this.lastUpdatedDate;
    }

    public String getTargetKeyId() {
        return this.targetKeyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getAliasName() == null ? 0 : getAliasName().hashCode();
        int hashCode2 = getAliasArn() == null ? 0 : getAliasArn().hashCode();
        int hashCode3 = getTargetKeyId() == null ? 0 : getTargetKeyId().hashCode();
        int hashCode4 = getCreationDate() == null ? 0 : getCreationDate().hashCode();
        if (getLastUpdatedDate() != null) {
            i = getLastUpdatedDate().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setAliasArn(String str) {
        this.aliasArn = str;
    }

    public void setAliasName(String str) {
        this.aliasName = str;
    }

    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setLastUpdatedDate(Date date) {
        this.lastUpdatedDate = date;
    }

    public void setTargetKeyId(String str) {
        this.targetKeyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getAliasName() != null) {
            sb.append("AliasName: " + getAliasName() + ",");
        }
        if (getAliasArn() != null) {
            sb.append("AliasArn: " + getAliasArn() + ",");
        }
        if (getTargetKeyId() != null) {
            sb.append("TargetKeyId: " + getTargetKeyId() + ",");
        }
        if (getCreationDate() != null) {
            sb.append("CreationDate: " + getCreationDate() + ",");
        }
        if (getLastUpdatedDate() != null) {
            sb.append("LastUpdatedDate: " + getLastUpdatedDate());
        }
        sb.append("}");
        return sb.toString();
    }

    public AliasListEntry withAliasArn(String str) {
        this.aliasArn = str;
        return this;
    }

    public AliasListEntry withAliasName(String str) {
        this.aliasName = str;
        return this;
    }

    public AliasListEntry withCreationDate(Date date) {
        this.creationDate = date;
        return this;
    }

    public AliasListEntry withLastUpdatedDate(Date date) {
        this.lastUpdatedDate = date;
        return this;
    }

    public AliasListEntry withTargetKeyId(String str) {
        this.targetKeyId = str;
        return this;
    }
}
