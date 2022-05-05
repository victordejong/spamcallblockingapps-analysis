package com.privacystar.core.data.providers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/CombinedProvider.class */
public class CombinedProvider<T> implements DataProvider<T> {
    private static final Object LOCK = new Object();
    private Merger<T> detailsMerger;
    private DataProvider<T>[] providers;
    private List<T> cache = new ArrayList();
    private ArrayList<T> detailsCache = new ArrayList<>();
    private int position = -1;

    public CombinedProvider(Merger<T> merger, DataProvider<T>[] dataProviderArr) {
        this.providers = dataProviderArr;
        this.detailsMerger = merger;
        reset();
    }

    private void resetDetailsCache() {
        this.detailsCache.clear();
        this.detailsCache.addAll(Collections.nCopies(this.providers.length, null));
        refill();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void close() {
        for (DataProvider<T> dataProvider : this.providers) {
            dataProvider.close();
        }
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
                    Timber.m34e("Requested index %d is out of bounds for current providers.  Returning null...", Integer.valueOf(i));
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
                    ArrayList<T> mostRecent = this.detailsMerger.getMostRecent(this.detailsCache);
                    t = mostRecent.size() == 1 ? mostRecent.get(0) : this.detailsMerger.combine(mostRecent);
                    this.cache.add(t);
                }
                refill();
            }
        }
        return t;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasNext() {
        Iterator<T> it = this.detailsCache.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasPrev() {
        return this.position > 0;
    }

    public void refill() {
        for (int i = 0; i < this.detailsCache.size() && i < this.providers.length; i++) {
            if (this.detailsCache.get(i) == null && this.providers[i] != null && this.providers[i].hasNext()) {
                this.detailsCache.set(i, this.providers[i].getNext());
            }
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void reset() {
        for (DataProvider<T> dataProvider : this.providers) {
            dataProvider.reset();
        }
        this.cache.clear();
        resetDetailsCache();
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int size() {
        if (!hasNext()) {
            return this.cache.size();
        }
        int i = 0;
        for (DataProvider<T> dataProvider : this.providers) {
            i += dataProvider.size();
        }
        return i;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void update() {
        synchronized (LOCK) {
            for (DataProvider<T> dataProvider : this.providers) {
                dataProvider.update();
            }
            this.position = -1;
            this.cache.clear();
            resetDetailsCache();
        }
    }
}
