package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.FederatedUser;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/FederatedUserStaxUnmarshaller.class */
class FederatedUserStaxUnmarshaller implements Unmarshaller<FederatedUser, StaxUnmarshallerContext> {
    private static FederatedUserStaxUnmarshaller instance;

    FederatedUserStaxUnmarshaller() {
    }

    public static FederatedUserStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new FederatedUserStaxUnmarshaller();
        }
        return instance;
    }

    public FederatedUser unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        FederatedUser federatedUser = new FederatedUser();
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
                } else if (staxUnmarshallerContext.a("FederatedUserId", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    federatedUser.setFederatedUserId(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                } else if (staxUnmarshallerContext.a("Arn", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    federatedUser.setArn(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return federatedUser;
    }
}
