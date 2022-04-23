package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.NotAuthorizedException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/NotAuthorizedExceptionUnmarshaller.class */
public class NotAuthorizedExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public NotAuthorizedExceptionUnmarshaller() {
        super(NotAuthorizedException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("NotAuthorizedException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        NotAuthorizedException notAuthorizedException = (NotAuthorizedException) super.unmarshall(jsonErrorResponse);
        notAuthorizedException.setErrorCode("NotAuthorizedException");
        return notAuthorizedException;
    }
}
