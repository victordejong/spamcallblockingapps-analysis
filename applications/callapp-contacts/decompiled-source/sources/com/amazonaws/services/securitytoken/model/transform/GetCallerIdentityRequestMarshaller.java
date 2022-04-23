package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.GetCallerIdentityRequest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller.class */
public class GetCallerIdentityRequestMarshaller {
    public Request<GetCallerIdentityRequest> marshall(GetCallerIdentityRequest getCallerIdentityRequest) {
        if (getCallerIdentityRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getCallerIdentityRequest, "AWSSecurityTokenService");
            defaultRequest.b(JsonDocumentFields.ACTION, "GetCallerIdentity");
            defaultRequest.b(JsonDocumentFields.VERSION, "2011-06-15");
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(GetCallerIdentityRequest)");
    }
}
