package com.bumptech.glide.load.model;

import com.bumptech.glide.g.g;
import com.bumptech.glide.g.k;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelCache.class */
public class ModelCache<A, B> {
    private static final int DEFAULT_SIZE = 250;
    private final g<ModelKey<A>, B> cache;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelCache$ModelKey.class */
    public static final class ModelKey<A> {
        private static final Queue<ModelKey<?>> KEY_QUEUE = k.a(0);
        private int height;
        private A model;
        private int width;

        private ModelKey() {
        }

        static <A> ModelKey<A> get(A a2, int i, int i2) {
            ModelKey<?> poll;
            Queue<ModelKey<?>> queue = KEY_QUEUE;
            synchronized (queue) {
                poll = queue.poll();
            }
            ModelKey<A> modelKey = (ModelKey<A>) poll;
            if (poll == null) {
                modelKey = new ModelKey<>();
            }
            modelKey.init(a2, i, i2);
            return modelKey;
        }

        private void init(A a2, int i, int i2) {
            this.model = a2;
            this.width = i;
            this.height = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ModelKey)) {
                return false;
            }
            ModelKey modelKey = (ModelKey) obj;
            return this.width == modelKey.width && this.height == modelKey.height && this.model.equals(modelKey.model);
        }

        public final int hashCode() {
            return (((this.height * 31) + this.width) * 31) + this.model.hashCode();
        }

        public final void release() {
            Queue<ModelKey<?>> queue = KEY_QUEUE;
            synchronized (queue) {
                queue.offer(this);
            }
        }
    }

    public ModelCache() {
        this(250L);
    }

    public ModelCache(long j) {
        this.cache = new g<ModelKey<A>, B>(j) { // from class: com.bumptech.glide.load.model.ModelCache.1
            protected void onItemEvicted(ModelKey<A> modelKey, B b2) {
                modelKey.release();
            }

            @Override // com.bumptech.glide.g.g
            public /* bridge */ /* synthetic */ void onItemEvicted(Object obj, Object obj2) {
                onItemEvicted((ModelKey) ((ModelKey) obj), (ModelKey<A>) obj2);
            }
        };
    }

    public void clear() {
        this.cache.clearMemory();
    }

    public B get(A a2, int i, int i2) {
        ModelKey<A> modelKey = ModelKey.get(a2, i, i2);
        B b2 = this.cache.get(modelKey);
        modelKey.release();
        return b2;
    }

    public void put(A a2, int i, int i2, B b2) {
        this.cache.put(ModelKey.get(a2, i, i2), b2);
    }
}
