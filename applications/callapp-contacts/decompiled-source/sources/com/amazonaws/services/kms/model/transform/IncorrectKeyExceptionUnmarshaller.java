package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.IncorrectKeyException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/IncorrectKeyExceptionUnmarshaller.class */
public class IncorrectKeyExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public IncorrectKeyExceptionUnmarshaller() {
        super(IncorrectKeyException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("IncorrectKeyException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        IncorrectKeyException incorrectKeyException = (IncorrectKeyException) super.unmarshall(jsonErrorResponse);
        incorrectKeyException.setErrorCode("IncorrectKeyException");
        return incorrectKeyException;
    }
}
