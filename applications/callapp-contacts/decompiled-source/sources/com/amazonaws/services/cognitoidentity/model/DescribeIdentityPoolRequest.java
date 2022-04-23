package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolRequest.class */
public class DescribeIdentityPoolRequest extends AmazonWebServiceRequest implements Serializable {
    private String identityPoolId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DescribeIdentityPoolRequest)) {
            return false;
        }
        DescribeIdentityPoolRequest describeIdentityPoolRequest = (DescribeIdentityPoolRequest) obj;
        if ((describeIdentityPoolRequest.getIdentityPoolId() == null) ^ (getIdentityPoolId() == null)) {
            return false;
        }
        return describeIdentityPoolRequest.getIdentityPoolId() == null || describeIdentityPoolRequest.getIdentityPoolId().equals(getIdentityPoolId());
    }

    public String getIdentityPoolId() {
        return this.identityPoolId;
    }

    public int hashCode() {
        return (getIdentityPoolId() == null ? 0 : getIdentityPoolId().hashCode()) + 31;
    }

    public void setIdentityPoolId(String str) {
        this.identityPoolId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPoolId() != null) {
            sb.append("IdentityPoolId: " + getIdentityPoolId());
        }
        sb.append("}");
        return sb.toString();
    }

    public DescribeIdentityPoolRequest withIdentityPoolId(String str) {
        this.identityPoolId = str;
        return this;
    }
}
