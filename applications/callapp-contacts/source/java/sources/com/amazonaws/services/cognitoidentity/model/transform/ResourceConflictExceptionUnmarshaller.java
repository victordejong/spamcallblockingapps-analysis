package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.ResourceConflictException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/ResourceConflictExceptionUnmarshaller.class */
public class ResourceConflictExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ResourceConflictExceptionUnmarshaller() {
        super(ResourceConflictException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("ResourceConflictException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        ResourceConflictException resourceConflictException = (ResourceConflictException) super.unmarshall(jsonErrorResponse);
        resourceConflictException.setErrorCode("ResourceConflictException");
        return resourceConflictException;
    }
}
