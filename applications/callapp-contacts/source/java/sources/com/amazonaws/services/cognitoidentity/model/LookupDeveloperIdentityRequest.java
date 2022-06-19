package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/LookupDeveloperIdentityRequest.class */
public class LookupDeveloperIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String developerUserIdentifier;
    private String identityId;
    private String identityPoolId;
    private Integer maxResults;
    private String nextToken;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof LookupDeveloperIdentityRequest)) {
            return false;
        }
        LookupDeveloperIdentityRequest lookupDeveloperIdentityRequest = (LookupDeveloperIdentityRequest) obj;
        if ((lookupDeveloperIdentityRequest.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.getIdentityPoolId() != null && !lookupDeveloperIdentityRequest.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.getIdentityId() == null) ^ (getIdentityId() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.getIdentityId() != null && !lookupDeveloperIdentityRequest.getIdentityId().equals(getIdentityId())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.getDeveloperUserIdentifier() == null) ^ (getDeveloperUserIdentifier() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.getDeveloperUserIdentifier() != null && !lookupDeveloperIdentityRequest.getDeveloperUserIdentifier().equals(getDeveloperUserIdentifier())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.getMaxResults() == null) ^ (getMaxResults() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.getMaxResults() != null && !lookupDeveloperIdentityRequest.getMaxResults().equals(getMaxResults())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.getNextToken() == null) ^ (getNextToken() == null)) {
            return false;
        }
        return lookupDeveloperIdentityRequest.getNextToken() == null || lookupDeveloperIdentityRequest.getNextToken().equals(getNextToken());
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

    public Integer getMaxResults() {
        return this.maxResults;
    }

    public String getNextToken() {
        return this.nextToken;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode();
        int hashCode2 = getIdentityId() == null ? 0 : getIdentityId().hashCode();
        int hashCode3 = getDeveloperUserIdentifier() == null ? 0 : getDeveloperUserIdentifier().hashCode();
        int hashCode4 = getMaxResults() == null ? 0 : getMaxResults().hashCode();
        if (getNextToken() != null) {
            i = getNextToken().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
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

    public void setMaxResults(Integer num) {
        this.maxResults = num;
    }

    public void setNextToken(String str) {
        this.nextToken = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId() + ",");
        }
        if (getIdentityId() != null) {
            sb.append("IdentityId: " + getIdentityId() + ",");
        }
        if (getDeveloperUserIdentifier() != null) {
            sb.append("DeveloperUserIdentifier: " + getDeveloperUserIdentifier() + ",");
        }
        if (getMaxResults() != null) {
            sb.append("MaxResults: " + getMaxResults() + ",");
        }
        if (getNextToken() != null) {
            sb.append("NextToken: " + getNextToken());
        }
        sb.append("}");
        return sb.toString();
    }

    public LookupDeveloperIdentityRequest withDeveloperUserIdentifier(String str) {
        this.developerUserIdentifier = str;
        return this;
    }

    public LookupDeveloperIdentityRequest withIdentityId(String str) {
        this.identityId = str;
        return this;
    }

    public LookupDeveloperIdentityRequest withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public LookupDeveloperIdentityRequest withMaxResults(Integer num) {
        this.maxResults = num;
        return this;
    }

    public LookupDeveloperIdentityRequest withNextToken(String str) {
        this.nextToken = str;
        return this;
    }
}
