package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.securitytoken.model.InvalidAuthorizationMessageException;
import com.amazonaws.transform.StandardErrorUnmarshaller;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/InvalidAuthorizationMessageExceptionUnmarshaller.class */
public class InvalidAuthorizationMessageExceptionUnmarshaller extends StandardErrorUnmarshaller {
    public InvalidAuthorizationMessageExceptionUnmarshaller() {
        super(InvalidAuthorizationMessageException.class);
    }

    @Override // com.amazonaws.transform.StandardErrorUnmarshaller
    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        if (parseErrorCode == null || !parseErrorCode.equals("InvalidAuthorizationMessageException")) {
            return null;
        }
        return (InvalidAuthorizationMessageException) super.unmarshall(node);
    }
}
