package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.AssumeRoleWithSAMLRequest;
import com.amazonaws.services.securitytoken.model.PolicyDescriptorType;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithSAMLRequestMarshaller.class */
public class AssumeRoleWithSAMLRequestMarshaller {
    public Request<AssumeRoleWithSAMLRequest> marshall(AssumeRoleWithSAMLRequest assumeRoleWithSAMLRequest) {
        if (assumeRoleWithSAMLRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(assumeRoleWithSAMLRequest, "AWSSecurityTokenService");
            defaultRequest.mo38710b(JsonDocumentFields.ACTION, "AssumeRoleWithSAML");
            defaultRequest.mo38710b(JsonDocumentFields.VERSION, "2011-06-15");
            if (assumeRoleWithSAMLRequest.getRoleArn() != null) {
                defaultRequest.mo38710b("RoleArn", StringUtils.m38229a(assumeRoleWithSAMLRequest.getRoleArn()));
            }
            if (assumeRoleWithSAMLRequest.getPrincipalArn() != null) {
                defaultRequest.mo38710b("PrincipalArn", StringUtils.m38229a(assumeRoleWithSAMLRequest.getPrincipalArn()));
            }
            if (assumeRoleWithSAMLRequest.getSAMLAssertion() != null) {
                defaultRequest.mo38710b("SAMLAssertion", StringUtils.m38229a(assumeRoleWithSAMLRequest.getSAMLAssertion()));
            }
            if (assumeRoleWithSAMLRequest.getPolicyArns() != null) {
                int i = 1;
                for (PolicyDescriptorType policyDescriptorType : assumeRoleWithSAMLRequest.getPolicyArns()) {
                    String str = "PolicyArns.member." + i;
                    if (policyDescriptorType != null) {
                        PolicyDescriptorTypeStaxMarshaller.getInstance().marshall(policyDescriptorType, defaultRequest, str + ".");
                    }
                    i++;
                }
            }
            if (assumeRoleWithSAMLRequest.getPolicy() != null) {
                defaultRequest.mo38710b("Policy", StringUtils.m38229a(assumeRoleWithSAMLRequest.getPolicy()));
            }
            if (assumeRoleWithSAMLRequest.getDurationSeconds() != null) {
                defaultRequest.mo38710b("DurationSeconds", StringUtils.m38230a(assumeRoleWithSAMLRequest.getDurationSeconds()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(AssumeRoleWithSAMLRequest)");
    }
}
