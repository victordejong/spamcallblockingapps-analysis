package com.mopub.common.util;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Files.class */
public class Files {
    public static File createDirectory(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        if ((!file.exists() || !file.isDirectory()) && (!file.mkdirs() || !file.isDirectory())) {
            return null;
        }
        return file;
    }

    public static int intLength(File file) {
        if (file == null) {
            return 0;
        }
        long length = file.length();
        return length < 2147483647L ? (int) length : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }
}
