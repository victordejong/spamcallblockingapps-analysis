package com.amazonaws.mobileconnectors.p016s3.transferutility;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.util.VersionInfoUtils;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility.class */
public class TransferUtility {
    public static <X extends AmazonWebServiceRequest> X appendMultipartTransferServiceUserAgentString(X x) {
        RequestClientOptions requestClientOptions = x.getRequestClientOptions();
        requestClientOptions.appendUserAgent("TransferService_multipart/" + VersionInfoUtils.getVersion());
        return x;
    }

    public static <X extends AmazonWebServiceRequest> X appendTransferServiceUserAgentString(X x) {
        RequestClientOptions requestClientOptions = x.getRequestClientOptions();
        requestClientOptions.appendUserAgent("TransferService/" + VersionInfoUtils.getVersion());
        return x;
    }
}
