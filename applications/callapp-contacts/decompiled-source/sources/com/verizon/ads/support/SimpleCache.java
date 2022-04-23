package com.verizon.ads.support;

import com.verizon.ads.Logger;
import com.verizon.ads.support.Cache;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/SimpleCache.class */
public class SimpleCache<T> implements Cache<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35601a = Logger.getInstance(SimpleCache.class);

    /* renamed from: b  reason: collision with root package name */
    private final List<T> f35602b = new ArrayList();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy.class */
    public enum SimpleCacheTrimStrategy implements Cache.TrimStrategy {
        TRIM_FROM_FRONT,
        TRIM_FROM_BACK
    }

    public SimpleCache() {
        f35601a.d("Creating simple cache");
    }

    @Override // com.verizon.ads.support.Cache
    public void add(T t) {
        synchronized (this) {
            if (t == null) {
                f35601a.e("Cannot add a null item to the cache");
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f35601a.d(String.format("Adding item to cache: %s", t));
            }
            this.f35602b.add(t);
        }
    }

    @Override // com.verizon.ads.support.Cache
    public T remove() {
        synchronized (this) {
            if (this.f35602b.size() == 0) {
                return null;
            }
            T remove = this.f35602b.remove(0);
            if (Logger.isLogLevelEnabled(3)) {
                f35601a.d(String.format("Removing item from cache: %s", remove));
            }
            return remove;
        }
    }

    @Override // com.verizon.ads.support.Cache
    public int size() {
        int size;
        synchronized (this) {
            size = this.f35602b.size();
        }
        return size;
    }

    @Override // com.verizon.ads.support.Cache
    public void trim(Cache.TrimStrategy trimStrategy, int i) {
        synchronized (this) {
            if (i < 0) {
                f35601a.e("The maximum cache size must be greater than or equal to zero");
                return;
            }
            int size = this.f35602b.size() - i;
            if (size <= 0) {
                if (Logger.isLogLevelEnabled(3)) {
                    f35601a.d(String.format("Current cache size of %d is less than maximum cache size of %d -- no items to trim", Integer.valueOf(this.f35602b.size()), Integer.valueOf(i)));
                }
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f35601a.d(String.format("Trimming %d item(s) from the cache", Integer.valueOf(size)));
            }
            if (trimStrategy == SimpleCacheTrimStrategy.TRIM_FROM_FRONT) {
                this.f35602b.subList(0, size).clear();
            } else if (trimStrategy == SimpleCacheTrimStrategy.TRIM_FROM_BACK) {
                List<T> list = this.f35602b;
                list.subList(list.size() - size, this.f35602b.size()).clear();
            } else {
                f35601a.e(String.format("Unknown trim strategy: %s", trimStrategy));
            }
        }
    }
}
