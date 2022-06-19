package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CustomKeyStoreInvalidStateException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CustomKeyStoreInvalidStateExceptionUnmarshaller.class */
public class CustomKeyStoreInvalidStateExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CustomKeyStoreInvalidStateExceptionUnmarshaller() {
        super(CustomKeyStoreInvalidStateException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CustomKeyStoreInvalidStateException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CustomKeyStoreInvalidStateException customKeyStoreInvalidStateException = (CustomKeyStoreInvalidStateException) super.unmarshall(jsonErrorResponse);
        customKeyStoreInvalidStateException.setErrorCode("CustomKeyStoreInvalidStateException");
        return customKeyStoreInvalidStateException;
    }
}
