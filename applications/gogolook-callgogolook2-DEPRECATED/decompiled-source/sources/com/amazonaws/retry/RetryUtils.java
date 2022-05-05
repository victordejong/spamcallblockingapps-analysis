package com.amazonaws.retry;

import com.amazonaws.AbortedException;
import com.amazonaws.AmazonServiceException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryUtils.class */
public class RetryUtils {
    public static boolean isClockSkewError(AmazonServiceException amazonServiceException) {
        boolean z = false;
        if (amazonServiceException == null) {
            return false;
        }
        String errorCode = amazonServiceException.getErrorCode();
        if ("RequestTimeTooSkewed".equals(errorCode) || "RequestExpired".equals(errorCode) || "InvalidSignatureException".equals(errorCode) || "SignatureDoesNotMatch".equals(errorCode)) {
            z = true;
        }
        return z;
    }

    public static boolean isInterrupted(Throwable th) {
        if (th instanceof AbortedException) {
            return true;
        }
        if (th.getCause() == null) {
            return false;
        }
        Throwable cause = th.getCause();
        if (!(cause instanceof InterruptedException)) {
            return (cause instanceof InterruptedIOException) && !(cause instanceof SocketTimeoutException);
        }
        return true;
    }

    public static boolean isThrottlingException(AmazonServiceException amazonServiceException) {
        boolean z = false;
        if (amazonServiceException == null) {
            return false;
        }
        String errorCode = amazonServiceException.getErrorCode();
        if ("Throttling".equals(errorCode) || "ThrottlingException".equals(errorCode) || "ProvisionedThroughputExceededException".equals(errorCode)) {
            z = true;
        }
        return z;
    }
}
