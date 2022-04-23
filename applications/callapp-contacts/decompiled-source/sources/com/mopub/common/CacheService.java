package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.DiskLruCache;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService.class */
public class CacheService {

    /* renamed from: a  reason: collision with root package name */
    private static DiskLruCache f33784a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService$a.class */
    static final class a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a  reason: collision with root package name */
        private final DiskLruCacheGetListener f33785a;

        /* renamed from: b  reason: collision with root package name */
        private final String f33786b;

        a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f33785a = diskLruCacheGetListener;
            this.f33786b = str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ byte[] doInBackground(Void[] voidArr) {
            return CacheService.getFromDiskCache(this.f33786b);
        }

        @Override // android.os.AsyncTask
        protected final void onCancelled() {
            DiskLruCacheGetListener diskLruCacheGetListener = this.f33785a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f33786b, null);
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(byte[] bArr) {
            byte[] bArr2 = bArr;
            if (isCancelled()) {
                onCancelled();
                return;
            }
            DiskLruCacheGetListener diskLruCacheGetListener = this.f33785a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f33786b, bArr2);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService$b.class */
    static final class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private final String f33787a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f33788b;

        b(String str, byte[] bArr) {
            this.f33787a = str;
            this.f33788b = bArr;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            CacheService.putToDiskCache(this.f33787a, this.f33788b);
            return null;
        }
    }

    @Deprecated
    public static void clearAndNullCaches() {
        DiskLruCache diskLruCache = f33784a;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
                f33784a = null;
            } catch (IOException e) {
                f33784a = null;
            }
        }
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f33784a;
        if (diskLruCache == null) {
            return false;
        }
        try {
            return diskLruCache.get(createValidDiskCacheKey(str)) != null;
        } catch (Exception e) {
            return false;
        }
    }

    public static String createValidDiskCacheKey(String str) {
        return Utils.sha1(str);
    }

    public static File getDiskCacheDirectory(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String path = cacheDir.getPath();
        return new File(path + File.separator + "mopub-cache");
    }

    @Deprecated
    public static DiskLruCache getDiskLruCache() {
        return f33784a;
    }

    public static String getFilePathDiskCache(String str) {
        if (f33784a == null) {
            return null;
        }
        return f33784a.getDirectory() + File.separator + createValidDiskCacheKey(str) + ".0";
    }

    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        Exception e;
        DiskLruCache diskLruCache = f33784a;
        byte[] bArr = null;
        DiskLruCache.Snapshot snapshot = null;
        DiskLruCache.Snapshot snapshot2 = null;
        byte[] bArr2 = null;
        if (diskLruCache == null) {
            return null;
        }
        try {
            try {
                snapshot2 = diskLruCache.get(createValidDiskCacheKey(str));
            } catch (Exception e2) {
                e = e2;
                bArr = null;
            }
            if (snapshot2 != null) {
                try {
                    InputStream inputStream = snapshot2.getInputStream(0);
                    if (inputStream != null) {
                        byte[] bArr3 = new byte[(int) snapshot2.getLength(0)];
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                        Streams.readStream(bufferedInputStream, bArr3);
                        bArr = bArr3;
                        Streams.closeStream(bufferedInputStream);
                        bArr2 = bArr3;
                    }
                    bArr = bArr2;
                    if (snapshot2 != null) {
                        snapshot2.close();
                        bArr = bArr2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    snapshot = snapshot2;
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get from DiskLruCache", e);
                    if (snapshot2 != null) {
                        snapshot2.close();
                    }
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    snapshot = snapshot2;
                    if (snapshot != null) {
                        snapshot.close();
                    }
                    throw th;
                }
                return bArr;
            } else if (snapshot2 == null) {
                return null;
            } else {
                snapshot2.close();
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f33784a != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f33784a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f33784a;
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
            f33784a.flush();
            editor = edit;
            edit.commit();
            return true;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to put to DiskLruCache", e);
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
        new b(str, bArr).execute(new Void[0]);
    }
}
