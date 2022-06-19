package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.InvalidArnException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/InvalidArnExceptionUnmarshaller.class */
public class InvalidArnExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidArnExceptionUnmarshaller() {
        super(InvalidArnException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("InvalidArnException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidArnException invalidArnException = (InvalidArnException) super.unmarshall(jsonErrorResponse);
        invalidArnException.setErrorCode("InvalidArnException");
        return invalidArnException;
    }
}
