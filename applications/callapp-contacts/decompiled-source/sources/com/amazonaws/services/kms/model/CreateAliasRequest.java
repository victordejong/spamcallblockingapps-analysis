package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CreateAliasRequest.class */
public class CreateAliasRequest extends AmazonWebServiceRequest implements Serializable {
    private String aliasName;
    private String targetKeyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateAliasRequest)) {
            return false;
        }
        CreateAliasRequest createAliasRequest = (CreateAliasRequest) obj;
        if ((createAliasRequest.getAliasName() == null) ^ (getAliasName() == null)) {
            return false;
        }
        if (createAliasRequest.getAliasName() != null && !createAliasRequest.getAliasName().equals(getAliasName())) {
            return false;
        }
        if ((createAliasRequest.getTargetKeyId() == null) ^ (getTargetKeyId() == null)) {
            return false;
        }
        return createAliasRequest.getTargetKeyId() == null || createAliasRequest.getTargetKeyId().equals(getTargetKeyId());
    }

    public String getAliasName() {
        return this.aliasName;
    }

    public String getTargetKeyId() {
        return this.targetKeyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getAliasName() == null ? 0 : getAliasName().hashCode();
        if (getTargetKeyId() != null) {
            i = getTargetKeyId().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setAliasName(String str) {
        this.aliasName = str;
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
        if (getTargetKeyId() != null) {
            sb.append("TargetKeyId: " + getTargetKeyId());
        }
        sb.append("}");
        return sb.toString();
    }

    public CreateAliasRequest withAliasName(String str) {
        this.aliasName = str;
        return this;
    }

    public CreateAliasRequest withTargetKeyId(String str) {
        this.targetKeyId = str;
        return this;
    }
}
