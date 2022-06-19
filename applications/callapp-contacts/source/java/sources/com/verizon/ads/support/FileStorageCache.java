package com.verizon.ads.support;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.utils.HttpUtils;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/FileStorageCache.class */
public class FileStorageCache extends StorageCache {
    public static final int ERROR_CREATING_FILE = -1;
    public static final int ERROR_DOWNLOAD_FAILED = -2;

    /* renamed from: a */
    private static final Logger f61656a = Logger.getInstance(FileStorageCache.class);

    /* renamed from: b */
    private static final String f61657b = FileStorageCache.class.getSimpleName();

    /* renamed from: d */
    private AtomicInteger f61659d = new AtomicInteger(0);

    /* renamed from: e */
    private Map<String, File> f61660e = new ConcurrentHashMap();

    /* renamed from: f */
    private volatile boolean f61661f = false;

    /* renamed from: g */
    private final Set<String> f61662g = new HashSet();

    /* renamed from: c */
    private final ExecutorService f61658c = Executors.newFixedThreadPool(3);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/FileStorageCache$FileStorageCacheListener.class */
    public interface FileStorageCacheListener {
        void onComplete(String str, ErrorInfo errorInfo);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileStorageCache(com.verizon.ads.support.StorageCache r7) {
        /*
            r6 = this;
            r0 = r7
            java.io.File r0 = r0.getCacheDirectory()
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.util.UUID r1 = java.util.UUID.randomUUID()
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "/"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.io.File r1 = new java.io.File
            r2 = r1
            r3 = r7
            r4 = r8
            java.lang.String r4 = r4.toString()
            r2.<init>(r3, r4)
            r0.<init>(r1)
            r0 = r6
            java.util.concurrent.atomic.AtomicInteger r1 = new java.util.concurrent.atomic.AtomicInteger
            r2 = r1
            r3 = 0
            r2.<init>(r3)
            r0.f61659d = r1
            r0 = r6
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.f61660e = r1
            r0 = r6
            r1 = 0
            r0.f61661f = r1
            r0 = r6
            java.util.HashSet r1 = new java.util.HashSet
            r2 = r1
            r2.<init>()
            r0.f61662g = r1
            r0 = r6
            r1 = 3
            java.util.concurrent.ExecutorService r1 = java.util.concurrent.Executors.newFixedThreadPool(r1)
            r0.f61658c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.support.FileStorageCache.<init>(com.verizon.ads.support.StorageCache):void");
    }

    /* renamed from: a */
    static /* synthetic */ void m5360a(FileStorageCache fileStorageCache, String str, File file) {
        if (TextUtils.isEmpty(str)) {
            f61656a.m5565e("url cannot be null or empty");
        } else if (file == null) {
            f61656a.m5565e("file cannot be null");
        } else {
            fileStorageCache.f61660e.put(str, file);
        }
    }

    public void deleteCache() {
        f61656a.m5567d("Deleting cache");
        stopAllDownloads();
        deleteCacheDirectory();
        this.f61660e.clear();
    }

    public void downloadAndCacheFile(String str, FileStorageCacheListener fileStorageCacheListener) {
        downloadAndCacheFile(str, fileStorageCacheListener, 5000);
    }

    public void downloadAndCacheFile(final String str, final FileStorageCacheListener fileStorageCacheListener, final int i) {
        if (fileStorageCacheListener == null) {
            f61656a.m5565e("Listener cannot be null");
        } else if (TextUtils.isEmpty(str)) {
            fileStorageCacheListener.onComplete(str, new ErrorInfo(f61657b, "url cannot be null or empty", -2));
        } else {
            this.f61658c.execute(new Runnable() { // from class: com.verizon.ads.support.FileStorageCache.1
                @Override // java.lang.Runnable
                public void run() {
                    if (FileStorageCache.this.f61661f) {
                        fileStorageCacheListener.onComplete(str, new ErrorInfo(FileStorageCache.f61657b, "Download aborted", -2));
                        return;
                    }
                    if (Logger.isLogLevelEnabled(3)) {
                        FileStorageCache.f61656a.m5567d(String.format("Downloading file for url: %s", str));
                    }
                    if (FileStorageCache.this.f61660e.containsKey(str)) {
                        if (Logger.isLogLevelEnabled(3)) {
                            FileStorageCache.f61656a.m5567d(String.format("url is already in the cache: %s", str));
                        }
                        fileStorageCacheListener.onComplete(str, null);
                        return;
                    }
                    try {
                        FileStorageCache fileStorageCache = FileStorageCache.this;
                        File createFile = fileStorageCache.createFile(String.format("%d-%s", Integer.valueOf(fileStorageCache.f61659d.addAndGet(1)), URLUtil.guessFileName(str, null, null)));
                        String str2 = str;
                        int i2 = i;
                        if (i2 <= 0) {
                            i2 = 5000;
                        }
                        HttpUtils.Response fileFromGetRequest = HttpUtils.getFileFromGetRequest(str2, createFile, i2);
                        if (fileFromGetRequest.file == null) {
                            fileStorageCacheListener.onComplete(str, new ErrorInfo(FileStorageCache.f61657b, String.format("File download failed with code %d", Integer.valueOf(fileFromGetRequest.code)), -2));
                            return;
                        }
                        FileStorageCache.m5360a(FileStorageCache.this, str, createFile);
                        fileStorageCacheListener.onComplete(str, null);
                    } catch (Exception e) {
                        fileStorageCacheListener.onComplete(str, new ErrorInfo(FileStorageCache.f61657b, String.format("Error creating temporary file for url: %s", str), -1));
                    }
                }
            });
        }
    }

    public void downloadQueuedFiles(FileStorageCacheListener fileStorageCacheListener, int i) {
        if (fileStorageCacheListener == null) {
            f61656a.m5565e("Listener cannot be null");
            return;
        }
        synchronized (this.f61662g) {
            Iterator<String> it2 = this.f61662g.iterator();
            while (it2.hasNext()) {
                downloadAndCacheFile(it2.next(), fileStorageCacheListener, i);
                it2.remove();
            }
        }
    }

    public String getCacheDirectoryPath() {
        File cacheDirectory = getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        return cacheDirectory.getAbsolutePath();
    }

    public File getFile(String str) {
        if (TextUtils.isEmpty(str)) {
            f61656a.m5565e("url cannot be null or empty");
            return null;
        }
        return this.f61660e.get(str);
    }

    public int getNumQueuedFiles() {
        int size;
        synchronized (this.f61662g) {
            size = this.f61662g.size();
        }
        return size;
    }

    public void queueFileForDownload(String str) {
        if (TextUtils.isEmpty(str)) {
            f61656a.m5559w("url cannot be null or empty");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            if (this.f61662g.contains(str)) {
                f61656a.m5567d(String.format("File already queued for download: %s", str));
            } else {
                f61656a.m5567d(String.format("File queued for download: %s", str));
            }
        }
        synchronized (this.f61662g) {
            this.f61662g.add(str);
        }
    }

    public void stopAllDownloads() {
        this.f61661f = true;
    }
}
