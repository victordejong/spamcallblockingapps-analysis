package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.securitytoken.model.IDPRejectedClaimException;
import com.amazonaws.transform.StandardErrorUnmarshaller;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/IDPRejectedClaimExceptionUnmarshaller.class */
public class IDPRejectedClaimExceptionUnmarshaller extends StandardErrorUnmarshaller {
    public IDPRejectedClaimExceptionUnmarshaller() {
        super(IDPRejectedClaimException.class);
    }

    @Override // com.amazonaws.transform.StandardErrorUnmarshaller
    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        if (parseErrorCode == null || !parseErrorCode.equals("IDPRejectedClaim")) {
            return null;
        }
        return (IDPRejectedClaimException) super.unmarshall(node);
    }
}
