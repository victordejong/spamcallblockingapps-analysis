package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.DiskLruCache;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService.class */
public class CacheService {

    /* renamed from: a */
    public static DiskLruCache f8417a;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    /* renamed from: com.mopub.common.CacheService$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService$a.class */
    public static class AsyncTaskC2629a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a */
        public final DiskLruCacheGetListener f8418a;

        /* renamed from: b */
        public final String f8419b;

        public AsyncTaskC2629a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f8418a = diskLruCacheGetListener;
            this.f8419b = str;
        }

        @Override // android.os.AsyncTask
        public byte[] doInBackground(Void[] voidArr) {
            return CacheService.getFromDiskCache(this.f8419b);
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            DiskLruCacheGetListener diskLruCacheGetListener = this.f8418a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f8419b, null);
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(byte[] bArr) {
            byte[] bArr2 = bArr;
            if (isCancelled()) {
                onCancelled();
                return;
            }
            DiskLruCacheGetListener diskLruCacheGetListener = this.f8418a;
            if (diskLruCacheGetListener == null) {
                return;
            }
            diskLruCacheGetListener.onComplete(this.f8419b, bArr2);
        }
    }

    /* renamed from: com.mopub.common.CacheService$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CacheService$b.class */
    public static class AsyncTaskC2630b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final String f8420a;

        /* renamed from: b */
        public final byte[] f8421b;

        public AsyncTaskC2630b(String str, byte[] bArr) {
            this.f8420a = str;
            this.f8421b = bArr;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            CacheService.putToDiskCache(this.f8420a, this.f8421b);
            return null;
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAndNullCaches() {
        DiskLruCache diskLruCache = f8417a;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
                f8417a = null;
            } catch (IOException e) {
                f8417a = null;
            }
        }
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f8417a;
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
        return new File(C22128a.m8618h(C22128a.m8728C(cacheDir.getPath()), File.separator, "mopub-cache"));
    }

    @Deprecated
    @VisibleForTesting
    public static DiskLruCache getDiskLruCache() {
        return f8417a;
    }

    public static String getFilePathDiskCache(String str) {
        if (f8417a == null) {
            return null;
        }
        return f8417a.getDirectory() + File.separator + createValidDiskCacheKey(str) + StringConstant.DOT + 0;
    }

    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        byte[] bArr;
        Exception e;
        byte[] bArr2;
        DiskLruCache.Snapshot snapshot;
        DiskLruCache.Snapshot snapshot2;
        DiskLruCache diskLruCache = f8417a;
        DiskLruCache.Snapshot snapshot3 = null;
        if (diskLruCache == null) {
            return null;
        }
        try {
            try {
                snapshot2 = diskLruCache.get(createValidDiskCacheKey(str));
            } catch (Exception e2) {
                e = e2;
                bArr2 = null;
                snapshot = null;
            }
            if (snapshot2 == null) {
                if (snapshot2 == null) {
                    return null;
                }
                snapshot2.close();
                return null;
            }
            try {
                InputStream inputStream = snapshot2.getInputStream(0);
                bArr = null;
                if (inputStream != null) {
                    byte[] bArr3 = new byte[(int) snapshot2.getLength(0)];
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                    try {
                        Streams.readStream(bufferedInputStream, bArr3);
                        Streams.closeStream(bufferedInputStream);
                        bArr = bArr3;
                    } catch (Throwable th2) {
                        Streams.closeStream(bufferedInputStream);
                        throw th2;
                    }
                }
                snapshot2.close();
            } catch (Exception e3) {
                e = e3;
                snapshot = snapshot2;
                bArr2 = null;
                snapshot3 = snapshot;
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get from DiskLruCache", e);
                if (snapshot != null) {
                    snapshot.close();
                }
                bArr = bArr2;
                return bArr;
            } catch (Throwable th3) {
                th = th3;
                snapshot3 = snapshot2;
                if (snapshot3 != null) {
                    snapshot3.close();
                }
                throw th;
            }
            return bArr;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new AsyncTaskC2629a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f8417a != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f8417a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f8417a;
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
            f8417a.flush();
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
        new AsyncTaskC2630b(str, bArr).execute(new Void[0]);
    }
}
