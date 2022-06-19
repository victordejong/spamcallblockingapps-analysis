package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.InvalidAliasNameException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/InvalidAliasNameExceptionUnmarshaller.class */
public class InvalidAliasNameExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidAliasNameExceptionUnmarshaller() {
        super(InvalidAliasNameException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("InvalidAliasNameException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidAliasNameException invalidAliasNameException = (InvalidAliasNameException) super.unmarshall(jsonErrorResponse);
        invalidAliasNameException.setErrorCode("InvalidAliasNameException");
        return invalidAliasNameException;
    }
}
