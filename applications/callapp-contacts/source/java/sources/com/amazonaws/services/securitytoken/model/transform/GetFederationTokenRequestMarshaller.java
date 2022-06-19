package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.GetFederationTokenRequest;
import com.amazonaws.services.securitytoken.model.PolicyDescriptorType;
import com.amazonaws.services.securitytoken.model.Tag;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetFederationTokenRequestMarshaller.class */
public class GetFederationTokenRequestMarshaller {
    public Request<GetFederationTokenRequest> marshall(GetFederationTokenRequest getFederationTokenRequest) {
        if (getFederationTokenRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getFederationTokenRequest, "AWSSecurityTokenService");
            defaultRequest.mo38710b(JsonDocumentFields.ACTION, "GetFederationToken");
            defaultRequest.mo38710b(JsonDocumentFields.VERSION, "2011-06-15");
            if (getFederationTokenRequest.getName() != null) {
                defaultRequest.mo38710b("Name", StringUtils.m38229a(getFederationTokenRequest.getName()));
            }
            if (getFederationTokenRequest.getPolicy() != null) {
                defaultRequest.mo38710b("Policy", StringUtils.m38229a(getFederationTokenRequest.getPolicy()));
            }
            if (getFederationTokenRequest.getPolicyArns() != null) {
                int i = 1;
                for (PolicyDescriptorType policyDescriptorType : getFederationTokenRequest.getPolicyArns()) {
                    String str = "PolicyArns.member." + i;
                    if (policyDescriptorType != null) {
                        PolicyDescriptorTypeStaxMarshaller.getInstance().marshall(policyDescriptorType, defaultRequest, str + ".");
                    }
                    i++;
                }
            }
            if (getFederationTokenRequest.getDurationSeconds() != null) {
                defaultRequest.mo38710b("DurationSeconds", StringUtils.m38230a(getFederationTokenRequest.getDurationSeconds()));
            }
            if (getFederationTokenRequest.getTags() != null) {
                int i2 = 1;
                for (Tag tag : getFederationTokenRequest.getTags()) {
                    String str2 = "Tags.member." + i2;
                    if (tag != null) {
                        TagStaxMarshaller.getInstance().marshall(tag, defaultRequest, str2 + ".");
                    }
                    i2++;
                }
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(GetFederationTokenRequest)");
    }
}
