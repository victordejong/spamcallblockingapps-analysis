package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/SignRequest.class */
public class SignRequest extends AmazonWebServiceRequest implements Serializable {
    private List<String> grantTokens = new ArrayList();
    private String keyId;
    private ByteBuffer message;
    private String messageType;
    private String signingAlgorithm;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SignRequest)) {
            return false;
        }
        SignRequest signRequest = (SignRequest) obj;
        if ((signRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (signRequest.getKeyId() != null && !signRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((signRequest.getMessage() == null) ^ (getMessage() == null)) {
            return false;
        }
        if (signRequest.getMessage() != null && !signRequest.getMessage().equals(getMessage())) {
            return false;
        }
        if ((signRequest.getMessageType() == null) ^ (getMessageType() == null)) {
            return false;
        }
        if (signRequest.getMessageType() != null && !signRequest.getMessageType().equals(getMessageType())) {
            return false;
        }
        if ((signRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        if (signRequest.getGrantTokens() != null && !signRequest.getGrantTokens().equals(getGrantTokens())) {
            return false;
        }
        if ((signRequest.getSigningAlgorithm() == null) ^ (getSigningAlgorithm() == null)) {
            return false;
        }
        return signRequest.getSigningAlgorithm() == null || signRequest.getSigningAlgorithm().equals(getSigningAlgorithm());
    }

    public List<String> getGrantTokens() {
        return this.grantTokens;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public ByteBuffer getMessage() {
        return this.message;
    }

    public String getMessageType() {
        return this.messageType;
    }

    public String getSigningAlgorithm() {
        return this.signingAlgorithm;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getMessage() == null ? 0 : getMessage().hashCode();
        int hashCode3 = getMessageType() == null ? 0 : getMessageType().hashCode();
        int hashCode4 = getGrantTokens() == null ? 0 : getGrantTokens().hashCode();
        if (getSigningAlgorithm() != null) {
            i = getSigningAlgorithm().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setGrantTokens(Collection<String> collection) {
        if (collection == null) {
            this.grantTokens = null;
        } else {
            this.grantTokens = new ArrayList(collection);
        }
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setMessage(ByteBuffer byteBuffer) {
        this.message = byteBuffer;
    }

    public void setMessageType(MessageType messageType) {
        this.messageType = messageType.toString();
    }

    public void setMessageType(String str) {
        this.messageType = str;
    }

    public void setSigningAlgorithm(SigningAlgorithmSpec signingAlgorithmSpec) {
        this.signingAlgorithm = signingAlgorithmSpec.toString();
    }

    public void setSigningAlgorithm(String str) {
        this.signingAlgorithm = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getMessage() != null) {
            sb.append("Message: " + getMessage() + ",");
        }
        if (getMessageType() != null) {
            sb.append("MessageType: " + getMessageType() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens() + ",");
        }
        if (getSigningAlgorithm() != null) {
            sb.append("SigningAlgorithm: " + getSigningAlgorithm());
        }
        sb.append("}");
        return sb.toString();
    }

    public SignRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public SignRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public SignRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public SignRequest withMessage(ByteBuffer byteBuffer) {
        this.message = byteBuffer;
        return this;
    }

    public SignRequest withMessageType(MessageType messageType) {
        this.messageType = messageType.toString();
        return this;
    }

    public SignRequest withMessageType(String str) {
        this.messageType = str;
        return this;
    }

    public SignRequest withSigningAlgorithm(SigningAlgorithmSpec signingAlgorithmSpec) {
        this.signingAlgorithm = signingAlgorithmSpec.toString();
        return this;
    }

    public SignRequest withSigningAlgorithm(String str) {
        this.signingAlgorithm = str;
        return this;
    }
}
