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
        return XpathUtils.a("ErrorResponse/Error/Code", node);
    }

    public AmazonServiceException unmarshall(Node node) throws Exception {
        String parseErrorCode = parseErrorCode(node);
        String a2 = XpathUtils.a("ErrorResponse/Error/Type", node);
        String a3 = XpathUtils.a("ErrorResponse/RequestId", node);
        AmazonServiceException newException = newException(XpathUtils.a("ErrorResponse/Error/Message", node));
        newException.setErrorCode(parseErrorCode);
        newException.setRequestId(a3);
        if (a2 == null) {
            newException.setErrorType(AmazonServiceException.ErrorType.Unknown);
        } else if ("Receiver".equalsIgnoreCase(a2)) {
            newException.setErrorType(AmazonServiceException.ErrorType.Service);
        } else if ("Sender".equalsIgnoreCase(a2)) {
            newException.setErrorType(AmazonServiceException.ErrorType.Client);
        }
        return newException;
    }
}
