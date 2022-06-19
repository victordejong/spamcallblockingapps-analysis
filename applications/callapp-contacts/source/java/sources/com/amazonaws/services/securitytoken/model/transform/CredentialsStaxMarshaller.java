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
            request.mo38710b(str + "AccessKeyId", StringUtils.m38229a(credentials.getAccessKeyId()));
        }
        if (credentials.getSecretAccessKey() != null) {
            request.mo38710b(str + "SecretAccessKey", StringUtils.m38229a(credentials.getSecretAccessKey()));
        }
        if (credentials.getSessionToken() != null) {
            request.mo38710b(str + "SessionToken", StringUtils.m38229a(credentials.getSessionToken()));
        }
        if (credentials.getExpiration() != null) {
            request.mo38710b(str + "Expiration", StringUtils.m38228a(credentials.getExpiration()));
        }
    }
}
