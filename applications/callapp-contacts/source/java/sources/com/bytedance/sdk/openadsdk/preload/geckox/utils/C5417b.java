package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import android.database.Cursor;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.io.Closeable;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/b.class */
public class C5417b {
    /* renamed from: a */
    public static boolean m32361a(Cursor cursor) {
        if (cursor == null) {
            return true;
        }
        try {
            cursor.close();
            return true;
        } catch (Exception e) {
            C5381b.m32428b("gecko-debug-tag", "close:", e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m32360a(Closeable closeable) {
        if (closeable == null) {
            return true;
        }
        try {
            closeable.close();
            return true;
        } catch (IOException e) {
            C5381b.m32428b("gecko-debug-tag", "close:", e);
            return false;
        }
    }
}
