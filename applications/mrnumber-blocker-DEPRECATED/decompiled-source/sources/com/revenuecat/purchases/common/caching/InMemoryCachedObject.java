package com.revenuecat.purchases.common.caching;

import com.revenuecat.purchases.common.DateProvider;
import com.revenuecat.purchases.common.DefaultDateProvider;
import java.util.Date;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/caching/InMemoryCachedObject.class */
public final class InMemoryCachedObject<T> {
    private T cachedInstance;
    private final DateProvider dateProvider;
    private Date lastUpdatedAt;

    public InMemoryCachedObject() {
        this(null, null, 3, null);
    }

    public InMemoryCachedObject(Date date, DateProvider dateProvider) {
        k.f(dateProvider, "dateProvider");
        this.lastUpdatedAt = date;
        this.dateProvider = dateProvider;
    }

    public /* synthetic */ InMemoryCachedObject(Date date, DateProvider dateProvider, int i, g gVar) {
        this((i & 1) != 0 ? null : date, (i & 2) != 0 ? new DefaultDateProvider() : dateProvider);
    }

    public final void cacheInstance(T t) {
        this.cachedInstance = t;
        this.lastUpdatedAt = this.dateProvider.getNow();
    }

    public final void clearCache() {
        clearCacheTimestamp();
        this.cachedInstance = null;
    }

    public final void clearCacheTimestamp() {
        this.lastUpdatedAt = null;
    }

    public final T getCachedInstance() {
        return this.cachedInstance;
    }

    public final Date getLastUpdatedAt$common_release() {
        return this.lastUpdatedAt;
    }

    public final void setCachedInstance(T t) {
        this.cachedInstance = t;
    }

    public final void setLastUpdatedAt$common_release(Date date) {
        this.lastUpdatedAt = date;
    }

    public final void updateCacheTimestamp(Date date) {
        k.f(date, "date");
        this.lastUpdatedAt = date;
    }
}
