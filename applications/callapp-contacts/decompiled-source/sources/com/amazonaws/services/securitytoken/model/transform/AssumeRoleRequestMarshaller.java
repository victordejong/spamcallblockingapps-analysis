package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.AssumeRoleRequest;
import com.amazonaws.services.securitytoken.model.PolicyDescriptorType;
import com.amazonaws.services.securitytoken.model.Tag;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller.class */
public class AssumeRoleRequestMarshaller {
    public Request<AssumeRoleRequest> marshall(AssumeRoleRequest assumeRoleRequest) {
        if (assumeRoleRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(assumeRoleRequest, "AWSSecurityTokenService");
            defaultRequest.b(JsonDocumentFields.ACTION, "AssumeRole");
            defaultRequest.b(JsonDocumentFields.VERSION, "2011-06-15");
            if (assumeRoleRequest.getRoleArn() != null) {
                defaultRequest.b("RoleArn", StringUtils.a(assumeRoleRequest.getRoleArn()));
            }
            if (assumeRoleRequest.getRoleSessionName() != null) {
                defaultRequest.b("RoleSessionName", StringUtils.a(assumeRoleRequest.getRoleSessionName()));
            }
            int i = 1;
            if (assumeRoleRequest.getPolicyArns() != null) {
                int i2 = 1;
                for (PolicyDescriptorType policyDescriptorType : assumeRoleRequest.getPolicyArns()) {
                    String str = "PolicyArns.member." + i2;
                    if (policyDescriptorType != null) {
                        PolicyDescriptorTypeStaxMarshaller.getInstance().marshall(policyDescriptorType, defaultRequest, str + ".");
                    }
                    i2++;
                }
            }
            if (assumeRoleRequest.getPolicy() != null) {
                defaultRequest.b("Policy", StringUtils.a(assumeRoleRequest.getPolicy()));
            }
            if (assumeRoleRequest.getDurationSeconds() != null) {
                defaultRequest.b("DurationSeconds", StringUtils.a(assumeRoleRequest.getDurationSeconds()));
            }
            if (assumeRoleRequest.getTags() != null) {
                int i3 = 1;
                for (Tag tag : assumeRoleRequest.getTags()) {
                    String str2 = "Tags.member." + i3;
                    if (tag != null) {
                        TagStaxMarshaller.getInstance().marshall(tag, defaultRequest, str2 + ".");
                    }
                    i3++;
                }
            }
            if (assumeRoleRequest.getTransitiveTagKeys() != null) {
                for (String str3 : assumeRoleRequest.getTransitiveTagKeys()) {
                    String str4 = "TransitiveTagKeys.member." + i;
                    if (str3 != null) {
                        defaultRequest.b(str4, StringUtils.a(str3));
                    }
                    i++;
                }
            }
            if (assumeRoleRequest.getExternalId() != null) {
                defaultRequest.b("ExternalId", StringUtils.a(assumeRoleRequest.getExternalId()));
            }
            if (assumeRoleRequest.getSerialNumber() != null) {
                defaultRequest.b("SerialNumber", StringUtils.a(assumeRoleRequest.getSerialNumber()));
            }
            if (assumeRoleRequest.getTokenCode() != null) {
                defaultRequest.b("TokenCode", StringUtils.a(assumeRoleRequest.getTokenCode()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(AssumeRoleRequest)");
    }
}
