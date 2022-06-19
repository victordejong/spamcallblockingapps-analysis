package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.Request;
import com.amazonaws.services.securitytoken.model.FederatedUser;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller.class */
class FederatedUserStaxMarshaller {
    private static FederatedUserStaxMarshaller instance;

    FederatedUserStaxMarshaller() {
    }

    public static FederatedUserStaxMarshaller getInstance() {
        if (instance == null) {
            instance = new FederatedUserStaxMarshaller();
        }
        return instance;
    }

    public void marshall(FederatedUser federatedUser, Request<?> request, String str) {
        if (federatedUser.getFederatedUserId() != null) {
            request.mo38710b(str + "FederatedUserId", StringUtils.m38229a(federatedUser.getFederatedUserId()));
        }
        if (federatedUser.getArn() != null) {
            request.mo38710b(str + "Arn", StringUtils.m38229a(federatedUser.getArn()));
        }
    }
}
