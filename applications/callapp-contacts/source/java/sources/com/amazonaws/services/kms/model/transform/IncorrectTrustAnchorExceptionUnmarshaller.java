package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.IncorrectTrustAnchorException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/IncorrectTrustAnchorExceptionUnmarshaller.class */
public class IncorrectTrustAnchorExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public IncorrectTrustAnchorExceptionUnmarshaller() {
        super(IncorrectTrustAnchorException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("IncorrectTrustAnchorException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        IncorrectTrustAnchorException incorrectTrustAnchorException = (IncorrectTrustAnchorException) super.unmarshall(jsonErrorResponse);
        incorrectTrustAnchorException.setErrorCode("IncorrectTrustAnchorException");
        return incorrectTrustAnchorException;
    }
}
