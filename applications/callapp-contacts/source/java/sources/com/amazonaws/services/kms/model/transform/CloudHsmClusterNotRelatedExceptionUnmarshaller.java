package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.CloudHsmClusterNotRelatedException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/CloudHsmClusterNotRelatedExceptionUnmarshaller.class */
public class CloudHsmClusterNotRelatedExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CloudHsmClusterNotRelatedExceptionUnmarshaller() {
        super(CloudHsmClusterNotRelatedException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("CloudHsmClusterNotRelatedException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        CloudHsmClusterNotRelatedException cloudHsmClusterNotRelatedException = (CloudHsmClusterNotRelatedException) super.unmarshall(jsonErrorResponse);
        cloudHsmClusterNotRelatedException.setErrorCode("CloudHsmClusterNotRelatedException");
        return cloudHsmClusterNotRelatedException;
    }
}
