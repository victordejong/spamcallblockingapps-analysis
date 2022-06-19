package com.kedlin.cca.core;

import android.app.Application;
import android.net.Uri;
import androidx.core.content.FileProvider;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/CallControlFileProvider.class */
public class CallControlFileProvider extends FileProvider {
    /* renamed from: h */
    public static Uri m4403h(File file) {
        Application m1292a = lm1.m1292a();
        if (m1292a == null) {
            return null;
        }
        return FileProvider.m6785e(m1292a, "com.callcontrol.datashare.files", file);
    }

    /* renamed from: i */
    public static File m4402i(String str) {
        Application m1292a = lm1.m1292a();
        if (m1292a == null) {
            return null;
        }
        File file = new File(m1292a.getCacheDir(), "external");
        file.mkdirs();
        return new File(file, str);
    }
}
