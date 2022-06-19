package com.bumptech.glide.p116g;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.g.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/g.class */
public class C3639g<T, Y> {
    private final Map<T, C3640a<Y>> cache = new LinkedHashMap(100, 0.75f, true);
    private long currentSize;
    private final long initialMaxSize;
    private long maxSize;

    /* renamed from: com.bumptech.glide.g.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/g$a.class */
    public static final class C3640a<Y> {

        /* renamed from: a */
        final Y f13749a;

        /* renamed from: b */
        final int f13750b;

        C3640a(Y y, int i) {
            this.f13749a = y;
            this.f13750b = i;
        }
    }

    public C3639g(long j) {
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
            C3640a<Y> c3640a = this.cache.get(t);
            if (c3640a != null) {
                return c3640a.f13749a;
            }
            return null;
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
            C3640a<Y> put = this.cache.put(t, y == null ? null : new C3640a<>(y, size));
            if (put != null) {
                this.currentSize -= put.f13750b;
                if (!put.f13749a.equals(y)) {
                    onItemEvicted(t, put.f13749a);
                }
            }
            evict();
            if (put == null) {
                return null;
            }
            return put.f13749a;
        }
    }

    public Y remove(T t) {
        synchronized (this) {
            C3640a<Y> remove = this.cache.remove(t);
            if (remove == null) {
                return null;
            }
            this.currentSize -= remove.f13750b;
            return remove.f13749a;
        }
    }

    public void setSizeMultiplier(float f) {
        synchronized (this) {
            if (f < BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("Multiplier must be >= 0");
            }
            this.maxSize = Math.round(((float) this.initialMaxSize) * f);
            evict();
        }
    }

    public void trimToSize(long j) {
        synchronized (this) {
            while (this.currentSize > j) {
                Iterator<Map.Entry<T, C3640a<Y>>> it2 = this.cache.entrySet().iterator();
                Map.Entry<T, C3640a<Y>> next = it2.next();
                C3640a<Y> value = next.getValue();
                this.currentSize -= value.f13750b;
                T key = next.getKey();
                it2.remove();
                onItemEvicted(key, value.f13749a);
            }
        }
    }
}
