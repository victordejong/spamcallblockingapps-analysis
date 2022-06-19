package com.hzy.lib7z;

import android.content.res.AssetManager;
import android.text.TextUtils;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/hzy/lib7z/Z7Extractor.class */
public class Z7Extractor {
    public static final long DEFAULT_IN_BUF_SIZE = 16777216;

    static {
        System.loadLibrary("un7zip");
    }

    public static boolean extractAsset(AssetManager assetManager, String str, String str2, ExtractCallback extractCallback) {
        DefalutExtractCallback defalutExtractCallback = extractCallback;
        if (extractCallback == null) {
            defalutExtractCallback = new DefalutExtractCallback();
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !prepareOutPath(str2)) {
            defalutExtractCallback.onError(ErrorCode.ERROR_CODE_PATH_ERROR, "File Path Error!");
            return false;
        }
        return nExtractAsset(assetManager, str, str2, defalutExtractCallback, DEFAULT_IN_BUF_SIZE);
    }

    public static boolean extractFile(String str, String str2, ExtractCallback extractCallback) {
        DefalutExtractCallback defalutExtractCallback = extractCallback;
        if (extractCallback == null) {
            defalutExtractCallback = new DefalutExtractCallback();
        }
        File file = new File(str);
        if (TextUtils.isEmpty(str) || !file.exists() || TextUtils.isEmpty(str2) || !prepareOutPath(str2)) {
            defalutExtractCallback.onError(ErrorCode.ERROR_CODE_PATH_ERROR, "File Path Error!");
            return false;
        }
        return nExtractFile(str, str2, defalutExtractCallback, DEFAULT_IN_BUF_SIZE);
    }

    public static String getLzmaVersion() {
        return nGetLzmaVersion();
    }

    private static native boolean nExtractAsset(AssetManager assetManager, String str, String str2, ExtractCallback extractCallback, long j);

    private static native boolean nExtractFile(String str, String str2, ExtractCallback extractCallback, long j);

    private static native String nGetLzmaVersion();

    private static boolean prepareOutPath(String str) {
        File file = new File(str);
        boolean z = true;
        if (file.exists() || !file.mkdirs()) {
            if (!file.exists() || !file.isDirectory()) {
                z = false;
            }
            return z;
        }
        return true;
    }
}
