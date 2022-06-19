package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/ListIdentitiesRequest.class */
public class ListIdentitiesRequest extends AmazonWebServiceRequest implements Serializable {
    private Boolean hideDisabled;
    private String identityPoolId;
    private Integer maxResults;
    private String nextToken;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListIdentitiesRequest)) {
            return false;
        }
        ListIdentitiesRequest listIdentitiesRequest = (ListIdentitiesRequest) obj;
        if ((listIdentitiesRequest.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        if (listIdentitiesRequest.getIdentityPoolId() != null && !listIdentitiesRequest.getIdentityPoolId().equals(getIdentityPoolId())) {
            return false;
        }
        if ((listIdentitiesRequest.getMaxResults() == null) ^ (getMaxResults() == null)) {
            return false;
        }
        if (listIdentitiesRequest.getMaxResults() != null && !listIdentitiesRequest.getMaxResults().equals(getMaxResults())) {
            return false;
        }
        if ((listIdentitiesRequest.getNextToken() == null) ^ (getNextToken() == null)) {
            return false;
        }
        if (listIdentitiesRequest.getNextToken() != null && !listIdentitiesRequest.getNextToken().equals(getNextToken())) {
            return false;
        }
        if ((listIdentitiesRequest.getHideDisabled() == null) ^ (getHideDisabled() == null)) {
            return false;
        }
        return listIdentitiesRequest.getHideDisabled() == null || listIdentitiesRequest.getHideDisabled().equals(getHideDisabled());
    }

    public Boolean getHideDisabled() {
        return this.hideDisabled;
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
        int hashCode2 = getMaxResults() == null ? 0 : getMaxResults().hashCode();
        int hashCode3 = getNextToken() == null ? 0 : getNextToken().hashCode();
        if (getHideDisabled() != null) {
            i = getHideDisabled().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public Boolean isHideDisabled() {
        return this.hideDisabled;
    }

    public void setHideDisabled(Boolean bool) {
        this.hideDisabled = bool;
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
        if (getMaxResults() != null) {
            sb.append("MaxResults: " + getMaxResults() + ",");
        }
        if (getNextToken() != null) {
            sb.append("NextToken: " + getNextToken() + ",");
        }
        if (getHideDisabled() != null) {
            sb.append("HideDisabled: " + getHideDisabled());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListIdentitiesRequest withHideDisabled(Boolean bool) {
        this.hideDisabled = bool;
        return this;
    }

    public ListIdentitiesRequest withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }

    public ListIdentitiesRequest withMaxResults(Integer num) {
        this.maxResults = num;
        return this;
    }

    public ListIdentitiesRequest withNextToken(String str) {
        this.nextToken = str;
        return this;
    }
}
