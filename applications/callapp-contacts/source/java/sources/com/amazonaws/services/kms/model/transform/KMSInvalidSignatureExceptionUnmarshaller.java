package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.KMSInvalidSignatureException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/KMSInvalidSignatureExceptionUnmarshaller.class */
public class KMSInvalidSignatureExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public KMSInvalidSignatureExceptionUnmarshaller() {
        super(KMSInvalidSignatureException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("KMSInvalidSignatureException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        KMSInvalidSignatureException kMSInvalidSignatureException = (KMSInvalidSignatureException) super.unmarshall(jsonErrorResponse);
        kMSInvalidSignatureException.setErrorCode("KMSInvalidSignatureException");
        return kMSInvalidSignatureException;
    }
}
