package net.pubnative.lite.sdk.vpaid.utils;

import android.content.Context;
import com.callapp.contacts.model.Constants;
import java.io.File;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.VpaidConstants;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/utils/FileUtils.class */
public class FileUtils {
    private static final String LOG_TAG = "FileUtils";

    public static void clearCache(Context context) {
        Logger.m630d(LOG_TAG, "Clear cache");
        File parentDir = getParentDir(context);
        if (parentDir == null) {
            return;
        }
        File[] listFiles = parentDir.listFiles();
        int length = listFiles.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                Logger.m630d(LOG_TAG, "Deleted " + i3 + " file(s)");
                return;
            }
            File file = listFiles[i];
            int i4 = i3;
            if (!file.isDirectory()) {
                file.delete();
                i4 = i3 + 1;
            }
            i++;
            i2 = i4;
        }
    }

    public static void deleteExpiredFiles(Context context) {
        File parentDir = getParentDir(context);
        if (parentDir == null) {
            return;
        }
        File[] listFiles = parentDir.listFiles();
        int length = listFiles.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                String str = LOG_TAG;
                Logger.m630d(str, "In cache " + i3 + " file(s)");
                Logger.m630d(str, "Cache time: " + (VpaidConstants.CACHED_VIDEO_LIFE_TIME / Constants.HOUR_IN_MILLIS) + " hours");
                return;
            }
            File file = listFiles[i];
            int i4 = i3;
            if (!file.isDirectory()) {
                if (file.lastModified() + VpaidConstants.CACHED_VIDEO_LIFE_TIME < System.currentTimeMillis() || file.length() == 0) {
                    file.delete();
                    Logger.m630d(LOG_TAG, "Deleted cached file: " + file.getAbsolutePath());
                    i4 = i3;
                } else {
                    i4 = i3 + 1;
                }
            }
            i++;
            i2 = i4;
        }
    }

    public static File getParentDir(Context context) {
        if (context == null) {
            return null;
        }
        return context.getExternalFilesDir(VpaidConstants.FILE_FOLDER);
    }

    public static String obtainHashName(String str) {
        return Long.toString(str.hashCode() & 4294967295L);
    }
}
