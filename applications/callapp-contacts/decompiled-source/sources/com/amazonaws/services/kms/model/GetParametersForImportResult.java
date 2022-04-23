package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GetParametersForImportResult.class */
public class GetParametersForImportResult implements Serializable {
    private ByteBuffer importToken;
    private String keyId;
    private Date parametersValidTo;
    private ByteBuffer publicKey;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetParametersForImportResult)) {
            return false;
        }
        GetParametersForImportResult getParametersForImportResult = (GetParametersForImportResult) obj;
        if ((getParametersForImportResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (getParametersForImportResult.getKeyId() != null && !getParametersForImportResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((getParametersForImportResult.getImportToken() == null) ^ (getImportToken() == null)) {
            return false;
        }
        if (getParametersForImportResult.getImportToken() != null && !getParametersForImportResult.getImportToken().equals(getImportToken())) {
            return false;
        }
        if ((getParametersForImportResult.getPublicKey() == null) ^ (getPublicKey() == null)) {
            return false;
        }
        if (getParametersForImportResult.getPublicKey() != null && !getParametersForImportResult.getPublicKey().equals(getPublicKey())) {
            return false;
        }
        if ((getParametersForImportResult.getParametersValidTo() == null) ^ (getParametersValidTo() == null)) {
            return false;
        }
        return getParametersForImportResult.getParametersValidTo() == null || getParametersForImportResult.getParametersValidTo().equals(getParametersValidTo());
    }

    public ByteBuffer getImportToken() {
        return this.importToken;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public Date getParametersValidTo() {
        return this.parametersValidTo;
    }

    public ByteBuffer getPublicKey() {
        return this.publicKey;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        int hashCode2 = getImportToken() == null ? 0 : getImportToken().hashCode();
        int hashCode3 = getPublicKey() == null ? 0 : getPublicKey().hashCode();
        if (getParametersValidTo() != null) {
            i = getParametersValidTo().hashCode();
        }
        return ((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setImportToken(ByteBuffer byteBuffer) {
        this.importToken = byteBuffer;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public void setParametersValidTo(Date date) {
        this.parametersValidTo = date;
    }

    public void setPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
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
        if (getPublicKey() != null) {
            sb.append("PublicKey: " + getPublicKey() + ",");
        }
        if (getParametersValidTo() != null) {
            sb.append("ParametersValidTo: " + getParametersValidTo());
        }
        sb.append("}");
        return sb.toString();
    }

    public GetParametersForImportResult withImportToken(ByteBuffer byteBuffer) {
        this.importToken = byteBuffer;
        return this;
    }

    public GetParametersForImportResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }

    public GetParametersForImportResult withParametersValidTo(Date date) {
        this.parametersValidTo = date;
        return this;
    }

    public GetParametersForImportResult withPublicKey(ByteBuffer byteBuffer) {
        this.publicKey = byteBuffer;
        return this;
    }
}
