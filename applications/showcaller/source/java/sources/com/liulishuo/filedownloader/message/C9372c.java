package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.download.C9356e;
import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.message.c */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/c.class */
public class C9372c {
    /* renamed from: a */
    public static MessageSnapshot m881a(int i, File file, boolean z) {
        long length = file.length();
        return length > 2147483647L ? z ? new LargeMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, length) : new LargeMessageSnapshot.CompletedSnapshot(i, true, length) : z ? new SmallMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, (int) length) : new SmallMessageSnapshot.CompletedSnapshot(i, true, (int) length);
    }

    /* renamed from: b */
    public static MessageSnapshot m880b(int i, long j, Throwable th) {
        return j > 2147483647L ? new LargeMessageSnapshot.ErrorMessageSnapshot(i, j, th) : new SmallMessageSnapshot.ErrorMessageSnapshot(i, (int) j, th);
    }

    /* renamed from: c */
    public static MessageSnapshot m879c(int i, long j, long j2, boolean z) {
        return j2 > 2147483647L ? z ? new LargeMessageSnapshot.WarnFlowDirectlySnapshot(i, j, j2) : new LargeMessageSnapshot.WarnMessageSnapshot(i, j, j2) : z ? new SmallMessageSnapshot.WarnFlowDirectlySnapshot(i, (int) j, (int) j2) : new SmallMessageSnapshot.WarnMessageSnapshot(i, (int) j, (int) j2);
    }

    /* renamed from: d */
    public static MessageSnapshot m878d(byte b, FileDownloadModel fileDownloadModel, C9356e.C9357a c9357a) {
        LargeMessageSnapshot.ErrorMessageSnapshot errorMessageSnapshot;
        int m859e = fileDownloadModel.m859e();
        if (b != -4) {
            if (b == -3) {
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.CompletedSnapshot(m859e, false, fileDownloadModel.m853k()) : new SmallMessageSnapshot.CompletedSnapshot(m859e, false, (int) fileDownloadModel.m853k());
            } else if (b == -1) {
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.ErrorMessageSnapshot(m859e, fileDownloadModel.m857g(), c9357a.m936a()) : new SmallMessageSnapshot.ErrorMessageSnapshot(m859e, (int) fileDownloadModel.m857g(), c9357a.m936a());
            } else if (b == 1) {
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.PendingMessageSnapshot(m859e, fileDownloadModel.m857g(), fileDownloadModel.m853k()) : new SmallMessageSnapshot.PendingMessageSnapshot(m859e, (int) fileDownloadModel.m857g(), (int) fileDownloadModel.m853k());
            } else if (b == 2) {
                String m860d = fileDownloadModel.m848r() ? fileDownloadModel.m860d() : null;
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.ConnectedMessageSnapshot(m859e, c9357a.m934c(), fileDownloadModel.m853k(), fileDownloadModel.m862b(), m860d) : new SmallMessageSnapshot.ConnectedMessageSnapshot(m859e, c9357a.m934c(), (int) fileDownloadModel.m853k(), fileDownloadModel.m862b(), m860d);
            } else if (b == 3) {
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.ProgressMessageSnapshot(m859e, fileDownloadModel.m857g()) : new SmallMessageSnapshot.ProgressMessageSnapshot(m859e, (int) fileDownloadModel.m857g());
            } else if (b == 5) {
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.RetryMessageSnapshot(m859e, fileDownloadModel.m857g(), c9357a.m936a(), c9357a.m935b()) : new SmallMessageSnapshot.RetryMessageSnapshot(m859e, (int) fileDownloadModel.m857g(), c9357a.m936a(), c9357a.m935b());
            } else if (b != 6) {
                String m28206o = C2040f.m28206o("it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                C2036d.m28245i(C9372c.class, "it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                IllegalStateException illegalStateException = c9357a.m936a() != null ? new IllegalStateException(m28206o, c9357a.m936a()) : new IllegalStateException(m28206o);
                errorMessageSnapshot = fileDownloadModel.m849o() ? new LargeMessageSnapshot.ErrorMessageSnapshot(m859e, fileDownloadModel.m857g(), illegalStateException) : new SmallMessageSnapshot.ErrorMessageSnapshot(m859e, (int) fileDownloadModel.m857g(), illegalStateException);
            } else {
                errorMessageSnapshot = new MessageSnapshot.StartedMessageSnapshot(m859e);
            }
            return errorMessageSnapshot;
        }
        throw new IllegalStateException(C2040f.m28206o("please use #catchWarn instead %d", Integer.valueOf(m859e)));
    }

    /* renamed from: e */
    public static MessageSnapshot m877e(MessageSnapshot messageSnapshot) {
        if (messageSnapshot.mo886k() == -3) {
            return new BlockCompleteMessage.BlockCompleteMessageImpl(messageSnapshot);
        }
        throw new IllegalStateException(C2040f.m28206o("take block completed snapshot, must has already be completed. %d %d", Integer.valueOf(messageSnapshot.m901e()), Byte.valueOf(messageSnapshot.mo886k())));
    }
}
