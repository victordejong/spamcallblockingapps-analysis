package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.Request;
import com.amazonaws.services.securitytoken.model.AssumedRoleUser;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller.class */
class AssumedRoleUserStaxMarshaller {
    private static AssumedRoleUserStaxMarshaller instance;

    AssumedRoleUserStaxMarshaller() {
    }

    public static AssumedRoleUserStaxMarshaller getInstance() {
        if (instance == null) {
            instance = new AssumedRoleUserStaxMarshaller();
        }
        return instance;
    }

    public void marshall(AssumedRoleUser assumedRoleUser, Request<?> request, String str) {
        if (assumedRoleUser.getAssumedRoleId() != null) {
            request.mo38710b(str + "AssumedRoleId", StringUtils.m38229a(assumedRoleUser.getAssumedRoleId()));
        }
        if (assumedRoleUser.getArn() != null) {
            request.mo38710b(str + "Arn", StringUtils.m38229a(assumedRoleUser.getArn()));
        }
    }
}
