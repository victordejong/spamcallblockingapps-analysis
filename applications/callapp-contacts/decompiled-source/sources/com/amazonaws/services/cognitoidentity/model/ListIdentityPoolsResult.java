package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/ListIdentityPoolsResult.class */
public class ListIdentityPoolsResult implements Serializable {
    private List<IdentityPoolShortDescription> identityPools;
    private String nextToken;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListIdentityPoolsResult)) {
            return false;
        }
        ListIdentityPoolsResult listIdentityPoolsResult = (ListIdentityPoolsResult) obj;
        if ((listIdentityPoolsResult.getIdentityPools() == null) ^ (getIdentityPools() == null)) {
            return false;
        }
        if (listIdentityPoolsResult.getIdentityPools() != null && !listIdentityPoolsResult.getIdentityPools().equals(getIdentityPools())) {
            return false;
        }
        if ((listIdentityPoolsResult.getNextToken() == null) ^ (getNextToken() == null)) {
            return false;
        }
        return listIdentityPoolsResult.getNextToken() == null || listIdentityPoolsResult.getNextToken().equals(getNextToken());
    }

    public List<IdentityPoolShortDescription> getIdentityPools() {
        return this.identityPools;
    }

    public String getNextToken() {
        return this.nextToken;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getIdentityPools() == null ? 0 : getIdentityPools().hashCode();
        if (getNextToken() != null) {
            i = getNextToken().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setIdentityPools(Collection<IdentityPoolShortDescription> collection) {
        if (collection == null) {
            this.identityPools = null;
        } else {
            this.identityPools = new ArrayList(collection);
        }
    }

    public void setNextToken(String str) {
        this.nextToken = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getIdentityPools() != null) {
            sb.append("IdentityPools: " + getIdentityPools() + ",");
        }
        if (getNextToken() != null) {
            sb.append("NextToken: " + getNextToken());
        }
        sb.append("}");
        return sb.toString();
    }

    public ListIdentityPoolsResult withIdentityPools(Collection<IdentityPoolShortDescription> collection) {
        setIdentityPools(collection);
        return this;
    }

    public ListIdentityPoolsResult withIdentityPools(IdentityPoolShortDescription... identityPoolShortDescriptionArr) {
        if (getIdentityPools() == null) {
            this.identityPools = new ArrayList(identityPoolShortDescriptionArr.length);
        }
        for (IdentityPoolShortDescription identityPoolShortDescription : identityPoolShortDescriptionArr) {
            this.identityPools.add(identityPoolShortDescription);
        }
        return this;
    }

    public ListIdentityPoolsResult withNextToken(String str) {
        this.nextToken = str;
        return this;
    }
}
