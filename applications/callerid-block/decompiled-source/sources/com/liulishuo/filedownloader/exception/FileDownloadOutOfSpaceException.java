package com.liulishuo.filedownloader.exception;

import android.annotation.TargetApi;
import java.io.IOException;
import p092e.p096e.p097a.p102h0.C3066f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException.class */
public class FileDownloadOutOfSpaceException extends IOException {
    private long breakpointBytes;
    private long freeSpaceBytes;
    private long requiredSpaceBytes;

    public FileDownloadOutOfSpaceException(long j, long j2, long j3) {
        super(C3066f.m367o("The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d", Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)));
        m1858a(j, j2, j3);
    }

    @TargetApi(9)
    public FileDownloadOutOfSpaceException(long j, long j2, long j3, Throwable th) {
        super(C3066f.m367o("The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d", Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)), th);
        m1858a(j, j2, j3);
    }

    /* renamed from: a */
    private void m1858a(long j, long j2, long j3) {
        this.freeSpaceBytes = j;
        this.requiredSpaceBytes = j2;
        this.breakpointBytes = j3;
    }

    public long getBreakpointBytes() {
        return this.breakpointBytes;
    }

    public long getFreeSpaceBytes() {
        return this.freeSpaceBytes;
    }

    public long getRequiredSpaceBytes() {
        return this.requiredSpaceBytes;
    }
}
