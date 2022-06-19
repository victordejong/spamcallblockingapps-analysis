package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/VerifyRequest.class */
public class VerifyRequest extends AmazonWebServiceRequest implements Serializable {
    private List<String> grantTokens = new ArrayList();
    private String keyId;
    private ByteBuffer message;
    private String messageType;
    private ByteBuffer signature;
    private String signingAlgorithm;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof VerifyRequest)) {
            return false;
        }
        VerifyRequest verifyRequest = (VerifyRequest) obj;
        if ((verifyRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (verifyRequest.getKeyId() != null && !verifyRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((verifyRequest.getMessage() == null) ^ (getMessage() == null)) {
            return false;
        }
        if (verifyRequest.getMessage() != null && !verifyRequest.getMessage().equals(getMessage())) {
            return false;
        }
        if ((verifyRequest.getMessageType() == null) ^ (getMessageType() == null)) {
            return false;
        }
        if (verifyRequest.getMessageType() != null && !verifyRequest.getMessageType().equals(getMessageType())) {
            return false;
        }
        if ((verifyRequest.getSignature() == null) ^ (getSignature() == null)) {
            return false;
        }
        if (verifyRequest.getSignature() != null && !verifyRequest.getSignature().equals(getSignature())) {
            return false;
        }
        if ((verifyRequest.getSigningAlgorithm() == null) ^ (getSigningAlgorithm() == null)) {
            return false;
        }
        if (verifyRequest.getSigningAlgorithm() != null && !verifyRequest.getSigningAlgorithm().equals(getSigningAlgorithm())) {
            return false;
        }
        if ((verifyRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        return verifyRequest.getGrantTokens() == null || verifyRequest.getGrantTokens().equals(getGrantTokens());
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

    public ByteBuffer getSignature() {
        return this.signature;
    }

    public String getSigningAlgorithm() {
        return this.signingAlgorithm;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getMessage() == null ? 0 : getMessage().hashCode();
        int hashCode3 = getMessageType() == null ? 0 : getMessageType().hashCode();
        int hashCode4 = getSignature() == null ? 0 : getSignature().hashCode();
        int hashCode5 = getSigningAlgorithm() == null ? 0 : getSigningAlgorithm().hashCode();
        if (getGrantTokens() != null) {
            i = getGrantTokens().hashCode();
        }
        return ((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
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

    public void setSignature(ByteBuffer byteBuffer) {
        this.signature = byteBuffer;
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
        if (getSignature() != null) {
            sb.append("Signature: " + getSignature() + ",");
        }
        if (getSigningAlgorithm() != null) {
            sb.append("SigningAlgorithm: " + getSigningAlgorithm() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens());
        }
        sb.append("}");
        return sb.toString();
    }

    public VerifyRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public VerifyRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public VerifyRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public VerifyRequest withMessage(ByteBuffer byteBuffer) {
        this.message = byteBuffer;
        return this;
    }

    public VerifyRequest withMessageType(MessageType messageType) {
        this.messageType = messageType.toString();
        return this;
    }

    public VerifyRequest withMessageType(String str) {
        this.messageType = str;
        return this;
    }

    public VerifyRequest withSignature(ByteBuffer byteBuffer) {
        this.signature = byteBuffer;
        return this;
    }

    public VerifyRequest withSigningAlgorithm(SigningAlgorithmSpec signingAlgorithmSpec) {
        this.signingAlgorithm = signingAlgorithmSpec.toString();
        return this;
    }

    public VerifyRequest withSigningAlgorithm(String str) {
        this.signingAlgorithm = str;
        return this;
    }
}
