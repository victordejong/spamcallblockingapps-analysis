package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.AssumeRoleWithSAMLResult;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithSAMLResultStaxUnmarshaller.class */
public class AssumeRoleWithSAMLResultStaxUnmarshaller implements Unmarshaller<AssumeRoleWithSAMLResult, StaxUnmarshallerContext> {
    private static AssumeRoleWithSAMLResultStaxUnmarshaller instance;

    public static AssumeRoleWithSAMLResultStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new AssumeRoleWithSAMLResultStaxUnmarshaller();
        }
        return instance;
    }

    public AssumeRoleWithSAMLResult unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        AssumeRoleWithSAMLResult assumeRoleWithSAMLResult = new AssumeRoleWithSAMLResult();
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
                    assumeRoleWithSAMLResult.setCredentials(CredentialsStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("AssumedRoleUser", i2)) {
                    assumeRoleWithSAMLResult.setAssumedRoleUser(AssumedRoleUserStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("PackedPolicySize", i2)) {
                    SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.a();
                    assumeRoleWithSAMLResult.setPackedPolicySize(SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Subject", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithSAMLResult.setSubject(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("SubjectType", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithSAMLResult.setSubjectType(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Issuer", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithSAMLResult.setIssuer(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Audience", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithSAMLResult.setAudience(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("NameQualifier", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    assumeRoleWithSAMLResult.setNameQualifier(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return assumeRoleWithSAMLResult;
    }
}
