package com.liulishuo.filedownloader.services;

import android.content.Intent;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import p092e.p096e.p097a.p102h0.C3056c;
/* renamed from: com.liulishuo.filedownloader.services.f */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/f.class */
public class C2783f {
    /* renamed from: a */
    public static void m1755a(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel != null) {
            if (fileDownloadModel.m1810h() != -3) {
                throw new IllegalStateException();
            }
            Intent intent = new Intent("filedownloader.intent.action.completed");
            intent.putExtra("model", fileDownloadModel);
            C3056c.m426a().sendBroadcast(intent);
            return;
        }
        throw new IllegalArgumentException();
    }
}
