package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityResult;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityResultStaxUnmarshaller.class */
public class AssumeRoleWithWebIdentityResultStaxUnmarshaller implements Unmarshaller<AssumeRoleWithWebIdentityResult, StaxUnmarshallerContext> {
    private static AssumeRoleWithWebIdentityResultStaxUnmarshaller instance;

    public static AssumeRoleWithWebIdentityResultStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new AssumeRoleWithWebIdentityResultStaxUnmarshaller();
        }
        return instance;
    }

    public AssumeRoleWithWebIdentityResult unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        AssumeRoleWithWebIdentityResult assumeRoleWithWebIdentityResult = new AssumeRoleWithWebIdentityResult();
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
                } else if (staxUnmarshallerContext.a("Credentials", i2)) {
                    assumeRoleWithWebIdentityResult.setCredentials(CredentialsStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("SubjectFromWebIdentityToken", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithWebIdentityResult.setSubjectFromWebIdentityToken(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("AssumedRoleUser", i2)) {
                    assumeRoleWithWebIdentityResult.setAssumedRoleUser(AssumedRoleUserStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("PackedPolicySize", i2)) {
                    SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.a();
                    assumeRoleWithWebIdentityResult.setPackedPolicySize(SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Provider", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithWebIdentityResult.setProvider(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Audience", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithWebIdentityResult.setAudience(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return assumeRoleWithWebIdentityResult;
    }
}
