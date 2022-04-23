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
        Logger.d(LOG_TAG, "Clear cache");
        File parentDir = getParentDir(context);
        if (parentDir != null) {
            File[] listFiles = parentDir.listFiles();
            int i = 0;
            for (File file : listFiles) {
                i = i;
                if (!file.isDirectory()) {
                    file.delete();
                    i++;
                }
            }
            Logger.d(LOG_TAG, "Deleted " + i + " file(s)");
        }
    }

    public static void deleteExpiredFiles(Context context) {
        File parentDir = getParentDir(context);
        if (parentDir != null) {
            File[] listFiles = parentDir.listFiles();
            int i = 0;
            for (File file : listFiles) {
                i = i;
                if (!file.isDirectory()) {
                    if (file.lastModified() + VpaidConstants.CACHED_VIDEO_LIFE_TIME < System.currentTimeMillis() || file.length() == 0) {
                        file.delete();
                        Logger.d(LOG_TAG, "Deleted cached file: " + file.getAbsolutePath());
                        i = i;
                    } else {
                        i++;
                    }
                }
            }
            String str = LOG_TAG;
            Logger.d(str, "In cache " + i + " file(s)");
            Logger.d(str, "Cache time: " + (VpaidConstants.CACHED_VIDEO_LIFE_TIME / Constants.HOUR_IN_MILLIS) + " hours");
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
