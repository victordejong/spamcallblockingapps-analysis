package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/GenerateRandomResult.class */
public class GenerateRandomResult implements Serializable {
    private ByteBuffer plaintext;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GenerateRandomResult)) {
            return false;
        }
        GenerateRandomResult generateRandomResult = (GenerateRandomResult) obj;
        if ((generateRandomResult.getPlaintext() == null) ^ (getPlaintext() == null)) {
            return false;
        }
        return generateRandomResult.getPlaintext() == null || generateRandomResult.getPlaintext().equals(getPlaintext());
    }

    public ByteBuffer getPlaintext() {
        return this.plaintext;
    }

    public int hashCode() {
        return (getPlaintext() == null ? 0 : getPlaintext().hashCode()) + 31;
    }

    public void setPlaintext(ByteBuffer byteBuffer) {
        this.plaintext = byteBuffer;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getPlaintext() != null) {
            sb.append("Plaintext: " + getPlaintext());
        }
        sb.append("}");
        return sb.toString();
    }

    public GenerateRandomResult withPlaintext(ByteBuffer byteBuffer) {
        this.plaintext = byteBuffer;
        return this;
    }
}
