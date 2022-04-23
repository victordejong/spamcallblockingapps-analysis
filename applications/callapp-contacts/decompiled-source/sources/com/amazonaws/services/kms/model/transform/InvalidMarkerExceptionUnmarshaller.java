package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.InvalidMarkerException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/InvalidMarkerExceptionUnmarshaller.class */
public class InvalidMarkerExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidMarkerExceptionUnmarshaller() {
        super(InvalidMarkerException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("InvalidMarkerException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidMarkerException invalidMarkerException = (InvalidMarkerException) super.unmarshall(jsonErrorResponse);
        invalidMarkerException.setErrorCode("InvalidMarkerException");
        return invalidMarkerException;
    }
}
