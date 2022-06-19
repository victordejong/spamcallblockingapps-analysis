package com.google.android.play.core.appupdate;

import android.content.Context;
import java.io.File;
/* renamed from: com.google.android.play.core.appupdate.t */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/t.class */
public final class C14892t {

    /* renamed from: a */
    final Context f54337a;

    public C14892t(Context context) {
        this.f54337a = context;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: a */
    public static long m9812a(File file) {
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        char c = 0;
        char c2 = 0;
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (true) {
                c2 = c;
                if (i >= length) {
                    break;
                }
                c += m9812a(listFiles[i]);
                i++;
            }
        }
        return c2;
    }
}
