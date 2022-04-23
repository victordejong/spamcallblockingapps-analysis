package com.privacystar.core.data.providers;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/LogCursor.class */
public class LogCursor<T> {
    private DataProvider<T> mProvider;
    private final AtomicInteger position = new AtomicInteger();

    public LogCursor(DataProvider<T> dataProvider) {
        this.mProvider = dataProvider;
        this.position.set(-1);
    }

    public T getCurrent() {
        return this.mProvider.get(this.position.get());
    }

    public T getNext() {
        this.position.incrementAndGet();
        return this.mProvider.get(this.position.get());
    }

    public int getPosition() {
        return this.position.get() + 1;
    }

    public T getPrev() {
        this.position.decrementAndGet();
        return this.mProvider.get(this.position.get());
    }

    public boolean hasNext() {
        if (this.position.get() == this.mProvider.currentPosition()) {
            return this.mProvider.hasNext();
        }
        return this.position.get() < this.mProvider.currentPosition();
    }

    public boolean hasPrev() {
        if (this.position.get() == this.mProvider.currentPosition()) {
            return this.mProvider.hasPrev();
        }
        return this.position.get() > 0;
    }

    public void jumpTo(int i) {
        if (i < this.mProvider.size() && i > 0) {
            this.position.set(i);
        }
    }

    public int size() {
        return this.mProvider.size();
    }
}
