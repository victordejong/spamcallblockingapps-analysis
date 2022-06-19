package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CloudHsmClusterNotActiveException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CloudHsmClusterNotActiveExceptionUnmarshaller.class */
public class CloudHsmClusterNotActiveExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CloudHsmClusterNotActiveExceptionUnmarshaller() {
        super(CloudHsmClusterNotActiveException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CloudHsmClusterNotActiveException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CloudHsmClusterNotActiveException cloudHsmClusterNotActiveException = (CloudHsmClusterNotActiveException) super.unmarshall(jsonErrorResponse);
        cloudHsmClusterNotActiveException.setErrorCode("CloudHsmClusterNotActiveException");
        return cloudHsmClusterNotActiveException;
    }
}
