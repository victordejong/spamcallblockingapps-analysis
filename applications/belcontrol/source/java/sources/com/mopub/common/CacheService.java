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
/* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService.class */
public class CacheService {

    /* renamed from: a */
    public static DiskLruCache f4154a;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    /* renamed from: com.mopub.common.CacheService$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService$a.class */
    public static class AsyncTaskC0999a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a */
        public final DiskLruCacheGetListener f4155a;

        /* renamed from: b */
        public final String f4156b;

        public AsyncTaskC0999a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f4155a = diskLruCacheGetListener;
            this.f4156b = str;
        }

        /* renamed from: a */
        public byte[] doInBackground(Void... voidArr) {
            return CacheService.getFromDiskCache(this.f4156b);
        }

        /* renamed from: b */
        public void onPostExecute(byte[] bArr) {
            if (isCancelled()) {
                onCancelled();
                return;
            }
            DiskLruCacheGetListener diskLruCacheGetListener = this.f4155a;
            if (diskLruCacheGetListener == null) {
                return;
            }
            diskLruCacheGetListener.onComplete(this.f4156b, bArr);
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            DiskLruCacheGetListener diskLruCacheGetListener = this.f4155a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f4156b, null);
            }
        }
    }

    /* renamed from: com.mopub.common.CacheService$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService$b.class */
    public static class AsyncTaskC1000b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final String f4157a;

        /* renamed from: b */
        public final byte[] f4158b;

        public AsyncTaskC1000b(String str, byte[] bArr) {
            this.f4157a = str;
            this.f4158b = bArr;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CacheService.putToDiskCache(this.f4157a, this.f4158b);
            return null;
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAndNullCaches() {
        DiskLruCache diskLruCache = f4154a;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
                f4154a = null;
            } catch (IOException e) {
                f4154a = null;
            }
        }
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f4154a;
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

    public static File getDiskCacheDirectory(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String path = cacheDir.getPath();
        return new File(path + File.separator + "mopub-cache");
    }

    @Deprecated
    @VisibleForTesting
    public static DiskLruCache getDiskLruCache() {
        return f4154a;
    }

    public static String getFilePathDiskCache(String str) {
        if (f4154a == null) {
            return null;
        }
        return f4154a.getDirectory() + File.separator + createValidDiskCacheKey(str) + ".0";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        Exception e;
        DiskLruCache.Snapshot snapshot;
        DiskLruCache.Snapshot snapshot2;
        DiskLruCache.Snapshot snapshot3;
        DiskLruCache diskLruCache = f4154a;
        DiskLruCache.Snapshot snapshot4 = null;
        try {
            if (diskLruCache == null) {
                return null;
            }
            try {
                snapshot3 = diskLruCache.get(createValidDiskCacheKey(str));
            } catch (Exception e2) {
                e = e2;
                snapshot = null;
                snapshot2 = null;
            }
            if (snapshot3 == null) {
                if (snapshot3 == null) {
                    return null;
                }
                snapshot3.close();
                return null;
            }
            DiskLruCache.Snapshot snapshot5 = null;
            try {
                InputStream inputStream = snapshot3.getInputStream(0);
                DiskLruCache.Snapshot snapshot6 = null;
                if (inputStream != null) {
                    byte[] bArr = new byte[(int) snapshot3.getLength(0)];
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                    Streams.readStream(bufferedInputStream, bArr);
                    snapshot5 = bArr;
                    Streams.closeStream(bufferedInputStream);
                    snapshot6 = bArr;
                }
                snapshot4 = snapshot6;
                if (snapshot3 != null) {
                    snapshot3.close();
                    snapshot4 = snapshot6;
                }
            } catch (Exception e3) {
                e = e3;
                snapshot = snapshot5;
                snapshot2 = snapshot3;
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get from DiskLruCache", e);
                if (snapshot2 != null) {
                    snapshot2.close();
                }
                snapshot4 = snapshot;
                return snapshot4;
            } catch (Throwable th2) {
                th = th2;
                snapshot4 = snapshot3;
                if (snapshot4 != null) {
                    snapshot4.close();
                }
                throw th;
            }
            return snapshot4;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new AsyncTaskC0999a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f4154a != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f4154a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f4154a;
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
            f4154a.flush();
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
        new AsyncTaskC1000b(str, bArr).execute(new Void[0]);
    }
}
