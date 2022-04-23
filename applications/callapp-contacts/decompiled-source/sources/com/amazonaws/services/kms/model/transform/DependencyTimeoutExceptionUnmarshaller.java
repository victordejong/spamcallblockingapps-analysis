package com.amazonaws.services.kms.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.kms.model.DependencyTimeoutException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/DependencyTimeoutExceptionUnmarshaller.class */
public class DependencyTimeoutExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public DependencyTimeoutExceptionUnmarshaller() {
        super(DependencyTimeoutException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean match(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.getErrorCode().equals("DependencyTimeoutException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public AmazonServiceException unmarshall(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        DependencyTimeoutException dependencyTimeoutException = (DependencyTimeoutException) super.unmarshall(jsonErrorResponse);
        dependencyTimeoutException.setErrorCode("DependencyTimeoutException");
        return dependencyTimeoutException;
    }
}
