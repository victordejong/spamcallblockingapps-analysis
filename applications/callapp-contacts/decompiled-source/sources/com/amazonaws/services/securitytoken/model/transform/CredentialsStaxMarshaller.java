package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.Request;
import com.amazonaws.services.securitytoken.model.Credentials;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller.class */
class CredentialsStaxMarshaller {
    private static CredentialsStaxMarshaller instance;

    CredentialsStaxMarshaller() {
    }

    public static CredentialsStaxMarshaller getInstance() {
        if (instance == null) {
            instance = new CredentialsStaxMarshaller();
        }
        return instance;
    }

    public void marshall(Credentials credentials, Request<?> request, String str) {
        if (credentials.getAccessKeyId() != null) {
            request.b(str + "AccessKeyId", StringUtils.a(credentials.getAccessKeyId()));
        }
        if (credentials.getSecretAccessKey() != null) {
            request.b(str + "SecretAccessKey", StringUtils.a(credentials.getSecretAccessKey()));
        }
        if (credentials.getSessionToken() != null) {
            request.b(str + "SessionToken", StringUtils.a(credentials.getSessionToken()));
        }
        if (credentials.getExpiration() != null) {
            request.b(str + "Expiration", StringUtils.a(credentials.getExpiration()));
        }
    }
}
