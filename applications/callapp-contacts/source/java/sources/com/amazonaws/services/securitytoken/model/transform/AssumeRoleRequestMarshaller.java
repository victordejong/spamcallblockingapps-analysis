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
            defaultRequest.mo38710b(JsonDocumentFields.ACTION, "AssumeRole");
            defaultRequest.mo38710b(JsonDocumentFields.VERSION, "2011-06-15");
            if (assumeRoleRequest.getRoleArn() != null) {
                defaultRequest.mo38710b("RoleArn", StringUtils.m38229a(assumeRoleRequest.getRoleArn()));
            }
            if (assumeRoleRequest.getRoleSessionName() != null) {
                defaultRequest.mo38710b("RoleSessionName", StringUtils.m38229a(assumeRoleRequest.getRoleSessionName()));
            }
            if (assumeRoleRequest.getPolicyArns() != null) {
                int i = 1;
                for (PolicyDescriptorType policyDescriptorType : assumeRoleRequest.getPolicyArns()) {
                    String str = "PolicyArns.member." + i;
                    if (policyDescriptorType != null) {
                        PolicyDescriptorTypeStaxMarshaller.getInstance().marshall(policyDescriptorType, defaultRequest, str + ".");
                    }
                    i++;
                }
            }
            if (assumeRoleRequest.getPolicy() != null) {
                defaultRequest.mo38710b("Policy", StringUtils.m38229a(assumeRoleRequest.getPolicy()));
            }
            if (assumeRoleRequest.getDurationSeconds() != null) {
                defaultRequest.mo38710b("DurationSeconds", StringUtils.m38230a(assumeRoleRequest.getDurationSeconds()));
            }
            if (assumeRoleRequest.getTags() != null) {
                int i2 = 1;
                for (Tag tag : assumeRoleRequest.getTags()) {
                    String str2 = "Tags.member." + i2;
                    if (tag != null) {
                        TagStaxMarshaller.getInstance().marshall(tag, defaultRequest, str2 + ".");
                    }
                    i2++;
                }
            }
            if (assumeRoleRequest.getTransitiveTagKeys() != null) {
                int i3 = 1;
                for (String str3 : assumeRoleRequest.getTransitiveTagKeys()) {
                    String str4 = "TransitiveTagKeys.member." + i3;
                    if (str3 != null) {
                        defaultRequest.mo38710b(str4, StringUtils.m38229a(str3));
                    }
                    i3++;
                }
            }
            if (assumeRoleRequest.getExternalId() != null) {
                defaultRequest.mo38710b("ExternalId", StringUtils.m38229a(assumeRoleRequest.getExternalId()));
            }
            if (assumeRoleRequest.getSerialNumber() != null) {
                defaultRequest.mo38710b("SerialNumber", StringUtils.m38229a(assumeRoleRequest.getSerialNumber()));
            }
            if (assumeRoleRequest.getTokenCode() != null) {
                defaultRequest.mo38710b("TokenCode", StringUtils.m38229a(assumeRoleRequest.getTokenCode()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(AssumeRoleRequest)");
    }
}
