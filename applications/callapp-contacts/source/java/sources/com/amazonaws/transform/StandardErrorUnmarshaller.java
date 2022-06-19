package com.amazonaws.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.util.XpathUtils;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/StandardErrorUnmarshaller.class */
public class StandardErrorUnmarshaller extends AbstractErrorUnmarshaller<Node> {
    public StandardErrorUnmarshaller() {
    }

    public StandardErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        super(cls);
    }

    public String getErrorPropertyPath(String str) {
        return "ErrorResponse/Error/".concat(String.valueOf(str));
    }

    public String parseErrorCode(Node node) throws Exception {
        return XpathUtils.m38208a("ErrorResponse/Error/Code", node);
    }

    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        String m38208a = XpathUtils.m38208a("ErrorResponse/Error/Type", node);
        String m38208a2 = XpathUtils.m38208a("ErrorResponse/RequestId", node);
        AmazonServiceException newException = newException(XpathUtils.m38208a("ErrorResponse/Error/Message", node));
        newException.setErrorCode(parseErrorCode);
        newException.setRequestId(m38208a2);
        if (m38208a == null) {
            newException.setErrorType(AmazonServiceException.ErrorType.Unknown);
        } else if ("Receiver".equalsIgnoreCase(m38208a)) {
            newException.setErrorType(AmazonServiceException.ErrorType.Service);
        } else if ("Sender".equalsIgnoreCase(m38208a)) {
            newException.setErrorType(AmazonServiceException.ErrorType.Client);
        }
        return newException;
    }
}
