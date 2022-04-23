package com.privacystar.core.data.providers;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/ArrayDataProvider.class */
public class ArrayDataProvider<T> implements DataProvider<T> {
    private static final Object LOCK = new Object();
    private T[] items;
    private int position;

    public ArrayDataProvider(T[] tArr) {
        this.items = tArr;
        this.position = this.items.length;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void close() {
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int currentPosition() {
        return this.position;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public T get(int i) {
        synchronized (this) {
            if (i >= size()) {
                return null;
            }
            return this.items[i];
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
                t = this.items[this.position];
                this.position++;
            }
        }
        return t;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasNext() {
        return this.position < this.items.length;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasPrev() {
        return this.position > 0;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void reset() {
        synchronized (LOCK) {
            this.position = 0;
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int size() {
        return this.items.length;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void update() {
    }
}
