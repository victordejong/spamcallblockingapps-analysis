package com.amazonaws.retry;

import com.amazonaws.AbortedException;
import com.amazonaws.AmazonServiceException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryUtils.class */
public class RetryUtils {
    /* renamed from: a */
    public static boolean m38493a(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        String errorCode = amazonServiceException.getErrorCode();
        return "Throttling".equals(errorCode) || "ThrottlingException".equals(errorCode) || "ProvisionedThroughputExceededException".equals(errorCode);
    }

    /* renamed from: a */
    public static boolean m38492a(Throwable th) {
        if (th instanceof AbortedException) {
            return true;
        }
        if (th.getCause() == null) {
            return false;
        }
        Throwable cause = th.getCause();
        if (cause instanceof InterruptedException) {
            return true;
        }
        return (cause instanceof InterruptedIOException) && !(cause instanceof SocketTimeoutException);
    }

    /* renamed from: b */
    public static boolean m38491b(AmazonServiceException amazonServiceException) {
        if (amazonServiceException == null) {
            return false;
        }
        String errorCode = amazonServiceException.getErrorCode();
        return "RequestTimeTooSkewed".equals(errorCode) || "RequestExpired".equals(errorCode) || "InvalidSignatureException".equals(errorCode) || "SignatureDoesNotMatch".equals(errorCode);
    }
}
