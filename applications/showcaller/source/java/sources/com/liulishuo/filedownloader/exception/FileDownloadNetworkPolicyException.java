package com.liulishuo.filedownloader.exception;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException.class */
public class FileDownloadNetworkPolicyException extends FileDownloadGiveUpRetryException {
    public FileDownloadNetworkPolicyException() {
        super("Only allows downloading this task on the wifi network type");
    }
}
