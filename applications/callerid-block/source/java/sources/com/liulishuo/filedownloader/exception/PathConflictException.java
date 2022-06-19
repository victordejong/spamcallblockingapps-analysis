package com.liulishuo.filedownloader.exception;

import p092e.p096e.p097a.p102h0.C3066f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/exception/PathConflictException.class */
public class PathConflictException extends IllegalAccessException {
    private final int mAnotherSamePathTaskId;
    private final String mDownloadingConflictPath;
    private final String mTargetFilePath;

    public PathConflictException(int i, String str, String str2) {
        super(C3066f.m367o("There is an another running task(%d) with the same downloading path(%s), because of they are with the same target-file-path(%s), so if the current task is started, the path of the file is sure to be written by multiple tasks, it is wrong, then you receive this exception to avoid such conflict.", Integer.valueOf(i), str, str2));
        this.mAnotherSamePathTaskId = i;
        this.mDownloadingConflictPath = str;
        this.mTargetFilePath = str2;
    }

    public int getAnotherSamePathTaskId() {
        return this.mAnotherSamePathTaskId;
    }

    public String getDownloadingConflictPath() {
        return this.mDownloadingConflictPath;
    }

    public String getTargetFilePath() {
        return this.mTargetFilePath;
    }
}
