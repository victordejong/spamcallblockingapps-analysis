package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.AlreadyExistsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/AlreadyExistsExceptionUnmarshaller.class */
public class AlreadyExistsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public AlreadyExistsExceptionUnmarshaller() {
        super(AlreadyExistsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("AlreadyExistsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        AlreadyExistsException alreadyExistsException = (AlreadyExistsException) super.unmarshall(jsonErrorResponse);
        alreadyExistsException.setErrorCode("AlreadyExistsException");
        return alreadyExistsException;
    }
}
