package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ReEncryptRequest.class */
public class ReEncryptRequest extends AmazonWebServiceRequest implements Serializable {
    private ByteBuffer ciphertextBlob;
    private String destinationEncryptionAlgorithm;
    private String destinationKeyId;
    private String sourceEncryptionAlgorithm;
    private String sourceKeyId;
    private Map<String, String> sourceEncryptionContext = new HashMap();
    private Map<String, String> destinationEncryptionContext = new HashMap();
    private List<String> grantTokens = new ArrayList();

    public ReEncryptRequest addDestinationEncryptionContextEntry(String str, String str2) {
        if (this.destinationEncryptionContext == null) {
            this.destinationEncryptionContext = new HashMap();
        }
        if (!this.destinationEncryptionContext.containsKey(str)) {
            this.destinationEncryptionContext.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public ReEncryptRequest addSourceEncryptionContextEntry(String str, String str2) {
        if (this.sourceEncryptionContext == null) {
            this.sourceEncryptionContext = new HashMap();
        }
        if (!this.sourceEncryptionContext.containsKey(str)) {
            this.sourceEncryptionContext.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public ReEncryptRequest clearDestinationEncryptionContextEntries() {
        this.destinationEncryptionContext = null;
        return this;
    }

    public ReEncryptRequest clearSourceEncryptionContextEntries() {
        this.sourceEncryptionContext = null;
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ReEncryptRequest)) {
            return false;
        }
        ReEncryptRequest reEncryptRequest = (ReEncryptRequest) obj;
        if ((reEncryptRequest.getCiphertextBlob() == null) ^ (getCiphertextBlob() == null)) {
            return false;
        }
        if (reEncryptRequest.getCiphertextBlob() != null && !reEncryptRequest.getCiphertextBlob().equals(getCiphertextBlob())) {
            return false;
        }
        if ((reEncryptRequest.getSourceEncryptionContext() == null) ^ (getSourceEncryptionContext() == null)) {
            return false;
        }
        if (reEncryptRequest.getSourceEncryptionContext() != null && !reEncryptRequest.getSourceEncryptionContext().equals(getSourceEncryptionContext())) {
            return false;
        }
        if ((reEncryptRequest.getSourceKeyId() == null) ^ (getSourceKeyId() == null)) {
            return false;
        }
        if (reEncryptRequest.getSourceKeyId() != null && !reEncryptRequest.getSourceKeyId().equals(getSourceKeyId())) {
            return false;
        }
        if ((reEncryptRequest.getDestinationKeyId() == null) ^ (getDestinationKeyId() == null)) {
            return false;
        }
        if (reEncryptRequest.getDestinationKeyId() != null && !reEncryptRequest.getDestinationKeyId().equals(getDestinationKeyId())) {
            return false;
        }
        if ((reEncryptRequest.getDestinationEncryptionContext() == null) ^ (getDestinationEncryptionContext() == null)) {
            return false;
        }
        if (reEncryptRequest.getDestinationEncryptionContext() != null && !reEncryptRequest.getDestinationEncryptionContext().equals(getDestinationEncryptionContext())) {
            return false;
        }
        if ((reEncryptRequest.getSourceEncryptionAlgorithm() == null) ^ (getSourceEncryptionAlgorithm() == null)) {
            return false;
        }
        if (reEncryptRequest.getSourceEncryptionAlgorithm() != null && !reEncryptRequest.getSourceEncryptionAlgorithm().equals(getSourceEncryptionAlgorithm())) {
            return false;
        }
        if ((reEncryptRequest.getDestinationEncryptionAlgorithm() == null) ^ (getDestinationEncryptionAlgorithm() == null)) {
            return false;
        }
        if (reEncryptRequest.getDestinationEncryptionAlgorithm() != null && !reEncryptRequest.getDestinationEncryptionAlgorithm().equals(getDestinationEncryptionAlgorithm())) {
            return false;
        }
        if ((reEncryptRequest.getGrantTokens() == null) ^ (getGrantTokens() == null)) {
            return false;
        }
        return reEncryptRequest.getGrantTokens() == null || reEncryptRequest.getGrantTokens().equals(getGrantTokens());
    }

    public ByteBuffer getCiphertextBlob() {
        return this.ciphertextBlob;
    }

    public String getDestinationEncryptionAlgorithm() {
        return this.destinationEncryptionAlgorithm;
    }

    public Map<String, String> getDestinationEncryptionContext() {
        return this.destinationEncryptionContext;
    }

    public String getDestinationKeyId() {
        return this.destinationKeyId;
    }

    public List<String> getGrantTokens() {
        return this.grantTokens;
    }

    public String getSourceEncryptionAlgorithm() {
        return this.sourceEncryptionAlgorithm;
    }

    public Map<String, String> getSourceEncryptionContext() {
        return this.sourceEncryptionContext;
    }

    public String getSourceKeyId() {
        return this.sourceKeyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getCiphertextBlob() == null ? 0 : getCiphertextBlob().hashCode();
        int hashCode2 = getSourceEncryptionContext() == null ? 0 : getSourceEncryptionContext().hashCode();
        int hashCode3 = getSourceKeyId() == null ? 0 : getSourceKeyId().hashCode();
        int hashCode4 = getDestinationKeyId() == null ? 0 : getDestinationKeyId().hashCode();
        int hashCode5 = getDestinationEncryptionContext() == null ? 0 : getDestinationEncryptionContext().hashCode();
        int hashCode6 = getSourceEncryptionAlgorithm() == null ? 0 : getSourceEncryptionAlgorithm().hashCode();
        int hashCode7 = getDestinationEncryptionAlgorithm() == null ? 0 : getDestinationEncryptionAlgorithm().hashCode();
        if (getGrantTokens() != null) {
            i = getGrantTokens().hashCode();
        }
        return ((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public void setCiphertextBlob(ByteBuffer byteBuffer) {
        this.ciphertextBlob = byteBuffer;
    }

    public void setDestinationEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.destinationEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
    }

    public void setDestinationEncryptionAlgorithm(String str) {
        this.destinationEncryptionAlgorithm = str;
    }

    public void setDestinationEncryptionContext(Map<String, String> map) {
        this.destinationEncryptionContext = map;
    }

    public void setDestinationKeyId(String str) {
        this.destinationKeyId = str;
    }

    public void setGrantTokens(Collection<String> collection) {
        if (collection == null) {
            this.grantTokens = null;
        } else {
            this.grantTokens = new ArrayList(collection);
        }
    }

    public void setSourceEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.sourceEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
    }

    public void setSourceEncryptionAlgorithm(String str) {
        this.sourceEncryptionAlgorithm = str;
    }

    public void setSourceEncryptionContext(Map<String, String> map) {
        this.sourceEncryptionContext = map;
    }

    public void setSourceKeyId(String str) {
        this.sourceKeyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getCiphertextBlob() != null) {
            sb.append("CiphertextBlob: " + getCiphertextBlob() + ",");
        }
        if (getSourceEncryptionContext() != null) {
            sb.append("SourceEncryptionContext: " + getSourceEncryptionContext() + ",");
        }
        if (getSourceKeyId() != null) {
            sb.append("SourceKeyId: " + getSourceKeyId() + ",");
        }
        if (getDestinationKeyId() != null) {
            sb.append("DestinationKeyId: " + getDestinationKeyId() + ",");
        }
        if (getDestinationEncryptionContext() != null) {
            sb.append("DestinationEncryptionContext: " + getDestinationEncryptionContext() + ",");
        }
        if (getSourceEncryptionAlgorithm() != null) {
            sb.append("SourceEncryptionAlgorithm: " + getSourceEncryptionAlgorithm() + ",");
        }
        if (getDestinationEncryptionAlgorithm() != null) {
            sb.append("DestinationEncryptionAlgorithm: " + getDestinationEncryptionAlgorithm() + ",");
        }
        if (getGrantTokens() != null) {
            sb.append("GrantTokens: " + getGrantTokens());
        }
        sb.append("}");
        return sb.toString();
    }

    public ReEncryptRequest withCiphertextBlob(ByteBuffer byteBuffer) {
        this.ciphertextBlob = byteBuffer;
        return this;
    }

    public ReEncryptRequest withDestinationEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.destinationEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
        return this;
    }

    public ReEncryptRequest withDestinationEncryptionAlgorithm(String str) {
        this.destinationEncryptionAlgorithm = str;
        return this;
    }

    public ReEncryptRequest withDestinationEncryptionContext(Map<String, String> map) {
        this.destinationEncryptionContext = map;
        return this;
    }

    public ReEncryptRequest withDestinationKeyId(String str) {
        this.destinationKeyId = str;
        return this;
    }

    public ReEncryptRequest withGrantTokens(Collection<String> collection) {
        setGrantTokens(collection);
        return this;
    }

    public ReEncryptRequest withGrantTokens(String... strArr) {
        if (getGrantTokens() == null) {
            this.grantTokens = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.grantTokens.add(str);
        }
        return this;
    }

    public ReEncryptRequest withSourceEncryptionAlgorithm(EncryptionAlgorithmSpec encryptionAlgorithmSpec) {
        this.sourceEncryptionAlgorithm = encryptionAlgorithmSpec.toString();
        return this;
    }

    public ReEncryptRequest withSourceEncryptionAlgorithm(String str) {
        this.sourceEncryptionAlgorithm = str;
        return this;
    }

    public ReEncryptRequest withSourceEncryptionContext(Map<String, String> map) {
        this.sourceEncryptionContext = map;
        return this;
    }

    public ReEncryptRequest withSourceKeyId(String str) {
        this.sourceKeyId = str;
        return this;
    }
}
