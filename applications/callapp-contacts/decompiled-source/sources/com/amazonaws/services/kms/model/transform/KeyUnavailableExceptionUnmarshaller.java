package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.KeyUnavailableException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/KeyUnavailableExceptionUnmarshaller.class */
public class KeyUnavailableExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public KeyUnavailableExceptionUnmarshaller() {
        super(KeyUnavailableException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("KeyUnavailableException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        KeyUnavailableException keyUnavailableException = (KeyUnavailableException) super.unmarshall(jsonErrorResponse);
        keyUnavailableException.setErrorCode("KeyUnavailableException");
        return keyUnavailableException;
    }
}
