package com.nostra13.universalimageloader.cache.disc.impl.ext;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.utils.C1836L;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache.class */
public class LruDiskCache implements DiskCache {
    public static final int DEFAULT_BUFFER_SIZE = 32768;
    public static final Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT = Bitmap.CompressFormat.PNG;
    public static final int DEFAULT_COMPRESS_QUALITY = 100;
    private static final String ERROR_ARG_NEGATIVE = " argument must be positive number";
    private static final String ERROR_ARG_NULL = " argument must be not null";
    protected int bufferSize;
    protected DiskLruCache cache;
    protected Bitmap.CompressFormat compressFormat;
    protected int compressQuality;
    protected final FileNameGenerator fileNameGenerator;
    private File reserveCacheDir;

    public LruDiskCache(File file, FileNameGenerator fileNameGenerator, long j) throws IOException {
        this(file, null, fileNameGenerator, j, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.nostra13.universalimageloader.cache.disc.impl.ext.LruDiskCache] */
    public LruDiskCache(File file, File file2, FileNameGenerator fileNameGenerator, long j, int i) throws IOException {
        this.bufferSize = 32768;
        this.compressFormat = DEFAULT_COMPRESS_FORMAT;
        this.compressQuality = 100;
        if (file != null) {
            int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i2 < 0) {
                throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
            }
            if (i < 0) {
                throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
            }
            if (fileNameGenerator == null) {
                throw new IllegalArgumentException("fileNameGenerator argument must be not null");
            }
            ?? r11 = i2 == 0 ? 9223372036854775807 : j;
            i = i == 0 ? Integer.MAX_VALUE : i;
            this.reserveCacheDir = file2;
            this.fileNameGenerator = fileNameGenerator;
            initCache(file, file2, r11, i);
            return;
        }
        throw new IllegalArgumentException("cacheDir argument must be not null");
    }

    private String getKey(String str) {
        return this.fileNameGenerator.generate(str);
    }

    private void initCache(File file, File file2, long j, int i) throws IOException {
        try {
            this.cache = DiskLruCache.open(file, 1, 1, j, i);
        } catch (IOException e) {
            C1836L.m1112e(e);
            if (file2 != null) {
                initCache(file2, null, j, i);
            }
            if (this.cache == null) {
                throw e;
            }
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public void clear() {
        try {
            this.cache.delete();
        } catch (IOException e) {
            C1836L.m1112e(e);
        }
        try {
            initCache(this.cache.getDirectory(), this.reserveCacheDir, this.cache.getMaxSize(), this.cache.getMaxFileCount());
        } catch (IOException e2) {
            C1836L.m1112e(e2);
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public void close() {
        try {
            this.cache.close();
        } catch (IOException e) {
            C1836L.m1112e(e);
        }
        this.cache = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0052  */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache$Snapshot] */
    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File get(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache r0 = r0.cache     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L36
            r1 = r4
            r2 = r5
            java.lang.String r1 = r1.getKey(r2)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L36
            com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache$Snapshot r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L36
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L18
            r0 = r6
            r5 = r0
            goto L22
        L18:
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            java.io.File r0 = r0.getFile(r1)     // Catch: java.io.IOException -> L2c java.lang.Throwable -> L49
            r6 = r0
            r0 = r6
            r5 = r0
        L22:
            r0 = r7
            if (r0 == 0) goto L2a
            r0 = r7
            r0.close()
        L2a:
            r0 = r5
            return r0
        L2c:
            r6 = move-exception
            goto L39
        L30:
            r5 = move-exception
            r0 = 0
            r7 = r0
            goto L4e
        L36:
            r6 = move-exception
            r0 = 0
            r7 = r0
        L39:
            r0 = r7
            r5 = r0
            r0 = r6
            com.nostra13.universalimageloader.utils.C1836L.m1112e(r0)     // Catch: java.lang.Throwable -> L49
            r0 = r7
            if (r0 == 0) goto L47
            r0 = r7
            r0.close()
        L47:
            r0 = 0
            return r0
        L49:
            r6 = move-exception
            r0 = r5
            r7 = r0
            r0 = r6
            r5 = r0
        L4e:
            r0 = r7
            if (r0 == 0) goto L56
            r0 = r7
            r0.close()
        L56:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.cache.disc.impl.ext.LruDiskCache.get(java.lang.String):java.io.File");
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public File getDirectory() {
        return this.cache.getDirectory();
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public boolean remove(String str) {
        try {
            return this.cache.remove(getKey(str));
        } catch (IOException e) {
            C1836L.m1112e(e);
            return false;
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public boolean save(String str, Bitmap bitmap) throws IOException {
        DiskLruCache.Editor edit = this.cache.edit(getKey(str));
        if (edit == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(edit.newOutputStream(0), this.bufferSize);
        try {
            boolean compress = bitmap.compress(this.compressFormat, this.compressQuality, bufferedOutputStream);
            if (compress) {
                edit.commit();
            } else {
                edit.abort();
            }
            return compress;
        } finally {
            IoUtils.closeSilently(bufferedOutputStream);
        }
    }

    @Override // com.nostra13.universalimageloader.cache.disc.DiskCache
    public boolean save(String str, InputStream inputStream, IoUtils.CopyListener copyListener) throws IOException {
        DiskLruCache.Editor edit = this.cache.edit(getKey(str));
        if (edit == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(edit.newOutputStream(0), this.bufferSize);
        try {
            boolean copyStream = IoUtils.copyStream(inputStream, bufferedOutputStream, copyListener, this.bufferSize);
            IoUtils.closeSilently(bufferedOutputStream);
            if (copyStream) {
                edit.commit();
            } else {
                edit.abort();
            }
            return copyStream;
        } catch (Throwable th) {
            IoUtils.closeSilently(bufferedOutputStream);
            edit.abort();
            throw th;
        }
    }

    public void setBufferSize(int i) {
        this.bufferSize = i;
    }

    public void setCompressFormat(Bitmap.CompressFormat compressFormat) {
        this.compressFormat = compressFormat;
    }

    public void setCompressQuality(int i) {
        this.compressQuality = i;
    }
}
