package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.ExpiredImportTokenException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/ExpiredImportTokenExceptionUnmarshaller.class */
public class ExpiredImportTokenExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ExpiredImportTokenExceptionUnmarshaller() {
        super(ExpiredImportTokenException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("ExpiredImportTokenException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        ExpiredImportTokenException expiredImportTokenException = (ExpiredImportTokenException) super.unmarshall(jsonErrorResponse);
        expiredImportTokenException.setErrorCode("ExpiredImportTokenException");
        return expiredImportTokenException;
    }
}
