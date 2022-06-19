package com.amazonaws.services.kms.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ImportKeyMaterialRequest.class */
public class ImportKeyMaterialRequest extends AmazonWebServiceRequest implements Serializable {
    private ByteBuffer encryptedKeyMaterial;
    private String expirationModel;
    private ByteBuffer importToken;
    private String keyId;
    private Date validTo;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ImportKeyMaterialRequest)) {
            return false;
        }
        ImportKeyMaterialRequest importKeyMaterialRequest = (ImportKeyMaterialRequest) obj;
        if ((importKeyMaterialRequest.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getKeyId() != null && !importKeyMaterialRequest.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((importKeyMaterialRequest.getImportToken() == null) ^ (getImportToken() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getImportToken() != null && !importKeyMaterialRequest.getImportToken().equals(getImportToken())) {
            return false;
        }
        if ((importKeyMaterialRequest.getEncryptedKeyMaterial() == null) ^ (getEncryptedKeyMaterial() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getEncryptedKeyMaterial() != null && !importKeyMaterialRequest.getEncryptedKeyMaterial().equals(getEncryptedKeyMaterial())) {
            return false;
        }
        if ((importKeyMaterialRequest.getValidTo() == null) ^ (getValidTo() == null)) {
            return false;
        }
        if (importKeyMaterialRequest.getValidTo() != null && !importKeyMaterialRequest.getValidTo().equals(getValidTo())) {
            return false;
        }
        if ((importKeyMaterialRequest.getExpirationModel() == null) ^ (getExpirationModel() == null)) {
            return false;
        }
        return importKeyMaterialRequest.getExpirationModel() == null || importKeyMaterialRequest.getExpirationModel().equals(getExpirationModel());
    }

    public ByteBuffer getEncryptedKeyMaterial() {
        return this.encryptedKeyMaterial;
    }

    public String getExpirationModel() {
        return this.expirationModel;
    }

    public ByteBuffer getImportToken() {
        return this.importToken;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public Date getValidTo() {
        return this.validTo;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getImportToken() == null ? 0 : getImportToken().hashCode();
        int hashCode3 = getEncryptedKeyMaterial() == null ? 0 : getEncryptedKeyMaterial().hashCode();
        int hashCode4 = getValidTo() == null ? 0 : getValidTo().hashCode();
        if (getExpirationModel() != null) {
            i = getExpirationModel().hashCode();
        }
        return ((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setEncryptedKeyMaterial(ByteBuffer byteBuffer) {
        this.encryptedKeyMaterial = byteBuffer;
    }

    public void setExpirationModel(ExpirationModelType expirationModelType) {
        this.expirationModel = expirationModelType.toString();
    }

    public void setExpirationModel(String str) {
        this.expirationModel = str;
    }

    public void setImportToken(ByteBuffer byteBuffer) {
        this.importToken = byteBuffer;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setValidTo(Date date) {
        this.validTo = date;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getImportToken() != null) {
            sb.append("ImportToken: " + getImportToken() + ",");
        }
        if (getEncryptedKeyMaterial() != null) {
            sb.append("EncryptedKeyMaterial: " + getEncryptedKeyMaterial() + ",");
        }
        if (getValidTo() != null) {
            sb.append("ValidTo: " + getValidTo() + ",");
        }
        if (getExpirationModel() != null) {
            sb.append("ExpirationModel: " + getExpirationModel());
        }
        sb.append("}");
        return sb.toString();
    }

    public ImportKeyMaterialRequest withEncryptedKeyMaterial(ByteBuffer byteBuffer) {
        this.encryptedKeyMaterial = byteBuffer;
        return this;
    }

    public ImportKeyMaterialRequest withExpirationModel(ExpirationModelType expirationModelType) {
        this.expirationModel = expirationModelType.toString();
        return this;
    }

    public ImportKeyMaterialRequest withExpirationModel(String str) {
        this.expirationModel = str;
        return this;
    }

    public ImportKeyMaterialRequest withImportToken(ByteBuffer byteBuffer) {
        this.importToken = byteBuffer;
        return this;
    }

    public ImportKeyMaterialRequest withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public ImportKeyMaterialRequest withValidTo(Date date) {
        this.validTo = date;
        return this;
    }
}
