package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool.class */
public final class LruArrayPool implements ArrayPool {
    private static final int DEFAULT_SIZE = 4194304;
    @VisibleForTesting
    static final int MAX_OVER_SIZE_MULTIPLE = 8;
    private static final int SINGLE_ARRAY_MAX_SIZE_DIVISOR = 2;
    private final Map<Class<?>, ArrayAdapterInterface<?>> adapters;
    private int currentSize;
    private final GroupedLinkedMap<Key, Object> groupedMap;
    private final KeyPool keyPool;
    private final int maxSize;
    private final Map<Class<?>, NavigableMap<Integer, Integer>> sortedSizes;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key.class */
    public static final class Key implements Poolable {
        private Class<?> arrayClass;
        private final KeyPool pool;
        int size;

        Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            boolean z = false;
            if (this.size == key.size) {
                z = false;
                if (this.arrayClass == key.arrayClass) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.size * 31) + (this.arrayClass != null ? this.arrayClass.hashCode() : 0);
        }

        void init(int i, Class<?> cls) {
            this.size = i;
            this.arrayClass = cls;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return "Key{size=" + this.size + "array=" + this.arrayClass + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool.class */
    public static final class KeyPool extends BaseKeyPool<Key> {
        KeyPool() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        public Key create() {
            return new Key(this);
        }

        Key get(int i, Class<?> cls) {
            Key key = get();
            key.init(i, cls);
            return key;
        }
    }

    @VisibleForTesting
    public LruArrayPool() {
        this.groupedMap = new GroupedLinkedMap<>();
        this.keyPool = new KeyPool();
        this.sortedSizes = new HashMap();
        this.adapters = new HashMap();
        this.maxSize = 4194304;
    }

    public LruArrayPool(int i) {
        this.groupedMap = new GroupedLinkedMap<>();
        this.keyPool = new KeyPool();
        this.sortedSizes = new HashMap();
        this.adapters = new HashMap();
        this.maxSize = i;
    }

    private void decrementArrayOfSize(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> sizesForAdapter = getSizesForAdapter(cls);
        Integer num = (Integer) sizesForAdapter.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        } else if (num.intValue() == 1) {
            sizesForAdapter.remove(Integer.valueOf(i));
        } else {
            sizesForAdapter.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    private void evict() {
        evictToSize(this.maxSize);
    }

    private void evictToSize(int i) {
        while (this.currentSize > i) {
            Object removeLast = this.groupedMap.removeLast();
            Preconditions.checkNotNull(removeLast);
            ArrayAdapterInterface adapterFromObject = getAdapterFromObject(removeLast);
            this.currentSize -= adapterFromObject.getArrayLength(removeLast) * adapterFromObject.getElementSizeInBytes();
            decrementArrayOfSize(adapterFromObject.getArrayLength(removeLast), removeLast.getClass());
            if (Log.isLoggable(adapterFromObject.getTag(), 2)) {
                Log.v(adapterFromObject.getTag(), "evicted: " + adapterFromObject.getArrayLength(removeLast));
            }
        }
    }

    private <T> ArrayAdapterInterface<T> getAdapterFromObject(T t) {
        return getAdapterFromType(t.getClass());
    }

    private <T> ArrayAdapterInterface<T> getAdapterFromType(Class<T> cls) {
        ArrayAdapterInterface<?> arrayAdapterInterface = this.adapters.get(cls);
        ByteArrayAdapter byteArrayAdapter = (ArrayAdapterInterface<T>) arrayAdapterInterface;
        if (arrayAdapterInterface == null) {
            if (cls.equals(int[].class)) {
                byteArrayAdapter = new IntegerArrayAdapter();
            } else if (cls.equals(byte[].class)) {
                byteArrayAdapter = new ByteArrayAdapter();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.adapters.put(cls, byteArrayAdapter);
        }
        return byteArrayAdapter;
    }

    @Nullable
    private <T> T getArrayForKey(Key key) {
        return (T) this.groupedMap.get(key);
    }

    private <T> T getForKey(Key key, Class<T> cls) {
        ArrayAdapterInterface<T> adapterFromType = getAdapterFromType(cls);
        T t = (T) getArrayForKey(key);
        if (t != null) {
            this.currentSize -= adapterFromType.getArrayLength(t) * adapterFromType.getElementSizeInBytes();
            decrementArrayOfSize(adapterFromType.getArrayLength(t), cls);
        }
        T t2 = t;
        if (t == null) {
            if (Log.isLoggable(adapterFromType.getTag(), 2)) {
                Log.v(adapterFromType.getTag(), "Allocated " + key.size + " bytes");
            }
            t2 = adapterFromType.newArray(key.size);
        }
        return t2;
    }

    private NavigableMap<Integer, Integer> getSizesForAdapter(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.sortedSizes.get(cls);
        NavigableMap<Integer, Integer> navigableMap2 = navigableMap;
        if (navigableMap == null) {
            navigableMap2 = new TreeMap<>();
            this.sortedSizes.put(cls, navigableMap2);
        }
        return navigableMap2;
    }

    private boolean isNoMoreThanHalfFull() {
        return this.currentSize == 0 || this.maxSize / this.currentSize >= 2;
    }

    private boolean isSmallEnoughForReuse(int i) {
        return i <= this.maxSize / 2;
    }

    private boolean mayFillRequest(int i, Integer num) {
        return num != null && (isNoMoreThanHalfFull() || num.intValue() <= i * 8);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public void clearMemory() {
        synchronized (this) {
            evictToSize(0);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public <T> T get(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            Integer ceilingKey = getSizesForAdapter(cls).ceilingKey(Integer.valueOf(i));
            t = (T) getForKey(mayFillRequest(i, ceilingKey) ? this.keyPool.get(ceilingKey.intValue(), cls) : this.keyPool.get(i, cls), cls);
        }
        return t;
    }

    int getCurrentSize() {
        int i = 0;
        for (Class<?> cls : this.sortedSizes.keySet()) {
            Iterator<Integer> it = this.sortedSizes.get(cls).keySet().iterator();
            int i2 = i;
            while (true) {
                i = i2;
                if (it.hasNext()) {
                    Integer next = it.next();
                    i2 += next.intValue() * ((Integer) this.sortedSizes.get(cls).get(next)).intValue() * getAdapterFromType(cls).getElementSizeInBytes();
                }
            }
        }
        return i;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public <T> T getExact(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            t = (T) getForKey(this.keyPool.get(i, cls), cls);
        }
        return t;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public <T> void put(T t) {
        synchronized (this) {
            Class<?> cls = t.getClass();
            ArrayAdapterInterface<T> adapterFromType = getAdapterFromType(cls);
            int arrayLength = adapterFromType.getArrayLength(t);
            int elementSizeInBytes = adapterFromType.getElementSizeInBytes() * arrayLength;
            if (isSmallEnoughForReuse(elementSizeInBytes)) {
                Key key = this.keyPool.get(arrayLength, cls);
                this.groupedMap.put(key, t);
                NavigableMap<Integer, Integer> sizesForAdapter = getSizesForAdapter(cls);
                Integer num = (Integer) sizesForAdapter.get(Integer.valueOf(key.size));
                int i = key.size;
                int i2 = 1;
                if (num != null) {
                    i2 = 1 + num.intValue();
                }
                sizesForAdapter.put(Integer.valueOf(i), Integer.valueOf(i2));
                this.currentSize += elementSizeInBytes;
                evict();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    @Deprecated
    public <T> void put(T t, Class<T> cls) {
        put(t);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public void trimMemory(int i) {
        synchronized (this) {
            if (i >= 40) {
                clearMemory();
            } else if (i >= 20 || i == 15) {
                evictToSize(this.maxSize / 2);
            }
        }
    }
}
