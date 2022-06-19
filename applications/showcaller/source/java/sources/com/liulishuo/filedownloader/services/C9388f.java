package com.liulishuo.filedownloader.services;

import android.content.Intent;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import p078c.p122d.p123a.p128i0.C2031c;
/* renamed from: com.liulishuo.filedownloader.services.f */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/f.class */
public class C9388f {
    /* renamed from: a */
    public static void m774a(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel != null) {
            if (fileDownloadModel.m856h() != -3) {
                throw new IllegalStateException();
            }
            Intent intent = new Intent("filedownloader.intent.action.completed");
            intent.putExtra("model", fileDownloadModel);
            C2031c.m28262a().sendBroadcast(intent);
            return;
        }
        throw new IllegalArgumentException();
    }
}
