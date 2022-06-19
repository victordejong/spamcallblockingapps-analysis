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
        int m38286b = staxUnmarshallerContext.m38286b();
        int i = m38286b + 1;
        int i2 = i;
        if (staxUnmarshallerContext.m38285c()) {
            i2 = i + 2;
        }
        while (true) {
            int m38284d = staxUnmarshallerContext.m38284d();
            if (m38284d != 1) {
                if (m38284d != 2) {
                    if (m38284d == 3 && staxUnmarshallerContext.m38286b() < m38286b) {
                        break;
                    }
                } else if (staxUnmarshallerContext.m38287a("AccessKeyId", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    credentials.setAccessKeyId(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("SecretAccessKey", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    credentials.setSecretAccessKey(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("SessionToken", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    credentials.setSessionToken(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Expiration", i2)) {
                    SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.m38294a();
                    credentials.setExpiration(SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.m38293a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return credentials;
    }
}
