package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/MergeDeveloperIdentitiesRequest.class */
public class MergeDeveloperIdentitiesRequest extends AmazonWebServiceRequest implements Serializable {
    private String destinationUserIdentifier;
    private String developerProviderName;
    private String identityPoolId;
    private String sourceUserIdentifier;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MergeDeveloperIdentitiesRequest)) {
            return false;
        }
        MergeDeveloperIdentitiesRequest mergeDeveloperIdentitiesRequest = (MergeDeveloperIdentitiesRequest) obj;
        if ((mergeDeveloperIdentitiesRequest.getSourceUserIdentifier() == null) ^ (getSourceUserIdentifier() == null)) {
            return false;
        }
        if (mergeDeveloperIdentitiesRequest.getSourceUserIdentifier() != null && !mergeDeveloperIdentitiesRequest.getSourceUserIdentifier().equals(getSourceUserIdentifier())) {
            return false;
        }
        if ((mergeDeveloperIdentitiesRequest.getDestinationUserIdentifier() == null) ^ (getDestinationUserIdentifier() == null)) {
            return false;
        }
        if (mergeDeveloperIdentitiesRequest.getDestinationUserIdentifier() != null && !mergeDeveloperIdentitiesRequest.getDestinationUserIdentifier().equals(getDestinationUserIdentifier())) {
            return false;
        }
        if ((mergeDeveloperIdentitiesRequest.getDeveloperProviderName() == null) ^ (getDeveloperProviderName() == null)) {
            return false;
        }
        if (mergeDeveloperIdentitiesRequest.getDeveloperProviderName() != null && !mergeDeveloperIdentitiesRequest.getDeveloperProviderName().equals(getDeveloperProviderName())) {
            return false;
        }
        if ((mergeDeveloperIdentitiesRequest.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        return mergeDeveloperIdentitiesRequest.getIdentityPoolId() == null || mergeDeveloperIdentitiesRequest.getIdentityPoolId().equals(getIdentityPoolId());
    }

    public String getDestinationUserIdentifier() {
        return this.destinationUserIdentifier;
    }

    public String getDeveloperProviderName() {
        return this.developerProviderName;
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public String getSourceUserIdentifier() {
        return this.sourceUserIdentifier;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getSourceUserIdentifier() == null ? 0 : getSourceUserIdentifier().hashCode();
        int hashCode2 = getDestinationUserIdentifier() == null ? 0 : getDestinationUserIdentifier().hashCode();
        int hashCode3 = getDeveloperProviderName() == null ? 0 : getDeveloperProviderName().hashCode();
        if (getIdentityPoolId() != null) {
            i = getIdentityPoolId().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setDestinationUserIdentifier(String str) {
        this.destinationUserIdentifier = str;
    }

    public void setDeveloperProviderName(String str) {
        this.developerProviderName = str;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public void setSourceUserIdentifier(String str) {
        this.sourceUserIdentifier = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getSourceUserIdentifier() != null) {
            sb.append("SourceUserIdentifier: " + getSourceUserIdentifier() + ",");
        }
        if (getDestinationUserIdentifier() != null) {
            sb.append("DestinationUserIdentifier: " + getDestinationUserIdentifier() + ",");
        }
        if (getDeveloperProviderName() != null) {
            sb.append("DeveloperProviderName: " + getDeveloperProviderName() + ",");
        }
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId());
        }
        sb.append("}");
        return sb.toString();
    }

    public MergeDeveloperIdentitiesRequest withDestinationUserIdentifier(String str) {
        this.destinationUserIdentifier = str;
        return this;
    }

    public MergeDeveloperIdentitiesRequest withDeveloperProviderName(String str) {
        this.developerProviderName = str;
        return this;
    }

    public MergeDeveloperIdentitiesRequest withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public MergeDeveloperIdentitiesRequest withSourceUserIdentifier(String str) {
        this.sourceUserIdentifier = str;
        return this;
    }
}
