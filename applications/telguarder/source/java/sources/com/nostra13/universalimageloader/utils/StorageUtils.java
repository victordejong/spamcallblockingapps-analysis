package com.nostra13.universalimageloader.utils;

import android.content.Context;
import android.os.Environment;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.File;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/utils/StorageUtils.class */
public final class StorageUtils {
    private static final String EXTERNAL_STORAGE_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String INDIVIDUAL_DIR_NAME = "uil-images";

    private StorageUtils() {
    }

    public static File getCacheDirectory(Context context) {
        return getCacheDirectory(context, true);
    }

    public static File getCacheDirectory(Context context, boolean z) {
        String str = "";
        try {
            str = Environment.getExternalStorageState();
        } catch (IncompatibleClassChangeError | NullPointerException e) {
        }
        File externalCacheDir = (!z || !"mounted".equals(str) || !hasExternalStoragePermission(context)) ? null : getExternalCacheDir(context);
        File file = externalCacheDir;
        if (externalCacheDir == null) {
            file = context.getCacheDir();
        }
        File file2 = file;
        if (file == null) {
            String str2 = "/data/data/" + context.getPackageName() + "/cache/";
            C1836L.m1109w("Can't define system cache directory! '%s' will be used.", str2);
            file2 = new File(str2);
        }
        return file2;
    }

    private static File getExternalCacheDir(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), POBCommonConstants.OS_NAME_VALUE), "data"), context.getPackageName()), "cache");
        if (!file.exists()) {
            if (!file.mkdirs()) {
                C1836L.m1109w("Unable to create external cache directory", new Object[0]);
                return null;
            }
            try {
                new File(file, ".nomedia").createNewFile();
            } catch (IOException e) {
                C1836L.m1110i("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
            }
        }
        return file;
    }

    public static File getIndividualCacheDirectory(Context context) {
        return getIndividualCacheDirectory(context, INDIVIDUAL_DIR_NAME);
    }

    public static File getIndividualCacheDirectory(Context context, String str) {
        File cacheDirectory = getCacheDirectory(context);
        File file = new File(cacheDirectory, str);
        if (file.exists() || file.mkdir()) {
            cacheDirectory = file;
        }
        return cacheDirectory;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if (r6.mkdirs() == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File getOwnCacheDirectory(android.content.Context r5, java.lang.String r6) {
        /*
            java.lang.String r0 = "mounted"
            java.lang.String r1 = android.os.Environment.getExternalStorageState()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L21
            r0 = r5
            boolean r0 = hasExternalStoragePermission(r0)
            if (r0 == 0) goto L21
            java.io.File r0 = new java.io.File
            r1 = r0
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()
            r3 = r6
            r1.<init>(r2, r3)
            r6 = r0
            goto L23
        L21:
            r0 = 0
            r6 = r0
        L23:
            r0 = r6
            if (r0 == 0) goto L39
            r0 = r6
            r7 = r0
            r0 = r6
            boolean r0 = r0.exists()
            if (r0 != 0) goto L3e
            r0 = r6
            r7 = r0
            r0 = r6
            boolean r0 = r0.mkdirs()
            if (r0 != 0) goto L3e
        L39:
            r0 = r5
            java.io.File r0 = r0.getCacheDir()
            r7 = r0
        L3e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.utils.StorageUtils.getOwnCacheDirectory(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r6.mkdirs() == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File getOwnCacheDirectory(android.content.Context r5, java.lang.String r6, boolean r7) {
        /*
            r0 = r7
            if (r0 == 0) goto L25
            java.lang.String r0 = "mounted"
            java.lang.String r1 = android.os.Environment.getExternalStorageState()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            r0 = r5
            boolean r0 = hasExternalStoragePermission(r0)
            if (r0 == 0) goto L25
            java.io.File r0 = new java.io.File
            r1 = r0
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()
            r3 = r6
            r1.<init>(r2, r3)
            r6 = r0
            goto L27
        L25:
            r0 = 0
            r6 = r0
        L27:
            r0 = r6
            if (r0 == 0) goto L3d
            r0 = r6
            r8 = r0
            r0 = r6
            boolean r0 = r0.exists()
            if (r0 != 0) goto L42
            r0 = r6
            r8 = r0
            r0 = r6
            boolean r0 = r0.mkdirs()
            if (r0 != 0) goto L42
        L3d:
            r0 = r5
            java.io.File r0 = r0.getCacheDir()
            r8 = r0
        L42:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.utils.StorageUtils.getOwnCacheDirectory(android.content.Context, java.lang.String, boolean):java.io.File");
    }

    private static boolean hasExternalStoragePermission(Context context) {
        return context.checkCallingOrSelfPermission(EXTERNAL_STORAGE_PERMISSION) == 0;
    }
}
