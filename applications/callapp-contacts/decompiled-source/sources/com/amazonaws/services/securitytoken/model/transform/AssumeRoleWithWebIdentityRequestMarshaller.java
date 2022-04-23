package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest;
import com.amazonaws.services.securitytoken.model.PolicyDescriptorType;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller.class */
public class AssumeRoleWithWebIdentityRequestMarshaller {
    public Request<AssumeRoleWithWebIdentityRequest> marshall(AssumeRoleWithWebIdentityRequest assumeRoleWithWebIdentityRequest) {
        if (assumeRoleWithWebIdentityRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(assumeRoleWithWebIdentityRequest, "AWSSecurityTokenService");
            defaultRequest.b(JsonDocumentFields.ACTION, "AssumeRoleWithWebIdentity");
            defaultRequest.b(JsonDocumentFields.VERSION, "2011-06-15");
            if (assumeRoleWithWebIdentityRequest.getRoleArn() != null) {
                defaultRequest.b("RoleArn", StringUtils.a(assumeRoleWithWebIdentityRequest.getRoleArn()));
            }
            if (assumeRoleWithWebIdentityRequest.getRoleSessionName() != null) {
                defaultRequest.b("RoleSessionName", StringUtils.a(assumeRoleWithWebIdentityRequest.getRoleSessionName()));
            }
            if (assumeRoleWithWebIdentityRequest.getWebIdentityToken() != null) {
                defaultRequest.b("WebIdentityToken", StringUtils.a(assumeRoleWithWebIdentityRequest.getWebIdentityToken()));
            }
            if (assumeRoleWithWebIdentityRequest.getProviderId() != null) {
                defaultRequest.b("ProviderId", StringUtils.a(assumeRoleWithWebIdentityRequest.getProviderId()));
            }
            if (assumeRoleWithWebIdentityRequest.getPolicyArns() != null) {
                int i = 1;
                for (PolicyDescriptorType policyDescriptorType : assumeRoleWithWebIdentityRequest.getPolicyArns()) {
                    String str = "PolicyArns.member." + i;
                    if (policyDescriptorType != null) {
                        PolicyDescriptorTypeStaxMarshaller.getInstance().marshall(policyDescriptorType, defaultRequest, str + ".");
                    }
                    i++;
                }
            }
            if (assumeRoleWithWebIdentityRequest.getPolicy() != null) {
                defaultRequest.b("Policy", StringUtils.a(assumeRoleWithWebIdentityRequest.getPolicy()));
            }
            if (assumeRoleWithWebIdentityRequest.getDurationSeconds() != null) {
                defaultRequest.b("DurationSeconds", StringUtils.a(assumeRoleWithWebIdentityRequest.getDurationSeconds()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(AssumeRoleWithWebIdentityRequest)");
    }
}
