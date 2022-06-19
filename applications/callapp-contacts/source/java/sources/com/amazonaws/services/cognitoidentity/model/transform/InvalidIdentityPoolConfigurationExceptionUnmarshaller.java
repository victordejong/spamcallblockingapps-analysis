package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.InvalidIdentityPoolConfigurationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/InvalidIdentityPoolConfigurationExceptionUnmarshaller.class */
public class InvalidIdentityPoolConfigurationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidIdentityPoolConfigurationExceptionUnmarshaller() {
        super(InvalidIdentityPoolConfigurationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("InvalidIdentityPoolConfigurationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidIdentityPoolConfigurationException invalidIdentityPoolConfigurationException = (InvalidIdentityPoolConfigurationException) super.unmarshall(jsonErrorResponse);
        invalidIdentityPoolConfigurationException.setErrorCode("InvalidIdentityPoolConfigurationException");
        return invalidIdentityPoolConfigurationException;
    }
}
