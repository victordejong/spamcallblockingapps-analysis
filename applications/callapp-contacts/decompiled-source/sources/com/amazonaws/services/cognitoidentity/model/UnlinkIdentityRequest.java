package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/UnlinkIdentityRequest.class */
public class UnlinkIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String identityId;
    private Map<String, String> logins;
    private List<String> loginsToRemove;

    public UnlinkIdentityRequest addLoginsEntry(String str, String str2) {
        if (this.logins == null) {
            this.logins = new HashMap();
        }
        if (!this.logins.containsKey(str)) {
            this.logins.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public UnlinkIdentityRequest clearLoginsEntries() {
        this.logins = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnlinkIdentityRequest)) {
            return false;
        }
        UnlinkIdentityRequest unlinkIdentityRequest = (UnlinkIdentityRequest) obj;
        if ((unlinkIdentityRequest.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (unlinkIdentityRequest.getIdentityId() != null && !unlinkIdentityRequest.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((unlinkIdentityRequest.getLogins() == null) ^ (getLogins() == null)) {
            return false;
        }
        if (unlinkIdentityRequest.getLogins() != null && !unlinkIdentityRequest.getLogins().equals(getLogins())) {
            return false;
        }
        if ((unlinkIdentityRequest.getLoginsToRemove() == null) ^ (getLoginsToRemove() == null)) {
            return false;
        }
        return unlinkIdentityRequest.getLoginsToRemove() == null || unlinkIdentityRequest.getLoginsToRemove().equals(getLoginsToRemove());
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public Map<String, String> getLogins() {
        return this.logins;
    }

    public List<String> getLoginsToRemove() {
        return this.loginsToRemove;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        int hashCode2 = getLogins() == null ? 0 : getLogins().hashCode();
        if (getLoginsToRemove() != null) {
            i = getLoginsToRemove().hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setLogins(Map<String, String> map) {
        this.logins = map;
    }

    public void setLoginsToRemove(Collection<String> collection) {
        if (collection == null) {
            this.loginsToRemove = null;
        } else {
            this.loginsToRemove = new ArrayList(collection);
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
        if (getLoginsToRemove() != null) {
            sb.append("LoginsToRemove: " + getLoginsToRemove());
        }
        sb.append("}");
        return sb.toString();
    }

    public UnlinkIdentityRequest withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public UnlinkIdentityRequest withLogins(Map<String, String> map) {
        this.logins = map;
        return this;
    }

    public UnlinkIdentityRequest withLoginsToRemove(Collection<String> collection) {
        setLoginsToRemove(collection);
        return this;
    }

    public UnlinkIdentityRequest withLoginsToRemove(String... strArr) {
        if (getLoginsToRemove() == null) {
            this.loginsToRemove = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.loginsToRemove.add(str);
        }
        return this;
    }
}
