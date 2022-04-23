package com.bumptech.glide.g;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/g.class */
public class g<T, Y> {
    private final Map<T, a<Y>> cache = new LinkedHashMap(100, 0.75f, true);
    private long currentSize;
    private final long initialMaxSize;
    private long maxSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/g$a.class */
    public static final class a<Y> {

        /* renamed from: a  reason: collision with root package name */
        final Y f7352a;

        /* renamed from: b  reason: collision with root package name */
        final int f7353b;

        a(Y y, int i) {
            this.f7352a = y;
            this.f7353b = i;
        }
    }

    public g(long j) {
        this.initialMaxSize = j;
        this.maxSize = j;
    }

    private void evict() {
        trimToSize(this.maxSize);
    }

    public void clearMemory() {
        trimToSize(0L);
    }

    public boolean contains(T t) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.cache.containsKey(t);
        }
        return containsKey;
    }

    public Y get(T t) {
        synchronized (this) {
            a<Y> aVar = this.cache.get(t);
            if (aVar == null) {
                return null;
            }
            return aVar.f7352a;
        }
    }

    protected int getCount() {
        int size;
        synchronized (this) {
            size = this.cache.size();
        }
        return size;
    }

    public long getCurrentSize() {
        long j;
        synchronized (this) {
            j = this.currentSize;
        }
        return j;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    public int getSize(Y y) {
        return 1;
    }

    protected void onItemEvicted(T t, Y y) {
    }

    public Y put(T t, Y y) {
        synchronized (this) {
            int size = getSize(y);
            long j = size;
            if (j >= this.maxSize) {
                onItemEvicted(t, y);
                return null;
            }
            if (y != null) {
                this.currentSize += j;
            }
            a<Y> put = this.cache.put(t, y == null ? null : new a<>(y, size));
            if (put != null) {
                this.currentSize -= put.f7353b;
                if (!put.f7352a.equals(y)) {
                    onItemEvicted(t, put.f7352a);
                }
            }
            evict();
            if (put == null) {
                return null;
            }
            return put.f7352a;
        }
    }

    public Y remove(T t) {
        synchronized (this) {
            a<Y> remove = this.cache.remove(t);
            if (remove == null) {
                return null;
            }
            this.currentSize -= remove.f7353b;
            return remove.f7352a;
        }
    }

    public void setSizeMultiplier(float f) {
        synchronized (this) {
            if (f >= BitmapDescriptorFactory.HUE_RED) {
                this.maxSize = Math.round(((float) this.initialMaxSize) * f);
                evict();
            } else {
                throw new IllegalArgumentException("Multiplier must be >= 0");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void trimToSize(long j) {
        synchronized (this) {
            while (this.currentSize > j) {
                Iterator<Map.Entry<T, a<Y>>> it2 = this.cache.entrySet().iterator();
                Map.Entry<T, a<Y>> next = it2.next();
                a<Y> value = next.getValue();
                this.currentSize -= value.f7353b;
                T key = next.getKey();
                it2.remove();
                onItemEvicted(key, value.f7352a);
            }
        }
    }
}
