package com.lidroid.xutils.util;

import android.database.Cursor;
import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/util/IOUtils.class */
public class IOUtils {
    private IOUtils() {
    }

    public static void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }
}
