package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.GetAccessKeyInfoRequest;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetAccessKeyInfoRequestMarshaller.class */
public class GetAccessKeyInfoRequestMarshaller {
    public Request<GetAccessKeyInfoRequest> marshall(GetAccessKeyInfoRequest getAccessKeyInfoRequest) {
        if (getAccessKeyInfoRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getAccessKeyInfoRequest, "AWSSecurityTokenService");
            defaultRequest.mo38710b(JsonDocumentFields.ACTION, "GetAccessKeyInfo");
            defaultRequest.mo38710b(JsonDocumentFields.VERSION, "2011-06-15");
            if (getAccessKeyInfoRequest.getAccessKeyId() != null) {
                defaultRequest.mo38710b("AccessKeyId", StringUtils.m38229a(getAccessKeyInfoRequest.getAccessKeyId()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(GetAccessKeyInfoRequest)");
    }
}
