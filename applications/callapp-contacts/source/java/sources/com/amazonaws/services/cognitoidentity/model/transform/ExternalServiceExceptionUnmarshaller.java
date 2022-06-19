package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.ExternalServiceException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/ExternalServiceExceptionUnmarshaller.class */
public class ExternalServiceExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ExternalServiceExceptionUnmarshaller() {
        super(ExternalServiceException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("ExternalServiceException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        ExternalServiceException externalServiceException = (ExternalServiceException) super.unmarshall(jsonErrorResponse);
        externalServiceException.setErrorCode("ExternalServiceException");
        return externalServiceException;
    }
}
