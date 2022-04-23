package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.UnsupportedOperationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/UnsupportedOperationExceptionUnmarshaller.class */
public class UnsupportedOperationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnsupportedOperationExceptionUnmarshaller() {
        super(UnsupportedOperationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("UnsupportedOperationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UnsupportedOperationException unsupportedOperationException = (UnsupportedOperationException) super.unmarshall(jsonErrorResponse);
        unsupportedOperationException.setErrorCode("UnsupportedOperationException");
        return unsupportedOperationException;
    }
}
