package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.securitytoken.model.InvalidIdentityTokenException;
import com.amazonaws.transform.StandardErrorUnmarshaller;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/InvalidIdentityTokenExceptionUnmarshaller.class */
public class InvalidIdentityTokenExceptionUnmarshaller extends StandardErrorUnmarshaller {
    public InvalidIdentityTokenExceptionUnmarshaller() {
        super(InvalidIdentityTokenException.class);
    }

    @Override // com.amazonaws.transform.StandardErrorUnmarshaller
    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        if (parseErrorCode == null || !parseErrorCode.equals("InvalidIdentityToken")) {
            return null;
        }
        return (InvalidIdentityTokenException) super.unmarshall(node);
    }
}
