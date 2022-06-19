package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CloudHsmClusterInUseException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CloudHsmClusterInUseExceptionUnmarshaller.class */
public class CloudHsmClusterInUseExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CloudHsmClusterInUseExceptionUnmarshaller() {
        super(CloudHsmClusterInUseException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CloudHsmClusterInUseException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CloudHsmClusterInUseException cloudHsmClusterInUseException = (CloudHsmClusterInUseException) super.unmarshall(jsonErrorResponse);
        cloudHsmClusterInUseException.setErrorCode("CloudHsmClusterInUseException");
        return cloudHsmClusterInUseException;
    }
}
