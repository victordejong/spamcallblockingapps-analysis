package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/UnlinkDeveloperIdentityRequest.class */
public class UnlinkDeveloperIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String developerProviderName;
    private String developerUserIdentifier;
    private String identityId;
    private String identityPoolId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnlinkDeveloperIdentityRequest)) {
            return false;
        }
        UnlinkDeveloperIdentityRequest unlinkDeveloperIdentityRequest = (UnlinkDeveloperIdentityRequest) obj;
        if ((unlinkDeveloperIdentityRequest.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (unlinkDeveloperIdentityRequest.getIdentityId() != null && !unlinkDeveloperIdentityRequest.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((unlinkDeveloperIdentityRequest.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (unlinkDeveloperIdentityRequest.getIdentityPoolId() != null && !unlinkDeveloperIdentityRequest.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((unlinkDeveloperIdentityRequest.getDeveloperProviderName() == null) ^ (getDeveloperProviderName() == null)) {
            return false;
        }
        if (unlinkDeveloperIdentityRequest.getDeveloperProviderName() != null && !unlinkDeveloperIdentityRequest.getDeveloperProviderName().equals(getDeveloperProviderName())) {
            return false;
        }
        if ((unlinkDeveloperIdentityRequest.getDeveloperUserIdentifier() == null) ^ (getDeveloperUserIdentifier() == null)) {
            return false;
        }
        return unlinkDeveloperIdentityRequest.getDeveloperUserIdentifier() == null || unlinkDeveloperIdentityRequest.getDeveloperUserIdentifier().equals(getDeveloperUserIdentifier());
    }

    public String getDeveloperProviderName() {
        return this.developerProviderName;
    }

    public String getDeveloperUserIdentifier() {
        return this.developerUserIdentifier;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        int hashCode2 = getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode();
        int hashCode3 = getDeveloperProviderName() == null ? 0 : getDeveloperProviderName().hashCode();
        if (getDeveloperUserIdentifier() != null) {
            i = getDeveloperUserIdentifier().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setDeveloperProviderName(String str) {
        this.developerProviderName = str;
    }

    public void setDeveloperUserIdentifier(String str) {
        this.developerUserIdentifier = str;
    }

    public void setIdentityId(String str) {
        this.identityId = str;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId() + ",");
        }
        if (getDeveloperProviderName() != null) {
            sb.append("DeveloperProviderName: " + getDeveloperProviderName() + ",");
        }
        if (getDeveloperUserIdentifier() != null) {
            sb.append("DeveloperUserIdentifier: " + getDeveloperUserIdentifier());
        }
        sb.append("}");
        return sb.toString();
    }

    public UnlinkDeveloperIdentityRequest withDeveloperProviderName(String str) {
        this.developerProviderName = str;
        return this;
    }

    public UnlinkDeveloperIdentityRequest withDeveloperUserIdentifier(String str) {
        this.developerUserIdentifier = str;
        return this;
    }

    public UnlinkDeveloperIdentityRequest withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public UnlinkDeveloperIdentityRequest withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }
}
