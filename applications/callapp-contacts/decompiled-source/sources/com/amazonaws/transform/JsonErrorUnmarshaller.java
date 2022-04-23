package com.amazonaws.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/JsonErrorUnmarshaller.class */
public class JsonErrorUnmarshaller extends AbstractErrorUnmarshaller<JsonErrorResponseHandler.JsonErrorResponse> {
    public JsonErrorUnmarshaller() {
    }

    public JsonErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        super(cls);
    }

    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return true;
    }

    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        String message = jsonErrorResponse.getMessage();
        String errorCode = jsonErrorResponse.getErrorCode();
        if ((message == null || message.isEmpty()) && (errorCode == null || errorCode.isEmpty())) {
            throw new AmazonClientException("Neither error message nor error code is found in the error response payload.");
        }
        AmazonServiceException newException = newException(message);
        newException.setErrorCode(errorCode);
        return newException;
    }
}
