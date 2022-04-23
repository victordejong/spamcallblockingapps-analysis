package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.InvalidGrantIdException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/InvalidGrantIdExceptionUnmarshaller.class */
public class InvalidGrantIdExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidGrantIdExceptionUnmarshaller() {
        super(InvalidGrantIdException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("InvalidGrantIdException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidGrantIdException invalidGrantIdException = (InvalidGrantIdException) super.unmarshall(jsonErrorResponse);
        invalidGrantIdException.setErrorCode("InvalidGrantIdException");
        return invalidGrantIdException;
    }
}
