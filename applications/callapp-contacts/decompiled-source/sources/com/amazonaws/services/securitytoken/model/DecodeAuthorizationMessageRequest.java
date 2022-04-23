package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/DecodeAuthorizationMessageRequest.class */
public class DecodeAuthorizationMessageRequest extends AmazonWebServiceRequest implements Serializable {
    private String encodedMessage;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DecodeAuthorizationMessageRequest)) {
            return false;
        }
        DecodeAuthorizationMessageRequest decodeAuthorizationMessageRequest = (DecodeAuthorizationMessageRequest) obj;
        if ((decodeAuthorizationMessageRequest.getEncodedMessage() == null) ^ (getEncodedMessage() == null)) {
            return false;
        }
        return decodeAuthorizationMessageRequest.getEncodedMessage() == null || decodeAuthorizationMessageRequest.getEncodedMessage().equals(getEncodedMessage());
    }

    public String getEncodedMessage() {
        return this.encodedMessage;
    }

    public int hashCode() {
        return (getEncodedMessage() == null ? 0 : getEncodedMessage().hashCode()) + 31;
    }

    public void setEncodedMessage(String str) {
        this.encodedMessage = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getEncodedMessage() != null) {
            sb.append("EncodedMessage: " + getEncodedMessage());
        }
        sb.append("}");
        return sb.toString();
    }

    public DecodeAuthorizationMessageRequest withEncodedMessage(String str) {
        this.encodedMessage = str;
        return this;
    }
}
