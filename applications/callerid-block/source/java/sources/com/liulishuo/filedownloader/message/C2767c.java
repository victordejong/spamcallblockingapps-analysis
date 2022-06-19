package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.download.C2751e;
import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.message.c */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/c.class */
public class C2767c {
    /* renamed from: a */
    public static MessageSnapshot m1836a(int i, File file, boolean z) {
        long length = file.length();
        return length > 2147483647L ? z ? new LargeMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, length) : new LargeMessageSnapshot.CompletedSnapshot(i, true, length) : z ? new SmallMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, (int) length) : new SmallMessageSnapshot.CompletedSnapshot(i, true, (int) length);
    }

    /* renamed from: b */
    public static MessageSnapshot m1835b(int i, long j, Throwable th) {
        return j > 2147483647L ? new LargeMessageSnapshot.ErrorMessageSnapshot(i, j, th) : new SmallMessageSnapshot.ErrorMessageSnapshot(i, (int) j, th);
    }

    /* renamed from: c */
    public static MessageSnapshot m1834c(int i, long j, long j2, boolean z) {
        return j2 > 2147483647L ? z ? new LargeMessageSnapshot.WarnFlowDirectlySnapshot(i, j, j2) : new LargeMessageSnapshot.WarnMessageSnapshot(i, j, j2) : z ? new SmallMessageSnapshot.WarnFlowDirectlySnapshot(i, (int) j, (int) j2) : new SmallMessageSnapshot.WarnMessageSnapshot(i, (int) j, (int) j2);
    }

    /* renamed from: d */
    public static MessageSnapshot m1833d(byte b, FileDownloadModel fileDownloadModel, C2751e.C2752a c2752a) {
        LargeMessageSnapshot.ErrorMessageSnapshot errorMessageSnapshot;
        int m1813e = fileDownloadModel.m1813e();
        if (b != -4) {
            if (b == -3) {
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.CompletedSnapshot(m1813e, false, fileDownloadModel.m1807m()) : new SmallMessageSnapshot.CompletedSnapshot(m1813e, false, (int) fileDownloadModel.m1807m());
            } else if (b == -1) {
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.ErrorMessageSnapshot(m1813e, fileDownloadModel.m1811g(), c2752a.m1890a()) : new SmallMessageSnapshot.ErrorMessageSnapshot(m1813e, (int) fileDownloadModel.m1811g(), c2752a.m1890a());
            } else if (b == 1) {
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.PendingMessageSnapshot(m1813e, fileDownloadModel.m1811g(), fileDownloadModel.m1807m()) : new SmallMessageSnapshot.PendingMessageSnapshot(m1813e, (int) fileDownloadModel.m1811g(), (int) fileDownloadModel.m1807m());
            } else if (b == 2) {
                String m1814d = fileDownloadModel.m1802s() ? fileDownloadModel.m1814d() : null;
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.ConnectedMessageSnapshot(m1813e, c2752a.m1888c(), fileDownloadModel.m1807m(), fileDownloadModel.m1816b(), m1814d) : new SmallMessageSnapshot.ConnectedMessageSnapshot(m1813e, c2752a.m1888c(), (int) fileDownloadModel.m1807m(), fileDownloadModel.m1816b(), m1814d);
            } else if (b == 3) {
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.ProgressMessageSnapshot(m1813e, fileDownloadModel.m1811g()) : new SmallMessageSnapshot.ProgressMessageSnapshot(m1813e, (int) fileDownloadModel.m1811g());
            } else if (b == 5) {
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.RetryMessageSnapshot(m1813e, fileDownloadModel.m1811g(), c2752a.m1890a(), c2752a.m1889b()) : new SmallMessageSnapshot.RetryMessageSnapshot(m1813e, (int) fileDownloadModel.m1811g(), c2752a.m1890a(), c2752a.m1889b());
            } else if (b != 6) {
                String m367o = C3066f.m367o("it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                C3062d.m406i(C2767c.class, "it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                IllegalStateException illegalStateException = c2752a.m1890a() != null ? new IllegalStateException(m367o, c2752a.m1890a()) : new IllegalStateException(m367o);
                errorMessageSnapshot = fileDownloadModel.m1803q() ? new LargeMessageSnapshot.ErrorMessageSnapshot(m1813e, fileDownloadModel.m1811g(), illegalStateException) : new SmallMessageSnapshot.ErrorMessageSnapshot(m1813e, (int) fileDownloadModel.m1811g(), illegalStateException);
            } else {
                errorMessageSnapshot = new MessageSnapshot.StartedMessageSnapshot(m1813e);
            }
            return errorMessageSnapshot;
        }
        throw new IllegalStateException(C3066f.m367o("please use #catchWarn instead %d", Integer.valueOf(m1813e)));
    }

    /* renamed from: e */
    public static MessageSnapshot m1832e(MessageSnapshot messageSnapshot) {
        if (messageSnapshot.mo1841m() == -3) {
            return new BlockCompleteMessage.BlockCompleteMessageImpl(messageSnapshot);
        }
        throw new IllegalStateException(C3066f.m367o("take block completed snapshot, must has already be completed. %d %d", Integer.valueOf(messageSnapshot.m1856e()), Byte.valueOf(messageSnapshot.mo1841m())));
    }
}
