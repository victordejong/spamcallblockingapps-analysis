package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.IncorrectKeyMaterialException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/IncorrectKeyMaterialExceptionUnmarshaller.class */
public class IncorrectKeyMaterialExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public IncorrectKeyMaterialExceptionUnmarshaller() {
        super(IncorrectKeyMaterialException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("IncorrectKeyMaterialException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        IncorrectKeyMaterialException incorrectKeyMaterialException = (IncorrectKeyMaterialException) super.unmarshall(jsonErrorResponse);
        incorrectKeyMaterialException.setErrorCode("IncorrectKeyMaterialException");
        return incorrectKeyMaterialException;
    }
}
