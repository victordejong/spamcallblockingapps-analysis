package com.lidroid.xutils.util;

import android.webkit.MimeTypeMap;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/util/MimeTypeUtils.class */
public class MimeTypeUtils {
    private MimeTypeUtils() {
    }

    public static String getMimeType(String str) {
        String str2;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            str2 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(lastIndexOf + 1));
        } else {
            str2 = "application/octet-stream";
        }
        return str2;
    }
}
