package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.GetCallerIdentityResult;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetCallerIdentityResultStaxUnmarshaller.class */
public class GetCallerIdentityResultStaxUnmarshaller implements Unmarshaller<GetCallerIdentityResult, StaxUnmarshallerContext> {
    private static GetCallerIdentityResultStaxUnmarshaller instance;

    public static GetCallerIdentityResultStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new GetCallerIdentityResultStaxUnmarshaller();
        }
        return instance;
    }

    public GetCallerIdentityResult unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        GetCallerIdentityResult getCallerIdentityResult = new GetCallerIdentityResult();
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
                } else if (staxUnmarshallerContext.m38287a("UserId", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    getCallerIdentityResult.setUserId(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Account", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    getCallerIdentityResult.setAccount(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.m38287a("Arn", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38290a();
                    getCallerIdentityResult.setArn(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m38289a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return getCallerIdentityResult;
    }
}
