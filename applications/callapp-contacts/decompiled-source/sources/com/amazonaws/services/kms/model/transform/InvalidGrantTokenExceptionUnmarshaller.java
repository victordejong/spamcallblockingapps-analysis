package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.InvalidGrantTokenException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/InvalidGrantTokenExceptionUnmarshaller.class */
public class InvalidGrantTokenExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidGrantTokenExceptionUnmarshaller() {
        super(InvalidGrantTokenException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("InvalidGrantTokenException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidGrantTokenException invalidGrantTokenException = (InvalidGrantTokenException) super.unmarshall(jsonErrorResponse);
        invalidGrantTokenException.setErrorCode("InvalidGrantTokenException");
        return invalidGrantTokenException;
    }
}
