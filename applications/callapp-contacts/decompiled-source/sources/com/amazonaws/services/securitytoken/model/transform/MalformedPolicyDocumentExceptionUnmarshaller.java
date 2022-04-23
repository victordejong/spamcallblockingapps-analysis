package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.securitytoken.model.MalformedPolicyDocumentException;
import com.amazonaws.transform.StandardErrorUnmarshaller;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/MalformedPolicyDocumentExceptionUnmarshaller.class */
public class MalformedPolicyDocumentExceptionUnmarshaller extends StandardErrorUnmarshaller {
    public MalformedPolicyDocumentExceptionUnmarshaller() {
        super(MalformedPolicyDocumentException.class);
    }

    @Override // com.amazonaws.transform.StandardErrorUnmarshaller
    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        if (parseErrorCode == null || !parseErrorCode.equals("MalformedPolicyDocument")) {
            return null;
        }
        return (MalformedPolicyDocumentException) super.unmarshall(node);
    }
}
