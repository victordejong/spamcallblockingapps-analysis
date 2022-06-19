package com.verizon.ads.support;

import android.content.Context;
import android.text.TextUtils;
import com.verizon.ads.Logger;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/StorageCache.class */
public class StorageCache {

    /* renamed from: a */
    private static final Logger f61677a = Logger.getInstance(StorageCache.class);

    /* renamed from: b */
    private File f61678b;

    public StorageCache(File file) {
        this.f61678b = file;
        if (Logger.isLogLevelEnabled(3)) {
            f61677a.m5567d(String.format("Storage cache created: %s", file));
        }
    }

    /* renamed from: a */
    private static void m5355a(File file) {
        if (file == null) {
            return;
        }
        try {
            if (!file.exists()) {
                f61677a.m5567d(String.format("Directory already deleted: %s", file));
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isFile()) {
                        deleteFile(file2);
                    } else if (file2.isDirectory()) {
                        m5355a(file2);
                    }
                }
            }
            if (!file.delete()) {
                f61677a.m5559w(String.format("Failed to delete directory: %s", file));
            } else if (Logger.isLogLevelEnabled(3)) {
                f61677a.m5567d(String.format("Deleted directory: %s", file));
            }
        } catch (Exception e) {
            f61677a.m5564e(String.format("Error occurred deleting directory: %s", file), e);
        }
    }

    /* renamed from: a */
    private static boolean m5354a(File file, int i) {
        if (file == null) {
            return false;
        }
        try {
            return System.currentTimeMillis() - file.lastModified() > ((long) i);
        } catch (Exception e) {
            f61677a.m5564e("Error checking if file expired", e);
            return false;
        }
    }

    public static void deleteFile(File file) {
        if (file == null) {
            return;
        }
        try {
            if (!file.delete()) {
                f61677a.m5559w(String.format("Failed to delete file: %s", file));
            } else if (!Logger.isLogLevelEnabled(3)) {
            } else {
                f61677a.m5567d(String.format("Deleted file: %s", file));
            }
        } catch (Exception e) {
            f61677a.m5564e("Error deleting file", e);
        }
    }

    public static File getApplicationCache(Context context, String str) {
        if (context == null) {
            f61677a.m5565e("Unable to create cache directory. Application context is null");
            return null;
        }
        try {
            return new File(context.getFilesDir(), str);
        } catch (Exception e) {
            f61677a.m5564e("Error getting root cache directory", e);
            return null;
        }
    }

    public boolean createCacheDirectory() {
        synchronized (this) {
            File file = this.f61678b;
            if (file == null) {
                f61677a.m5565e("Cache directory is null");
                return false;
            }
            try {
            } catch (Exception e) {
                f61677a.m5564e("Error creating cache directory", e);
            }
            if (file.exists()) {
                return true;
            }
            if (!this.f61678b.mkdirs()) {
                f61677a.m5565e(String.format("Failed to create cache directory: %s", this.f61678b.getAbsolutePath()));
                return false;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f61677a.m5567d(String.format("File cache directory created: %s", this.f61678b.getAbsolutePath()));
            }
            return true;
        }
    }

    public File createFile(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f61677a.m5565e("filename cannot be null or empty");
                return null;
            } else if (!createCacheDirectory()) {
                return null;
            } else {
                return new File(this.f61678b, str);
            }
        }
    }

    public void deleteCacheDirectory() {
        synchronized (this) {
            if (this.f61678b == null) {
                f61677a.m5565e("Cache directory is null");
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f61677a.m5567d(String.format("Deleting file cache directory: %s", this.f61678b));
            }
            m5355a(this.f61678b);
        }
    }

    public void deleteExpiredCacheEntries(int i) {
        synchronized (this) {
            File file = this.f61678b;
            if (file == null) {
                return;
            }
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        if (m5354a(file2, i)) {
                            if (file2.isDirectory()) {
                                if (Logger.isLogLevelEnabled(3)) {
                                    f61677a.m5567d(String.format("Cache directory has expired -- deleting: %s", file2));
                                }
                                m5355a(file2);
                            } else if (file2.isFile()) {
                                if (Logger.isLogLevelEnabled(3)) {
                                    f61677a.m5567d(String.format("Cache file has expired -- deleting: %s", file2));
                                }
                                deleteFile(file2);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                f61677a.m5564e(String.format("Error deleting expired cache instance directories: %s", this.f61678b), e);
            }
        }
    }

    public File getCacheDirectory() {
        return this.f61678b;
    }
}
