package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CloudHsmClusterInvalidConfigurationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CloudHsmClusterInvalidConfigurationExceptionUnmarshaller.class */
public class CloudHsmClusterInvalidConfigurationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CloudHsmClusterInvalidConfigurationExceptionUnmarshaller() {
        super(CloudHsmClusterInvalidConfigurationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CloudHsmClusterInvalidConfigurationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CloudHsmClusterInvalidConfigurationException cloudHsmClusterInvalidConfigurationException = (CloudHsmClusterInvalidConfigurationException) super.unmarshall(jsonErrorResponse);
        cloudHsmClusterInvalidConfigurationException.setErrorCode("CloudHsmClusterInvalidConfigurationException");
        return cloudHsmClusterInvalidConfigurationException;
    }
}
