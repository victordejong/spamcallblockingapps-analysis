package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.securitytoken.model.PackedPolicyTooLargeException;
import com.amazonaws.transform.StandardErrorUnmarshaller;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/securitytoken/model/transform/PackedPolicyTooLargeExceptionUnmarshaller.class */
public class PackedPolicyTooLargeExceptionUnmarshaller extends StandardErrorUnmarshaller {
    public PackedPolicyTooLargeExceptionUnmarshaller() {
        super(PackedPolicyTooLargeException.class);
    }

    @Override // com.amazonaws.transform.StandardErrorUnmarshaller
    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        if (parseErrorCode == null || !parseErrorCode.equals("PackedPolicyTooLarge")) {
            return null;
        }
        return (PackedPolicyTooLargeException) super.unmarshall(node);
    }
}
