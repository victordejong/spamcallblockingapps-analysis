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
                } else if (staxUnmarshallerContext.m38287a("Credentials", i2)) {
                    assumeRoleWithSAMLResult.setCredentials(CredentialsStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("AssumedRoleUser", i2)) {
                    assumeRoleWithSAMLResult.setAssumedRoleUser(AssumedRoleUserStaxUnmarshaller.getInstance().unmarshall(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("PackedPolicySize", i2)) {
                    SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.m38292a();
                    assumeRoleWithSAMLResult.setPackedPolicySize(SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.m38291a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Subject", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    assumeRoleWithSAMLResult.setSubject(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("SubjectType", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    assumeRoleWithSAMLResult.setSubjectType(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Issuer", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    assumeRoleWithSAMLResult.setIssuer(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Audience", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    assumeRoleWithSAMLResult.setAudience(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("NameQualifier", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    assumeRoleWithSAMLResult.setNameQualifier(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return assumeRoleWithSAMLResult;
    }
}
