package com.danikula.videocache;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.p */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/p.class */
final class C4444p {

    /* renamed from: a */
    private static final AbstractC9605b f13569a = C9606c.m352i("StorageUtils");

    /* renamed from: a */
    private static File m22451a(Context context, boolean z) {
        String str;
        try {
            str = Environment.getExternalStorageState();
        } catch (NullPointerException e) {
            str = "";
        }
        File m22450b = (!z || !"mounted".equals(str)) ? null : m22450b(context);
        File file = m22450b;
        if (m22450b == null) {
            file = context.getCacheDir();
        }
        File file2 = file;
        if (file == null) {
            String str2 = "/data/data/" + context.getPackageName() + "/cache/";
            f13569a.warn("Can't define system cache directory! '" + str2 + "%s' will be used.");
            file2 = new File(str2);
        }
        return file2;
    }

    /* renamed from: b */
    private static File m22450b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        f13569a.warn("Unable to create external cache directory");
        return null;
    }

    /* renamed from: c */
    public static File m22449c(Context context) {
        return new File(m22451a(context, true), "video-cache");
    }
}
