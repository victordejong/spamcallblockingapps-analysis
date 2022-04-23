package com.verizon.ads.support;

import android.content.Context;
import android.text.TextUtils;
import com.verizon.ads.Logger;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/StorageCache.class */
public class StorageCache {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35607a = Logger.getInstance(StorageCache.class);

    /* renamed from: b  reason: collision with root package name */
    private File f35608b;

    public StorageCache(File file) {
        this.f35608b = file;
        if (Logger.isLogLevelEnabled(3)) {
            f35607a.d(String.format("Storage cache created: %s", file));
        }
    }

    private static void a(File file) {
        if (file != null) {
            try {
                if (!file.exists()) {
                    f35607a.d(String.format("Directory already deleted: %s", file));
                    return;
                }
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        if (file2.isFile()) {
                            deleteFile(file2);
                        } else if (file2.isDirectory()) {
                            a(file2);
                        }
                    }
                }
                if (!file.delete()) {
                    f35607a.w(String.format("Failed to delete directory: %s", file));
                } else if (Logger.isLogLevelEnabled(3)) {
                    f35607a.d(String.format("Deleted directory: %s", file));
                }
            } catch (Exception e) {
                f35607a.e(String.format("Error occurred deleting directory: %s", file), e);
            }
        }
    }

    private static boolean a(File file, int i) {
        if (file == null) {
            return false;
        }
        try {
            return System.currentTimeMillis() - file.lastModified() > ((long) i);
        } catch (Exception e) {
            f35607a.e("Error checking if file expired", e);
            return false;
        }
    }

    public static void deleteFile(File file) {
        if (file != null) {
            try {
                if (!file.delete()) {
                    f35607a.w(String.format("Failed to delete file: %s", file));
                } else if (Logger.isLogLevelEnabled(3)) {
                    f35607a.d(String.format("Deleted file: %s", file));
                }
            } catch (Exception e) {
                f35607a.e("Error deleting file", e);
            }
        }
    }

    public static File getApplicationCache(Context context, String str) {
        if (context == null) {
            f35607a.e("Unable to create cache directory. Application context is null");
            return null;
        }
        try {
            return new File(context.getFilesDir(), str);
        } catch (Exception e) {
            f35607a.e("Error getting root cache directory", e);
            return null;
        }
    }

    public boolean createCacheDirectory() {
        synchronized (this) {
            File file = this.f35608b;
            if (file == null) {
                f35607a.e("Cache directory is null");
                return false;
            }
            try {
            } catch (Exception e) {
                f35607a.e("Error creating cache directory", e);
            }
            if (file.exists()) {
                return true;
            }
            if (this.f35608b.mkdirs()) {
                if (Logger.isLogLevelEnabled(3)) {
                    f35607a.d(String.format("File cache directory created: %s", this.f35608b.getAbsolutePath()));
                }
                return true;
            }
            f35607a.e(String.format("Failed to create cache directory: %s", this.f35608b.getAbsolutePath()));
            return false;
        }
    }

    public File createFile(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                f35607a.e("filename cannot be null or empty");
                return null;
            } else if (!createCacheDirectory()) {
                return null;
            } else {
                return new File(this.f35608b, str);
            }
        }
    }

    public void deleteCacheDirectory() {
        synchronized (this) {
            if (this.f35608b == null) {
                f35607a.e("Cache directory is null");
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f35607a.d(String.format("Deleting file cache directory: %s", this.f35608b));
            }
            a(this.f35608b);
        }
    }

    public void deleteExpiredCacheEntries(int i) {
        synchronized (this) {
            File file = this.f35608b;
            if (file != null) {
                try {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null) {
                        for (File file2 : listFiles) {
                            if (a(file2, i)) {
                                if (file2.isDirectory()) {
                                    if (Logger.isLogLevelEnabled(3)) {
                                        f35607a.d(String.format("Cache directory has expired -- deleting: %s", file2));
                                    }
                                    a(file2);
                                } else if (file2.isFile()) {
                                    if (Logger.isLogLevelEnabled(3)) {
                                        f35607a.d(String.format("Cache file has expired -- deleting: %s", file2));
                                    }
                                    deleteFile(file2);
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    f35607a.e(String.format("Error deleting expired cache instance directories: %s", this.f35608b), e);
                }
            }
        }
    }

    public File getCacheDirectory() {
        return this.f35608b;
    }
}
