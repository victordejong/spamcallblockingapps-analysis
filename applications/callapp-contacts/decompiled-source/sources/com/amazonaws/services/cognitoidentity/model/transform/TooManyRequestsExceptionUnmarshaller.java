package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.TooManyRequestsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/TooManyRequestsExceptionUnmarshaller.class */
public class TooManyRequestsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public TooManyRequestsExceptionUnmarshaller() {
        super(TooManyRequestsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("TooManyRequestsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        TooManyRequestsException tooManyRequestsException = (TooManyRequestsException) super.unmarshall(jsonErrorResponse);
        tooManyRequestsException.setErrorCode("TooManyRequestsException");
        return tooManyRequestsException;
    }
}
