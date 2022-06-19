package com.huawei.hms.framework.common;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.libcore.io.ExternalStorageFile;
import com.huawei.libcore.io.ExternalStorageFileInputStream;
import com.huawei.libcore.io.ExternalStorageFileOutputStream;
import com.huawei.libcore.io.ExternalStorageRandomAccessFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/CreateFileUtil.class */
public class CreateFileUtil {
    private static final String EXTERNAL_FILE_NAME = "com.huawei.libcore.io.ExternalStorageFile";
    private static final String EXTERNAL_INPUTSTREAM_NAME = "com.huawei.libcore.io.ExternalStorageFileInputStream";
    private static final String EXTERNAL_OUTPUTSTREAM_NAME = "com.huawei.libcore.io.ExternalStorageFileOutputStream";
    private static final String RANDOM_ACCESS_FILE_NAME = "com.huawei.libcore.io.ExternalStorageRandomAccessFile";
    private static final String TAG = "CreateFileUtil";

    public static void deleteSecure(File file) {
        if (file == null || !file.exists() || file.delete()) {
            return;
        }
        Logger.m38040w(TAG, "deleteSecure exception");
    }

    public static void deleteSecure(String str) {
        if (!TextUtils.isEmpty(str)) {
            deleteSecure(newFile(str));
        }
    }

    public static String getCacheDirPath(Context context) {
        return context == null ? "" : ContextCompat.getProtectedStorageContext(context).getCacheDir().getPath();
    }

    public static String getCanonicalPath(String str) {
        try {
            str = newFile(str).getCanonicalPath();
        } catch (IOException e) {
            Logger.m38039w(TAG, "the canonicalPath has IOException", e);
        } catch (SecurityException e2) {
            Logger.m38039w(TAG, "the canonicalPath has securityException", e2);
        } catch (Exception e3) {
            Logger.m38039w(TAG, "the canonicalPath has other Exception", e3);
        }
        return str;
    }

    @Deprecated
    public static boolean isPVersion() {
        return EmuiUtil.isUpPVersion();
    }

    public static File newFile(String str) {
        if (str == null) {
            return null;
        }
        return (!EmuiUtil.isUpPVersion() || !ReflectionUtils.checkCompatible(EXTERNAL_FILE_NAME)) ? new File(str) : new ExternalStorageFile(str);
    }

    public static FileInputStream newFileInputStream(String str) throws FileNotFoundException {
        if (str != null) {
            return (!EmuiUtil.isUpPVersion() || !ReflectionUtils.checkCompatible(EXTERNAL_INPUTSTREAM_NAME)) ? new FileInputStream(str) : new ExternalStorageFileInputStream(str);
        }
        Logger.m38040w(TAG, "newFileInputStream  file is null");
        throw new FileNotFoundException("file is null");
    }

    public static FileOutputStream newFileOutputStream(File file) throws FileNotFoundException {
        if (file != null) {
            return (!EmuiUtil.isUpPVersion() || !ReflectionUtils.checkCompatible(EXTERNAL_OUTPUTSTREAM_NAME)) ? new FileOutputStream(file) : new ExternalStorageFileOutputStream(file);
        }
        Logger.m38047e(TAG, "newFileOutputStream  file is null");
        throw new FileNotFoundException("file is null");
    }

    public static RandomAccessFile newRandomAccessFile(String str, String str2) throws FileNotFoundException {
        if (str != null) {
            return (!EmuiUtil.isUpPVersion() || !ReflectionUtils.checkCompatible(RANDOM_ACCESS_FILE_NAME)) ? new RandomAccessFile(str, str2) : new ExternalStorageRandomAccessFile(str, str2);
        }
        Logger.m38040w(TAG, "newFileOutputStream  file is null");
        throw new FileNotFoundException("file is null");
    }
}
