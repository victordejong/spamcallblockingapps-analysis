package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.KMSInternalException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/KMSInternalExceptionUnmarshaller.class */
public class KMSInternalExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public KMSInternalExceptionUnmarshaller() {
        super(KMSInternalException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("KMSInternalException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        KMSInternalException kMSInternalException = (KMSInternalException) super.unmarshall(jsonErrorResponse);
        kMSInternalException.setErrorCode("KMSInternalException");
        return kMSInternalException;
    }
}
