package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/DeleteAliasRequest.class */
public class DeleteAliasRequest extends AmazonWebServiceRequest implements Serializable {
    private String aliasName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteAliasRequest)) {
            return false;
        }
        DeleteAliasRequest deleteAliasRequest = (DeleteAliasRequest) obj;
        if ((deleteAliasRequest.getAliasName() == null) ^ (getAliasName() == null)) {
            return false;
        }
        return deleteAliasRequest.getAliasName() == null || deleteAliasRequest.getAliasName().equals(getAliasName());
    }

    public String getAliasName() {
        return this.aliasName;
    }

    public int hashCode() {
        return (getAliasName() == null ? 0 : getAliasName().hashCode()) + 31;
    }

    public void setAliasName(String str) {
        this.aliasName = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getAliasName() != null) {
            sb.append("AliasName: " + getAliasName());
        }
        sb.append("}");
        return sb.toString();
    }

    public DeleteAliasRequest withAliasName(String str) {
        this.aliasName = str;
        return this;
    }
}
