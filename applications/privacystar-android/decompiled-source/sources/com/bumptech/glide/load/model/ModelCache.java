package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelCache.class */
public class ModelCache<A, B> {
    private static final int DEFAULT_SIZE = 250;
    private final LruCache<ModelKey<A>, B> cache;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelCache$ModelKey.class */
    public static final class ModelKey<A> {
        private static final Queue<ModelKey<?>> KEY_QUEUE = Util.createQueue(0);
        private int height;
        private A model;
        private int width;

        private ModelKey() {
        }

        static <A> ModelKey<A> get(A a, int i, int i2) {
            ModelKey<?> poll;
            synchronized (KEY_QUEUE) {
                poll = KEY_QUEUE.poll();
            }
            ModelKey<A> modelKey = (ModelKey<A>) poll;
            if (poll == null) {
                modelKey = new ModelKey<>();
            }
            modelKey.init(a, i, i2);
            return modelKey;
        }

        private void init(A a, int i, int i2) {
            this.model = a;
            this.width = i;
            this.height = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ModelKey)) {
                return false;
            }
            ModelKey modelKey = (ModelKey) obj;
            boolean z = false;
            if (this.width == modelKey.width) {
                z = false;
                if (this.height == modelKey.height) {
                    z = false;
                    if (this.model.equals(modelKey.model)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (((this.height * 31) + this.width) * 31) + this.model.hashCode();
        }

        public void release() {
            synchronized (KEY_QUEUE) {
                KEY_QUEUE.offer(this);
            }
        }
    }

    public ModelCache() {
        this(250L);
    }

    public ModelCache(long j) {
        this.cache = new LruCache<ModelKey<A>, B>(j) { // from class: com.bumptech.glide.load.model.ModelCache.1
            protected void onItemEvicted(@NonNull ModelKey<A> modelKey, @Nullable B b) {
                modelKey.release();
            }

            @Override // com.bumptech.glide.util.LruCache
            protected /* bridge */ /* synthetic */ void onItemEvicted(@NonNull Object obj, @Nullable Object obj2) {
                onItemEvicted((ModelKey) ((ModelKey) obj), (ModelKey<A>) obj2);
            }
        };
    }

    public void clear() {
        this.cache.clearMemory();
    }

    @Nullable
    public B get(A a, int i, int i2) {
        ModelKey<A> modelKey = ModelKey.get(a, i, i2);
        B b = this.cache.get(modelKey);
        modelKey.release();
        return b;
    }

    public void put(A a, int i, int i2, B b) {
        this.cache.put(ModelKey.get(a, i, i2), b);
    }
}
