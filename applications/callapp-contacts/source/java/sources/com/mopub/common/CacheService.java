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

    /* renamed from: a */
    private static DiskLruCache f58659a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    /* renamed from: com.mopub.common.CacheService$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService$a.class */
    static final class AsyncTaskC16672a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a */
        private final DiskLruCacheGetListener f58660a;

        /* renamed from: b */
        private final String f58661b;

        AsyncTaskC16672a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f58660a = diskLruCacheGetListener;
            this.f58661b = str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ byte[] doInBackground(Void[] voidArr) {
            return CacheService.getFromDiskCache(this.f58661b);
        }

        @Override // android.os.AsyncTask
        protected final void onCancelled() {
            DiskLruCacheGetListener diskLruCacheGetListener = this.f58660a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f58661b, null);
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(byte[] bArr) {
            byte[] bArr2 = bArr;
            if (isCancelled()) {
                onCancelled();
                return;
            }
            DiskLruCacheGetListener diskLruCacheGetListener = this.f58660a;
            if (diskLruCacheGetListener == null) {
                return;
            }
            diskLruCacheGetListener.onComplete(this.f58661b, bArr2);
        }
    }

    /* renamed from: com.mopub.common.CacheService$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CacheService$b.class */
    static final class AsyncTaskC16673b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private final String f58662a;

        /* renamed from: b */
        private final byte[] f58663b;

        AsyncTaskC16673b(String str, byte[] bArr) {
            this.f58662a = str;
            this.f58663b = bArr;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            CacheService.putToDiskCache(this.f58662a, this.f58663b);
            return null;
        }
    }

    @Deprecated
    public static void clearAndNullCaches() {
        DiskLruCache diskLruCache = f58659a;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
                f58659a = null;
            } catch (IOException e) {
                f58659a = null;
            }
        }
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f58659a;
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
        return f58659a;
    }

    public static String getFilePathDiskCache(String str) {
        if (f58659a == null) {
            return null;
        }
        return f58659a.getDirectory() + File.separator + createValidDiskCacheKey(str) + ".0";
    }

    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        byte[] bArr;
        Exception e;
        DiskLruCache.Snapshot snapshot;
        byte[] bArr2;
        DiskLruCache diskLruCache = f58659a;
        DiskLruCache.Snapshot snapshot2 = null;
        if (diskLruCache == null) {
            return null;
        }
        try {
            try {
                snapshot = diskLruCache.get(createValidDiskCacheKey(str));
            } catch (Exception e2) {
                e = e2;
                bArr2 = null;
                snapshot = null;
            }
            if (snapshot == null) {
                if (snapshot == null) {
                    return null;
                }
                snapshot.close();
                return null;
            }
            bArr2 = null;
            try {
                InputStream inputStream = snapshot.getInputStream(0);
                byte[] bArr3 = null;
                if (inputStream != null) {
                    byte[] bArr4 = new byte[(int) snapshot.getLength(0)];
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                    Streams.readStream(bufferedInputStream, bArr4);
                    bArr2 = bArr4;
                    Streams.closeStream(bufferedInputStream);
                    bArr3 = bArr4;
                }
                bArr = bArr3;
                if (snapshot != null) {
                    snapshot.close();
                    bArr = bArr3;
                }
            } catch (Exception e3) {
                e = e3;
                snapshot2 = snapshot;
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get from DiskLruCache", e);
                if (snapshot != null) {
                    snapshot.close();
                }
                bArr = bArr2;
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                snapshot2 = snapshot;
                if (snapshot2 != null) {
                    snapshot2.close();
                }
                throw th;
            }
            return bArr;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new AsyncTaskC16672a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f58659a != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f58659a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f58659a;
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
            f58659a.flush();
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
        new AsyncTaskC16673b(str, bArr).execute(new Void[0]);
    }
}
