package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
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
/* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService.class */
public class CacheService {

    /* renamed from: a */
    public static DiskLruCache f7997a;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    /* renamed from: com.mopub.common.CacheService$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService$a.class */
    public static class AsyncTaskC3749a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a */
        public final DiskLruCacheGetListener f7998a;

        /* renamed from: b */
        public final String f7999b;

        public AsyncTaskC3749a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f7998a = diskLruCacheGetListener;
            this.f7999b = str;
        }

        /* renamed from: a */
        public void onPostExecute(byte[] bArr) {
            if (isCancelled()) {
                onCancelled();
                return;
            }
            DiskLruCacheGetListener diskLruCacheGetListener = this.f7998a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f7999b, bArr);
            }
        }

        /* renamed from: a */
        public byte[] doInBackground(Void... voidArr) {
            return CacheService.getFromDiskCache(this.f7999b);
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            DiskLruCacheGetListener diskLruCacheGetListener = this.f7998a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f7999b, null);
            }
        }
    }

    /* renamed from: com.mopub.common.CacheService$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService$b.class */
    public static class AsyncTaskC3750b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final String f8000a;

        /* renamed from: b */
        public final byte[] f8001b;

        public AsyncTaskC3750b(String str, byte[] bArr) {
            this.f8000a = str;
            this.f8001b = bArr;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CacheService.putToDiskCache(this.f8000a, this.f8001b);
            return null;
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAndNullCaches() {
        DiskLruCache diskLruCache = f7997a;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
                f7997a = null;
            } catch (IOException e) {
                f7997a = null;
            }
        }
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f7997a;
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
        return new File(path + File.separator + "mopub-cache");
    }

    @Deprecated
    @VisibleForTesting
    public static DiskLruCache getDiskLruCache() {
        return f7997a;
    }

    public static String getFilePathDiskCache(String str) {
        if (f7997a == null) {
            return null;
        }
        return f7997a.getDirectory() + File.separator + createValidDiskCacheKey(str) + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + 0;
    }

    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        Exception e;
        DiskLruCache diskLruCache = f7997a;
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
                        try {
                            Streams.readStream(bufferedInputStream, bArr3);
                            Streams.closeStream(bufferedInputStream);
                            bArr2 = bArr3;
                        } catch (Throwable th2) {
                            Streams.closeStream(bufferedInputStream);
                            throw th2;
                        }
                    }
                    if (snapshot2 != null) {
                        snapshot2.close();
                    }
                } catch (Exception e3) {
                    e = e3;
                    snapshot = snapshot2;
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get from DiskLruCache", e);
                    bArr2 = bArr;
                    if (snapshot2 != null) {
                        snapshot2.close();
                        bArr2 = bArr;
                    }
                    return bArr2;
                } catch (Throwable th3) {
                    th = th3;
                    snapshot = snapshot2;
                    if (snapshot != null) {
                        snapshot.close();
                    }
                    throw th;
                }
                return bArr2;
            } else if (snapshot2 == null) {
                return null;
            } else {
                snapshot2.close();
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new AsyncTaskC3749a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f7997a != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f7997a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f7997a;
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
            f7997a.flush();
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
        new AsyncTaskC3750b(str, bArr).execute(new Void[0]);
    }
}
