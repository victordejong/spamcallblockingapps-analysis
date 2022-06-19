package org.xutils.cache;

import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.common.task.PriorityExecutor;
import org.xutils.common.util.FileUtil;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.LogUtil;
import org.xutils.common.util.MD5;
import org.xutils.common.util.ProcessLock;
import org.xutils.config.DbConfigs;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p344ex.FileLockedException;
/* loaded from: classes2-dex2jar.jar:org/xutils/cache/LruDiskCache.class */
public final class LruDiskCache {

    /* renamed from: a */
    private static final HashMap<String, LruDiskCache> f40548a = new HashMap<>(5);

    /* renamed from: b */
    private boolean f40549b;

    /* renamed from: c */
    private DbManager f40550c;

    /* renamed from: d */
    private File f40551d;

    /* renamed from: e */
    private long f40552e = 104857600;

    /* renamed from: f */
    private final Executor f40553f = new PriorityExecutor(1, true);

    /* renamed from: g */
    private long f40554g = 0;

    /* renamed from: org.xutils.cache.LruDiskCache$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/cache/LruDiskCache$a.class */
    public class RunnableC9619a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ DiskCacheEntity f40555d;

        RunnableC9619a(DiskCacheEntity diskCacheEntity) {
            LruDiskCache.this = r4;
            this.f40555d = diskCacheEntity;
        }

        @Override // java.lang.Runnable
        public void run() {
            DiskCacheEntity diskCacheEntity = this.f40555d;
            diskCacheEntity.setHits(diskCacheEntity.getHits() + 1);
            this.f40555d.setLastAccess(System.currentTimeMillis());
            try {
                LruDiskCache.this.f40550c.update(this.f40555d, "hits", "lastAccess");
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
        }
    }

    /* renamed from: org.xutils.cache.LruDiskCache$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/cache/LruDiskCache$b.class */
    public class RunnableC9620b implements Runnable {
        RunnableC9620b() {
            LruDiskCache.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            List<DiskCacheEntity> findAll;
            if (!LruDiskCache.this.f40549b) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - LruDiskCache.this.f40554g < 1000) {
                return;
            }
            LruDiskCache.this.f40554g = currentTimeMillis;
            LruDiskCache.this.m276j();
            try {
                int count = (int) LruDiskCache.this.f40550c.selector(DiskCacheEntity.class).count();
                if (count > 5010 && (findAll = LruDiskCache.this.f40550c.selector(DiskCacheEntity.class).orderBy("lastAccess").orderBy("hits").limit(count - 5000).offset(0).findAll()) != null && findAll.size() > 0) {
                    for (DiskCacheEntity diskCacheEntity : findAll) {
                        LruDiskCache.this.f40550c.delete(diskCacheEntity);
                        String path = diskCacheEntity.getPath();
                        if (!TextUtils.isEmpty(path)) {
                            LruDiskCache.this.m275k(path);
                            LruDiskCache lruDiskCache = LruDiskCache.this;
                            lruDiskCache.m275k(path + ".tmp");
                        }
                    }
                }
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
            while (FileUtil.getFileOrDirSize(LruDiskCache.this.f40551d) > LruDiskCache.this.f40552e) {
                try {
                    List<DiskCacheEntity> findAll2 = LruDiskCache.this.f40550c.selector(DiskCacheEntity.class).orderBy("lastAccess").orderBy("hits").limit(10).offset(0).findAll();
                    if (findAll2 != null && findAll2.size() > 0) {
                        for (DiskCacheEntity diskCacheEntity2 : findAll2) {
                            LruDiskCache.this.f40550c.delete(diskCacheEntity2);
                            String path2 = diskCacheEntity2.getPath();
                            if (!TextUtils.isEmpty(path2)) {
                                LruDiskCache.this.m275k(path2);
                                LruDiskCache lruDiskCache2 = LruDiskCache.this;
                                lruDiskCache2.m275k(path2 + ".tmp");
                            }
                        }
                    }
                } catch (Throwable th2) {
                    LogUtil.m258e(th2.getMessage(), th2);
                    return;
                }
            }
        }
    }

    /* renamed from: org.xutils.cache.LruDiskCache$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/cache/LruDiskCache$c.class */
    public class RunnableC9621c implements Runnable {
        RunnableC9621c() {
            LruDiskCache.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!LruDiskCache.this.f40549b) {
                return;
            }
            try {
                File[] listFiles = LruDiskCache.this.f40551d.listFiles();
                if (listFiles == null) {
                    return;
                }
                for (File file : listFiles) {
                    if (LruDiskCache.this.f40550c.selector(DiskCacheEntity.class).where("path", "=", file.getAbsolutePath()).count() < 1) {
                        IOUtil.deleteFileOrDir(file);
                        continue;
                    }
                }
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
        }
    }

    private LruDiskCache(String str) {
        this.f40549b = false;
        try {
            File cacheDir = FileUtil.getCacheDir(str);
            this.f40551d = cacheDir;
            if (cacheDir != null && (cacheDir.exists() || this.f40551d.mkdirs())) {
                this.f40549b = true;
            }
            this.f40550c = C9682x.getDb(DbConfigs.HTTP.getConfig());
        } catch (Throwable th) {
            this.f40549b = false;
            LogUtil.m258e(th.getMessage(), th);
        }
        m274l();
    }

    public static LruDiskCache getDiskCache(String str) {
        LruDiskCache lruDiskCache;
        synchronized (LruDiskCache.class) {
            String str2 = str;
            try {
                if (TextUtils.isEmpty(str)) {
                    str2 = "xUtils_cache";
                }
                HashMap<String, LruDiskCache> hashMap = f40548a;
                LruDiskCache lruDiskCache2 = hashMap.get(str2);
                lruDiskCache = lruDiskCache2;
                if (lruDiskCache2 == null) {
                    lruDiskCache = new LruDiskCache(str2);
                    hashMap.put(str2, lruDiskCache);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return lruDiskCache;
    }

    /* renamed from: j */
    public void m276j() {
        if (!this.f40549b) {
            return;
        }
        try {
            WhereBuilder m228b = WhereBuilder.m228b("expires", "<", Long.valueOf(System.currentTimeMillis()));
            List<DiskCacheEntity> findAll = this.f40550c.selector(DiskCacheEntity.class).where(m228b).findAll();
            this.f40550c.delete(DiskCacheEntity.class, m228b);
            if (findAll == null || findAll.size() <= 0) {
                return;
            }
            for (DiskCacheEntity diskCacheEntity : findAll) {
                String path = diskCacheEntity.getPath();
                if (!TextUtils.isEmpty(path)) {
                    m275k(path);
                }
            }
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    /* renamed from: k */
    public boolean m275k(String str) {
        Throwable th;
        ProcessLock processLock;
        try {
            ProcessLock tryLock = ProcessLock.tryLock(str, true);
            if (tryLock != null) {
                try {
                    if (tryLock.isValid()) {
                        boolean deleteFileOrDir = IOUtil.deleteFileOrDir(new File(str));
                        IOUtil.closeQuietly(tryLock);
                        return deleteFileOrDir;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    processLock = tryLock;
                    IOUtil.closeQuietly(processLock);
                    throw th;
                }
            }
            IOUtil.closeQuietly(tryLock);
            return false;
        } catch (Throwable th3) {
            th = th3;
            processLock = null;
        }
    }

    /* renamed from: l */
    private void m274l() {
        this.f40553f.execute(new RunnableC9621c());
    }

    /* renamed from: m */
    private void m273m() {
        this.f40553f.execute(new RunnableC9620b());
    }

    public void clearCacheFiles() {
        IOUtil.deleteFileOrDir(this.f40551d);
    }

    public DiskCacheFile createDiskCacheFile(DiskCacheEntity diskCacheEntity) {
        if (!this.f40549b || diskCacheEntity == null) {
            return null;
        }
        diskCacheEntity.setPath(new File(this.f40551d, MD5.md5(diskCacheEntity.getKey())).getAbsolutePath());
        String str = diskCacheEntity.getPath() + ".tmp";
        ProcessLock tryLock = ProcessLock.tryLock(str, true);
        if (tryLock == null || !tryLock.isValid()) {
            throw new FileLockedException(diskCacheEntity.getPath());
        }
        DiskCacheFile diskCacheFile = new DiskCacheFile(str, diskCacheEntity, tryLock);
        if (!diskCacheFile.getParentFile().exists()) {
            diskCacheFile.mkdirs();
        }
        return diskCacheFile;
    }

    public DiskCacheEntity get(String str) {
        DiskCacheEntity diskCacheEntity;
        if (!this.f40549b || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            diskCacheEntity = (DiskCacheEntity) this.f40550c.selector(DiskCacheEntity.class).where("key", "=", str).findFirst();
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
            diskCacheEntity = null;
        }
        if (diskCacheEntity != null) {
            if (diskCacheEntity.getExpires() < System.currentTimeMillis()) {
                return null;
            }
            this.f40553f.execute(new RunnableC9619a(diskCacheEntity));
        }
        return diskCacheEntity;
    }

    public DiskCacheFile getDiskCacheFile(String str) {
        DiskCacheFile diskCacheFile = null;
        if (this.f40549b) {
            if (TextUtils.isEmpty(str)) {
                diskCacheFile = null;
            } else {
                DiskCacheEntity diskCacheEntity = get(str);
                diskCacheFile = null;
                if (diskCacheEntity != null) {
                    diskCacheFile = null;
                    if (new File(diskCacheEntity.getPath()).exists()) {
                        ProcessLock tryLock = ProcessLock.tryLock(diskCacheEntity.getPath(), false, 3000L);
                        diskCacheFile = null;
                        if (tryLock != null) {
                            diskCacheFile = null;
                            if (tryLock.isValid()) {
                                diskCacheFile = new DiskCacheFile(diskCacheEntity.getPath(), diskCacheEntity, tryLock);
                                if (!diskCacheFile.exists()) {
                                    try {
                                        this.f40550c.delete(diskCacheEntity);
                                        diskCacheFile = null;
                                    } catch (Throwable th) {
                                        LogUtil.m258e(th.getMessage(), th);
                                        diskCacheFile = null;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return diskCacheFile;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013b  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.xutils.cache.DiskCacheFile m277i(org.xutils.cache.DiskCacheFile r6) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.cache.LruDiskCache.m277i(org.xutils.cache.DiskCacheFile):org.xutils.cache.DiskCacheFile");
    }

    public void put(DiskCacheEntity diskCacheEntity) {
        if (!this.f40549b || diskCacheEntity == null || TextUtils.isEmpty(diskCacheEntity.getTextContent()) || diskCacheEntity.getExpires() < System.currentTimeMillis()) {
            return;
        }
        try {
            this.f40550c.replace(diskCacheEntity);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
        m273m();
    }

    public LruDiskCache setMaxSize(long j) {
        if (j > 0) {
            long diskAvailableSize = FileUtil.getDiskAvailableSize();
            if (diskAvailableSize > j) {
                this.f40552e = j;
            } else {
                this.f40552e = diskAvailableSize;
            }
        }
        return this;
    }
}
