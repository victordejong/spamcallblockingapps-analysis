package com.bumptech.glide.load.model;

import com.bumptech.glide.p116g.C3639g;
import com.bumptech.glide.p116g.C3644k;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelCache.class */
public class ModelCache<A, B> {
    private static final int DEFAULT_SIZE = 250;
    private final C3639g<ModelKey<A>, B> cache;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelCache$ModelKey.class */
    public static final class ModelKey<A> {
        private static final Queue<ModelKey<?>> KEY_QUEUE = C3644k.m37582a(0);
        private int height;
        private A model;
        private int width;

        private ModelKey() {
        }

        static <A> ModelKey<A> get(A a, int i, int i2) {
            ModelKey<?> poll;
            Queue<ModelKey<?>> queue = KEY_QUEUE;
            synchronized (queue) {
                poll = queue.poll();
            }
            ModelKey<?> modelKey = poll;
            if (poll == null) {
                modelKey = new ModelKey<>();
            }
            modelKey.init(a, i, i2);
            return (ModelKey<A>) modelKey;
        }

        private void init(A a, int i, int i2) {
            this.model = a;
            this.width = i;
            this.height = i2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ModelKey) {
                ModelKey modelKey = (ModelKey) obj;
                return this.width == modelKey.width && this.height == modelKey.height && this.model.equals(modelKey.model);
            }
            return false;
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
        this.cache = new C3639g<ModelKey<A>, B>(j) { // from class: com.bumptech.glide.load.model.ModelCache.1
            protected void onItemEvicted(ModelKey<A> modelKey, B b) {
                modelKey.release();
            }

            @Override // com.bumptech.glide.p116g.C3639g
            public /* bridge */ /* synthetic */ void onItemEvicted(Object obj, Object obj2) {
                onItemEvicted((ModelKey) ((ModelKey) obj), (ModelKey<A>) obj2);
            }
        };
    }

    public void clear() {
        this.cache.clearMemory();
    }

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
