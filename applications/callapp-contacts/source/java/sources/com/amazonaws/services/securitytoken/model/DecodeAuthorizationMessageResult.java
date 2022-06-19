package com.amazonaws.services.securitytoken.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/DecodeAuthorizationMessageResult.class */
public class DecodeAuthorizationMessageResult implements Serializable {
    private String decodedMessage;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DecodeAuthorizationMessageResult)) {
            return false;
        }
        DecodeAuthorizationMessageResult decodeAuthorizationMessageResult = (DecodeAuthorizationMessageResult) obj;
        if ((decodeAuthorizationMessageResult.getDecodedMessage() == null) ^ (getDecodedMessage() == null)) {
            return false;
        }
        return decodeAuthorizationMessageResult.getDecodedMessage() == null || decodeAuthorizationMessageResult.getDecodedMessage().equals(getDecodedMessage());
    }

    public String getDecodedMessage() {
        return this.decodedMessage;
    }

    public int hashCode() {
        return (getDecodedMessage() == null ? 0 : getDecodedMessage().hashCode()) + 31;
    }

    public void setDecodedMessage(String str) {
        this.decodedMessage = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getDecodedMessage() != null) {
            sb.append("DecodedMessage: " + getDecodedMessage());
        }
        sb.append("}");
        return sb.toString();
    }

    public DecodeAuthorizationMessageResult withDecodedMessage(String str) {
        this.decodedMessage = str;
        return this;
    }
}
