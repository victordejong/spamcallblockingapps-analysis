package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CloudHsmClusterNotFoundException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CloudHsmClusterNotFoundExceptionUnmarshaller.class */
public class CloudHsmClusterNotFoundExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CloudHsmClusterNotFoundExceptionUnmarshaller() {
        super(CloudHsmClusterNotFoundException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CloudHsmClusterNotFoundException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CloudHsmClusterNotFoundException cloudHsmClusterNotFoundException = (CloudHsmClusterNotFoundException) super.unmarshall(jsonErrorResponse);
        cloudHsmClusterNotFoundException.setErrorCode("CloudHsmClusterNotFoundException");
        return cloudHsmClusterNotFoundException;
    }
}
