package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/CreateGrantRequest.class */
public class CreateGrantRequest extends AmazonWebServiceRequest implements Serializable {
    private GrantConstraints constraints;
    private String granteePrincipal;
    private String keyId;
    private String name;
    private String retiringPrincipal;
    private List<String> operations = new ArrayList();
    private List<String> grantTokens = new ArrayList();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateGrantRequest)) {
            return false;
        }
        CreateGrantRequest createGrantRequest = (CreateGrantRequest) obj;
        if ((createGrantRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (createGrantRequest.getKeyId() != null && !createGrantRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((createGrantRequest.getGranteePrincipal() == null) ^ (getGranteePrincipal() == null)) {
            return false;
        }
        if (createGrantRequest.getGranteePrincipal() != null && !createGrantRequest.getGranteePrincipal().equals(getGranteePrincipal())) {
            return false;
        }
        if ((createGrantRequest.getRetiringPrincipal() == null) ^ (getRetiringPrincipal() == null)) {
            return false;
        }
        if (createGrantRequest.getRetiringPrincipal() != null && !createGrantRequest.getRetiringPrincipal().equals(getRetiringPrincipal())) {
            return false;
        }
        if ((createGrantRequest.getOperations() == null) ^ (getOperations() == null)) {
            return false;
        }
        if (createGrantRequest.getOperations() != null && !createGrantRequest.getOperations().equals(getOperations())) {
            return false;
        }
        if ((createGrantRequest.getConstraints() == null) ^ (getConstraints() == null)) {
            return false;
        }
        if (createGrantRequest.getConstraints() != null && !createGrantRequest.getConstraints().equals(getConstraints())) {
            return false;
        }
        if ((createGrantRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        if (createGrantRequest.getGrantTokens() != null && !createGrantRequest.getGrantTokens().equals(getGrantTokens())) {
            return false;
        }
        if ((createGrantRequest.getName() == null) ^ (getName() == null)) {
            return false;
        }
        return createGrantRequest.getName() == null || createGrantRequest.getName().equals(getName());
    }

    public GrantConstraints getConstraints() {
        return this.constraints;
    }

    public List<String> getGrantTokens() {
        return this.grantTokens;
    }

    public String getGranteePrincipal() {
        return this.granteePrincipal;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public String getName() {
        return this.name;
    }

    public List<String> getOperations() {
        return this.operations;
    }

    public String getRetiringPrincipal() {
        return this.retiringPrincipal;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getGranteePrincipal() == null ? 0 : getGranteePrincipal().hashCode();
        int hashCode3 = getRetiringPrincipal() == null ? 0 : getRetiringPrincipal().hashCode();
        int hashCode4 = getOperations() == null ? 0 : getOperations().hashCode();
        int hashCode5 = getConstraints() == null ? 0 : getConstraints().hashCode();
        int hashCode6 = getGrantTokens() == null ? 0 : getGrantTokens().hashCode();
        if (getName() != null) {
            i = getName().hashCode();
        }
        return ((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public void setConstraints(GrantConstraints grantConstraints) {
        this.constraints = grantConstraints;
    }

    public void setGrantTokens(Collection<String> collection) {
        if (collection == null) {
            this.grantTokens = null;
        } else {
            this.grantTokens = new ArrayList(collection);
        }
    }

    public void setGranteePrincipal(String str) {
        this.granteePrincipal = str;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOperations(Collection<String> collection) {
        if (collection == null) {
            this.operations = null;
        } else {
            this.operations = new ArrayList(collection);
        }
    }

    public void setRetiringPrincipal(String str) {
        this.retiringPrincipal = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getGranteePrincipal() != null) {
            sb.append("GranteePrincipal: " + getGranteePrincipal() + ",");
        }
        if (getRetiringPrincipal() != null) {
            sb.append("RetiringPrincipal: " + getRetiringPrincipal() + ",");
        }
        if (getOperations() != null) {
            sb.append("Operations: " + getOperations() + ",");
        }
        if (getConstraints() != null) {
            sb.append("Constraints: " + getConstraints() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens() + ",");
        }
        if (getName() != null) {
            sb.append("Name: " + getName());
        }
        sb.append("}");
        return sb.toString();
    }

    public CreateGrantRequest withConstraints(GrantConstraints grantConstraints) {
        this.constraints = grantConstraints;
        return this;
    }

    public CreateGrantRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public CreateGrantRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public CreateGrantRequest withGranteePrincipal(String str) {
        this.granteePrincipal = str;
        return this;
    }

    public CreateGrantRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public CreateGrantRequest withName(String str) {
        this.name = str;
        return this;
    }

    public CreateGrantRequest withOperations(Collection<String> collection) {
        setOperations(collection);
        return this;
    }

    public CreateGrantRequest withOperations(String... strArr) {
        if (getOperations() == null) {
            this.operations = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.operations.add(str);
        }
        return this;
    }

    public CreateGrantRequest withRetiringPrincipal(String str) {
        this.retiringPrincipal = str;
        return this;
    }
}
