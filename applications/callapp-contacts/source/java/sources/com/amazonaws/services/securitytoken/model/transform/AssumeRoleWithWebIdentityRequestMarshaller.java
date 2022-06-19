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
            defaultRequest.mo38710b(JsonDocumentFields.ACTION, "AssumeRoleWithWebIdentity");
            defaultRequest.mo38710b(JsonDocumentFields.VERSION, "2011-06-15");
            if (assumeRoleWithWebIdentityRequest.getRoleArn() != null) {
                defaultRequest.mo38710b("RoleArn", StringUtils.m38229a(assumeRoleWithWebIdentityRequest.getRoleArn()));
            }
            if (assumeRoleWithWebIdentityRequest.getRoleSessionName() != null) {
                defaultRequest.mo38710b("RoleSessionName", StringUtils.m38229a(assumeRoleWithWebIdentityRequest.getRoleSessionName()));
            }
            if (assumeRoleWithWebIdentityRequest.getWebIdentityToken() != null) {
                defaultRequest.mo38710b("WebIdentityToken", StringUtils.m38229a(assumeRoleWithWebIdentityRequest.getWebIdentityToken()));
            }
            if (assumeRoleWithWebIdentityRequest.getProviderId() != null) {
                defaultRequest.mo38710b("ProviderId", StringUtils.m38229a(assumeRoleWithWebIdentityRequest.getProviderId()));
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
                defaultRequest.mo38710b("Policy", StringUtils.m38229a(assumeRoleWithWebIdentityRequest.getPolicy()));
            }
            if (assumeRoleWithWebIdentityRequest.getDurationSeconds() != null) {
                defaultRequest.mo38710b("DurationSeconds", StringUtils.m38230a(assumeRoleWithWebIdentityRequest.getDurationSeconds()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(AssumeRoleWithWebIdentityRequest)");
    }
}
