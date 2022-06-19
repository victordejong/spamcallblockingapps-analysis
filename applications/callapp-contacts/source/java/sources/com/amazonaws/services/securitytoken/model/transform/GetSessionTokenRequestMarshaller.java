package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.GetSessionTokenRequest;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller.class */
public class GetSessionTokenRequestMarshaller {
    public Request<GetSessionTokenRequest> marshall(GetSessionTokenRequest getSessionTokenRequest) {
        if (getSessionTokenRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getSessionTokenRequest, "AWSSecurityTokenService");
            defaultRequest.mo38710b(JsonDocumentFields.ACTION, "GetSessionToken");
            defaultRequest.mo38710b(JsonDocumentFields.VERSION, "2011-06-15");
            if (getSessionTokenRequest.getDurationSeconds() != null) {
                defaultRequest.mo38710b("DurationSeconds", StringUtils.m38230a(getSessionTokenRequest.getDurationSeconds()));
            }
            if (getSessionTokenRequest.getSerialNumber() != null) {
                defaultRequest.mo38710b("SerialNumber", StringUtils.m38229a(getSessionTokenRequest.getSerialNumber()));
            }
            if (getSessionTokenRequest.getTokenCode() != null) {
                defaultRequest.mo38710b("TokenCode", StringUtils.m38229a(getSessionTokenRequest.getTokenCode()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(GetSessionTokenRequest)");
    }
}
