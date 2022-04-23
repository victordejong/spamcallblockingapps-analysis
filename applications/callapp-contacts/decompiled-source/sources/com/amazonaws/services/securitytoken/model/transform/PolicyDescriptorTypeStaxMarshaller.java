package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.Request;
import com.amazonaws.services.securitytoken.model.PolicyDescriptorType;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/PolicyDescriptorTypeStaxMarshaller.class */
class PolicyDescriptorTypeStaxMarshaller {
    private static PolicyDescriptorTypeStaxMarshaller instance;

    PolicyDescriptorTypeStaxMarshaller() {
    }

    public static PolicyDescriptorTypeStaxMarshaller getInstance() {
        if (instance == null) {
            instance = new PolicyDescriptorTypeStaxMarshaller();
        }
        return instance;
    }

    public void marshall(PolicyDescriptorType policyDescriptorType, Request<?> request, String str) {
        if (policyDescriptorType.getArn() != null) {
            request.b(str + "arn", StringUtils.a(policyDescriptorType.getArn()));
        }
    }
}
