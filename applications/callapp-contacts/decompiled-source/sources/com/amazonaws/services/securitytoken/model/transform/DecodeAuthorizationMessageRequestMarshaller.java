package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.securitytoken.model.DecodeAuthorizationMessageRequest;
import com.amazonaws.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/DecodeAuthorizationMessageRequestMarshaller.class */
public class DecodeAuthorizationMessageRequestMarshaller {
    public Request<DecodeAuthorizationMessageRequest> marshall(DecodeAuthorizationMessageRequest decodeAuthorizationMessageRequest) {
        if (decodeAuthorizationMessageRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(decodeAuthorizationMessageRequest, "AWSSecurityTokenService");
            defaultRequest.b(JsonDocumentFields.ACTION, "DecodeAuthorizationMessage");
            defaultRequest.b(JsonDocumentFields.VERSION, "2011-06-15");
            if (decodeAuthorizationMessageRequest.getEncodedMessage() != null) {
                defaultRequest.b("EncodedMessage", StringUtils.a(decodeAuthorizationMessageRequest.getEncodedMessage()));
            }
            return defaultRequest;
        }
        throw new AmazonClientException("Invalid argument passed to marshall(DecodeAuthorizationMessageRequest)");
    }
}
