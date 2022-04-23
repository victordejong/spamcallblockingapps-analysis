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
                } else if (staxUnmarshallerContext.a("UserId", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    getCallerIdentityResult.setUserId(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Account", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    getCallerIdentityResult.setAccount(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Arn", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    getCallerIdentityResult.setArn(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return getCallerIdentityResult;
    }
}
