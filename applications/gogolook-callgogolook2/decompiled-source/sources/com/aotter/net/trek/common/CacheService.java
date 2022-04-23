package com.aotter.net.trek.common;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import com.aotter.net.trek.common.DiskLruCache;
import com.aotter.net.trek.common.util.DeviceUtils;
import com.aotter.net.trek.common.util.Streams;
import com.aotter.net.trek.common.util.Utils;
import com.aotter.net.trek.util.TrekLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/CacheService.class */
public class CacheService {

    /* renamed from: a */
    public static final String f1457a = "trek-cache";

    /* renamed from: b */
    public static final int f1458b = 1;

    /* renamed from: c */
    public static final int f1459c = 1;

    /* renamed from: d */
    public static final int f1460d = 0;

    /* renamed from: e */
    public static DiskLruCache f1461e;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f1461e;
        boolean z = false;
        if (diskLruCache == null) {
            return false;
        }
        try {
            if (diskLruCache.get(createValidDiskCacheKey(str)) != null) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    public static String createValidDiskCacheKey(String str) {
        return Utils.sha1(str);
    }

    @Nullable
    public static File getDiskCacheDirectory(@NonNull Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String path = cacheDir.getPath();
        return new File(path + File.separator + f1457a);
    }

    public static String getFilePathDiskCache(String str) {
        if (f1461e == null) {
            return null;
        }
        return f1461e.getDirectory() + File.separator + createValidDiskCacheKey(str) + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + 0;
    }

    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        Exception e;
        DiskLruCache.Snapshot snapshot;
        DiskLruCache diskLruCache = f1461e;
        byte[] bArr = null;
        DiskLruCache.Snapshot snapshot2 = null;
        DiskLruCache.Snapshot snapshot3 = null;
        byte[] bArr2 = null;
        if (diskLruCache == null) {
            return null;
        }
        try {
            try {
                snapshot = diskLruCache.get(createValidDiskCacheKey(str));
            } catch (Exception e2) {
                e = e2;
                bArr = null;
            }
            if (snapshot != null) {
                try {
                    InputStream inputStream = snapshot.getInputStream(0);
                    if (inputStream != null) {
                        byte[] bArr3 = new byte[(int) snapshot.getLength(0)];
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                        try {
                            Streams.readStream(bufferedInputStream, bArr3);
                            Streams.closeStream(bufferedInputStream);
                            bArr2 = bArr3;
                        } catch (Throwable th2) {
                            Streams.closeStream(bufferedInputStream);
                            throw th2;
                        }
                    }
                    if (snapshot != null) {
                        snapshot.close();
                    }
                } catch (Exception e3) {
                    e = e3;
                    snapshot3 = snapshot;
                    snapshot2 = snapshot3;
                    TrekLog.m36318d("Unable to get from DiskLruCache", e);
                    bArr2 = bArr;
                    if (snapshot3 != null) {
                        snapshot3.close();
                        bArr2 = bArr;
                    }
                    return bArr2;
                } catch (Throwable th3) {
                    th = th3;
                    snapshot2 = snapshot;
                    if (snapshot2 != null) {
                        snapshot2.close();
                    }
                    throw th;
                }
                return bArr2;
            } else if (snapshot == null) {
                return null;
            } else {
                snapshot.close();
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new AsyncTaskC1741a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f1461e != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f1461e = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            TrekLog.m36318d("Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f1461e;
        if (diskLruCache == null) {
            return false;
        }
        DiskLruCache.Editor editor = null;
        try {
            DiskLruCache.Editor edit = diskLruCache.edit(createValidDiskCacheKey(str));
            if (edit == null) {
                return false;
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(edit.newOutputStream(0));
            Streams.copyContent(inputStream, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            f1461e.flush();
            editor = edit;
            edit.commit();
            return true;
        } catch (Exception e) {
            TrekLog.m36318d("Unable to put to DiskLruCache", e);
            if (editor == null) {
                return false;
            }
            try {
                editor.abort();
                return false;
            } catch (IOException e2) {
                return false;
            }
        }
    }

    public static boolean putToDiskCache(String str, byte[] bArr) {
        return putToDiskCache(str, new ByteArrayInputStream(bArr));
    }

    public static void putToDiskCacheAsync(String str, byte[] bArr) {
        new AsyncTaskC1742b(str, bArr).execute(new Void[0]);
    }
}
