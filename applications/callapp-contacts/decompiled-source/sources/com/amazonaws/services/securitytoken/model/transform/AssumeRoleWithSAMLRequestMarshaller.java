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
            defaultRequest.b(JsonDocumentFields.ACTION, "AssumeRoleWithSAML");
            defaultRequest.b(JsonDocumentFields.VERSION, "2011-06-15");
            if (assumeRoleWithSAMLRequest.getRoleArn() != null) {
                defaultRequest.b("RoleArn", StringUtils.a(assumeRoleWithSAMLRequest.getRoleArn()));
            }
            if (assumeRoleWithSAMLRequest.getPrincipalArn() != null) {
                defaultRequest.b("PrincipalArn", StringUtils.a(assumeRoleWithSAMLRequest.getPrincipalArn()));
            }
            if (assumeRoleWithSAMLRequest.getSAMLAssertion() != null) {
                defaultRequest.b("SAMLAssertion", StringUtils.a(assumeRoleWithSAMLRequest.getSAMLAssertion()));
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
                defaultRequest.b("Policy", StringUtils.a(assumeRoleWithSAMLRequest.getPolicy()));
            }
            if (assumeRoleWithSAMLRequest.getDurationSeconds() != null) {
                defaultRequest.b("DurationSeconds", StringUtils.a(assumeRoleWithSAMLRequest.getDurationSeconds()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(AssumeRoleWithSAMLRequest)");
    }
}
