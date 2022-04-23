package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.Credentials;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller.class */
class CredentialsStaxUnmarshaller implements Unmarshaller<Credentials, StaxUnmarshallerContext> {
    private static CredentialsStaxUnmarshaller instance;

    CredentialsStaxUnmarshaller() {
    }

    public static CredentialsStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new CredentialsStaxUnmarshaller();
        }
        return instance;
    }

    public Credentials unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        Credentials credentials = new Credentials();
        int b2 = staxUnmarshallerContext.b();
        int i = b2 + 1;
        int i2 = i;
        if (staxUnmarshallerContext.c()) {
            i2 = i + 2;
        }
        while (true) {
            int d2 = staxUnmarshallerContext.d();
            if (d2 != 1) {
                if (d2 != 2) {
                    if (d2 == 3 && staxUnmarshallerContext.b() < b2) {
                        break;
                    }
                } else if (staxUnmarshallerContext.a("AccessKeyId", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    credentials.setAccessKeyId(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("SecretAccessKey", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    credentials.setSecretAccessKey(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("SessionToken", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    credentials.setSessionToken(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Expiration", i2)) {
                    SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.a();
                    credentials.setExpiration(SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return credentials;
    }
}
