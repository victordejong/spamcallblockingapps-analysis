package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/IdentityDescription.class */
public class IdentityDescription implements Serializable {
    private Date creationDate;
    private String identityId;
    private Date lastModifiedDate;
    private List<String> logins;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IdentityDescription)) {
            return false;
        }
        IdentityDescription identityDescription = (IdentityDescription) obj;
        if ((identityDescription.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (identityDescription.getIdentityId() != null && !identityDescription.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((identityDescription.getLogins() == null) ^ (getLogins() == null)) {
            return false;
        }
        if (identityDescription.getLogins() != null && !identityDescription.getLogins().equals(getLogins())) {
            return false;
        }
        if ((identityDescription.getCreationDate() == null) ^ (getCreationDate() == null)) {
            return false;
        }
        if (identityDescription.getCreationDate() != null && !identityDescription.getCreationDate().equals(getCreationDate())) {
            return false;
        }
        if ((identityDescription.getLastModifiedDate() == null) ^ (getLastModifiedDate() == null)) {
            return false;
        }
        return identityDescription.getLastModifiedDate() == null || identityDescription.getLastModifiedDate().equals(getLastModifiedDate());
    }

    public Date getCreationDate() {
        return this.creationDate;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public Date getLastModifiedDate() {
        return this.lastModifiedDate;
    }

    public List<String> getLogins() {
        return this.logins;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        int hashCode2 = getLogins() == null ? 0 : getLogins().hashCode();
        int hashCode3 = getCreationDate() == null ? 0 : getCreationDate().hashCode();
        if (getLastModifiedDate() != null) {
            i = getLastModifiedDate().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setCreationDate(Date date) {
        this.creationDate = date;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setLastModifiedDate(Date date) {
        this.lastModifiedDate = date;
    }

    public void setLogins(Collection<String> collection) {
        if (collection == null) {
            this.logins = null;
        } else {
            this.logins = new ArrayList(collection);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getLogins() != null) {
            sb.append("Logins: " + getLogins() + ",");
        }
        if (getCreationDate() != null) {
            sb.append("CreationDate: " + getCreationDate() + ",");
        }
        if (getLastModifiedDate() != null) {
            sb.append("LastModifiedDate: " + getLastModifiedDate());
        }
        sb.append("}");
        return sb.toString();
    }

    public IdentityDescription withCreationDate(Date date) {
        this.creationDate = date;
        return this;
    }

    public IdentityDescription withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public IdentityDescription withLastModifiedDate(Date date) {
        this.lastModifiedDate = date;
        return this;
    }

    public IdentityDescription withLogins(Collection<String> collection) {
        setLogins(collection);
        return this;
    }

    public IdentityDescription withLogins(String... strArr) {
        if (getLogins() == null) {
            this.logins = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.logins.add(str);
        }
        return this;
    }
}
