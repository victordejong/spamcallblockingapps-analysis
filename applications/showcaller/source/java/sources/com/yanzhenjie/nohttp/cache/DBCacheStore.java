package com.yanzhenjie.nohttp.cache;

import android.content.Context;
import com.yanzhenjie.nohttp.p320db.BaseDao;
import com.yanzhenjie.nohttp.p320db.Where;
import com.yanzhenjie.nohttp.tools.CacheStore;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cache/DBCacheStore.class */
public class DBCacheStore extends BasicCacheStore {
    private boolean mEnable = true;
    private Lock mLock = new ReentrantLock();
    private BaseDao<CacheEntity> mManager;

    public DBCacheStore(Context context) {
        super(context);
        this.mManager = new CacheEntityDao(context);
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.yanzhenjie.nohttp.tools.CacheStore
    public boolean clear() {
        boolean z;
        this.mLock.lock();
        try {
            if (this.mEnable) {
                if (this.mManager.deleteAll()) {
                    z = true;
                    this.mLock.unlock();
                    return z;
                }
            }
            z = false;
            this.mLock.unlock();
            return z;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.yanzhenjie.nohttp.tools.CacheStore
    public CacheEntity get(String str) {
        this.mLock.lock();
        String uniqueKey = uniqueKey(str);
        try {
            CacheEntity cacheEntity = null;
            if (this.mEnable) {
                List<CacheEntity> list = this.mManager.getList(new Where("key", Where.Options.EQUAL, uniqueKey).get(), null, null, null);
                if (list.size() > 0) {
                    cacheEntity = list.get(0);
                }
            }
            this.mLock.unlock();
            return cacheEntity;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.yanzhenjie.nohttp.tools.CacheStore
    public boolean remove(String str) {
        boolean delete;
        this.mLock.lock();
        String uniqueKey = uniqueKey(str);
        try {
            if (!this.mEnable) {
                delete = false;
            } else {
                delete = this.mManager.delete(new Where("key", Where.Options.EQUAL, uniqueKey).toString());
            }
            this.mLock.unlock();
            return delete;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public CacheEntity replace(String str, CacheEntity cacheEntity) {
        this.mLock.lock();
        String uniqueKey = uniqueKey(str);
        try {
            if (this.mEnable) {
                cacheEntity.setKey(uniqueKey);
                this.mManager.replace(cacheEntity);
            }
            return cacheEntity;
        } finally {
            this.mLock.unlock();
        }
    }

    public CacheStore<CacheEntity> setEnable(boolean z) {
        this.mEnable = z;
        return this;
    }
}
