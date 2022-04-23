package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.PolicyDescriptorType;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/PolicyDescriptorTypeStaxUnmarshaller.class */
class PolicyDescriptorTypeStaxUnmarshaller implements Unmarshaller<PolicyDescriptorType, StaxUnmarshallerContext> {
    private static PolicyDescriptorTypeStaxUnmarshaller instance;

    PolicyDescriptorTypeStaxUnmarshaller() {
    }

    public static PolicyDescriptorTypeStaxUnmarshaller getInstance() {
        if (instance == null) {
            instance = new PolicyDescriptorTypeStaxUnmarshaller();
        }
        return instance;
    }

    public PolicyDescriptorType unmarshall(StaxUnmarshallerContext staxUnmarshallerContext) throws Exception {
        PolicyDescriptorType policyDescriptorType = new PolicyDescriptorType();
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
                } else if (staxUnmarshallerContext.a("arn", i2)) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a();
                    policyDescriptorType.setArn(SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.a(staxUnmarshallerContext));
                }
            } else {
                break;
            }
        }
        return policyDescriptorType;
    }
}
