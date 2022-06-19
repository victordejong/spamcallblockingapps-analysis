package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CustomKeyStoreHasCMKsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CustomKeyStoreHasCMKsExceptionUnmarshaller.class */
public class CustomKeyStoreHasCMKsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CustomKeyStoreHasCMKsExceptionUnmarshaller() {
        super(CustomKeyStoreHasCMKsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CustomKeyStoreHasCMKsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CustomKeyStoreHasCMKsException customKeyStoreHasCMKsException = (CustomKeyStoreHasCMKsException) super.unmarshall(jsonErrorResponse);
        customKeyStoreHasCMKsException.setErrorCode("CustomKeyStoreHasCMKsException");
        return customKeyStoreHasCMKsException;
    }
}
