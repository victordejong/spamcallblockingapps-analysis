package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import java.util.NavigableMap;
@RequiresApi(19)
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy.class */
final class SizeStrategy implements LruPoolStrategy {
    private static final int MAX_SIZE_MULTIPLE = 8;
    private final KeyPool keyPool = new KeyPool();
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap<>();
    private final NavigableMap<Integer, Integer> sortedSizes = new PrettyPrintTreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key.class */
    public static final class Key implements Poolable {
        private final KeyPool pool;
        int size;

        Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof Key)) {
                return false;
            }
            if (this.size == ((Key) obj).size) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return this.size;
        }

        public void init(int i) {
            this.size = i;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return SizeStrategy.getBitmapString(this.size);
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool.class */
    static class KeyPool extends BaseKeyPool<Key> {
        KeyPool() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        public Key create() {
            return new Key(this);
        }

        public Key get(int i) {
            Key key = (Key) super.get();
            key.init(i);
            return key;
        }
    }

    SizeStrategy() {
    }

    private void decrementBitmapOfSize(Integer num) {
        Integer num2 = (Integer) this.sortedSizes.get(num);
        if (num2.intValue() == 1) {
            this.sortedSizes.remove(num);
        } else {
            this.sortedSizes.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    static String getBitmapString(int i) {
        return "[" + i + "]";
    }

    private static String getBitmapString(Bitmap bitmap) {
        return getBitmapString(Util.getBitmapByteSize(bitmap));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        int bitmapByteSize = Util.getBitmapByteSize(i, i2, config);
        Key key = this.keyPool.get(bitmapByteSize);
        Integer ceilingKey = this.sortedSizes.ceilingKey(Integer.valueOf(bitmapByteSize));
        Key key2 = key;
        if (ceilingKey != null) {
            key2 = key;
            if (ceilingKey.intValue() != bitmapByteSize) {
                key2 = key;
                if (ceilingKey.intValue() <= bitmapByteSize * 8) {
                    this.keyPool.offer(key);
                    key2 = this.keyPool.get(ceilingKey.intValue());
                }
            }
        }
        Bitmap bitmap = this.groupedMap.get(key2);
        if (bitmap != null) {
            bitmap.reconfigure(i, i2, config);
            decrementBitmapOfSize(ceilingKey);
        }
        return bitmap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return getBitmapString(Util.getBitmapByteSize(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(Bitmap bitmap) {
        return getBitmapString(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void put(Bitmap bitmap) {
        Key key = this.keyPool.get(Util.getBitmapByteSize(bitmap));
        this.groupedMap.put(key, bitmap);
        Integer num = (Integer) this.sortedSizes.get(Integer.valueOf(key.size));
        NavigableMap<Integer, Integer> navigableMap = this.sortedSizes;
        int i = key.size;
        int i2 = 1;
        if (num != null) {
            i2 = 1 + num.intValue();
        }
        navigableMap.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap removeLast() {
        Bitmap removeLast = this.groupedMap.removeLast();
        if (removeLast != null) {
            decrementBitmapOfSize(Integer.valueOf(Util.getBitmapByteSize(removeLast)));
        }
        return removeLast;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.groupedMap + "\n  SortedSizes" + this.sortedSizes;
    }
}
