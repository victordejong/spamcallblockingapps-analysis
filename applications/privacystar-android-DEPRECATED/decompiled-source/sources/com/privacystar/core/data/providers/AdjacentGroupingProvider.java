package com.privacystar.core.data.providers;

import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/AdjacentGroupingProvider.class */
public class AdjacentGroupingProvider<T> implements DataProvider<T> {
    private static final Object LOCK = new Object();
    private Grouper<T> grouper;
    private T nextCache;
    private DataProvider<T> provider;
    private List<T> cache = new ArrayList();
    private int position = -1;

    public AdjacentGroupingProvider(Grouper<T> grouper, DataProvider<T> dataProvider) {
        this.provider = dataProvider;
        this.grouper = grouper;
        reset();
    }

    private void resetDetailCache() {
        if (this.provider.hasNext()) {
            this.nextCache = this.provider.getNext();
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void close() {
        this.provider.close();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int currentPosition() {
        return this.position;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public T get(int i) {
        synchronized (this) {
            if (size() <= i) {
                return null;
            }
            if (i < this.cache.size()) {
                return this.cache.get(i);
            }
            T t = null;
            while (this.position < i) {
                if (!hasNext()) {
                    Timber.m25w("Requested index %d is out of bounds for current providers. Returning null...", Integer.valueOf(i));
                    return null;
                }
                t = getNext();
            }
            return t;
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public LogCursor<T> getCursor() {
        return new LogCursor<>(this);
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public T getNext() {
        T t;
        synchronized (this) {
            synchronized (LOCK) {
                this.position++;
                if (this.position < this.cache.size()) {
                    t = this.cache.get(this.position);
                } else {
                    t = this.nextCache;
                    if (this.provider.hasNext()) {
                        this.nextCache = this.provider.getNext();
                    } else {
                        this.nextCache = null;
                    }
                    while (this.grouper.compare(t, this.nextCache) == 0) {
                        this.grouper.merge(t, this.nextCache);
                        if (this.provider.hasNext()) {
                            this.nextCache = this.provider.getNext();
                        } else {
                            this.nextCache = null;
                        }
                    }
                    this.cache.add(t);
                }
            }
        }
        return t;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasNext() {
        return this.nextCache != null;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasPrev() {
        return this.position > 0;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void reset() {
        this.provider.reset();
        this.cache.clear();
        resetDetailCache();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int size() {
        return !hasNext() ? this.cache.size() : this.provider.size();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void update() {
        synchronized (LOCK) {
            this.provider.update();
            this.position = -1;
            this.cache.clear();
            resetDetailCache();
        }
    }
}
