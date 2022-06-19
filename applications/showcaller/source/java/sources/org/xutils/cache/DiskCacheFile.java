package org.xutils.cache;

import java.io.Closeable;
import java.io.File;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.ProcessLock;
/* loaded from: classes2-dex2jar.jar:org/xutils/cache/DiskCacheFile.class */
public final class DiskCacheFile extends File implements Closeable {
    private final DiskCacheEntity cacheEntity;
    private final ProcessLock lock;

    public DiskCacheFile(String str, DiskCacheEntity diskCacheEntity, ProcessLock processLock) {
        super(str);
        this.cacheEntity = diskCacheEntity;
        this.lock = processLock;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtil.closeQuietly(this.lock);
    }

    public DiskCacheFile commit() {
        return getDiskCache().m277i(this);
    }

    protected void finalize() {
        super.finalize();
        close();
    }

    public DiskCacheEntity getCacheEntity() {
        return this.cacheEntity;
    }

    public LruDiskCache getDiskCache() {
        return LruDiskCache.getDiskCache(getParentFile().getName());
    }
}
