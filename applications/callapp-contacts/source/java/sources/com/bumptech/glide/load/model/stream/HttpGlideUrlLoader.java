package com.bumptech.glide.load.model.stream;

import com.bumptech.glide.load.C3819g;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.data.C3683j;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.mopub.volley.DefaultRetryPolicy;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/HttpGlideUrlLoader.class */
public class HttpGlideUrlLoader implements ModelLoader<GlideUrl, InputStream> {
    public static final C3819g<Integer> TIMEOUT = C3819g.m37324a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf((int) DefaultRetryPolicy.DEFAULT_TIMEOUT_MS));
    private final ModelCache<GlideUrl, GlideUrl> modelCache;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory.class */
    public static class Factory implements ModelLoaderFactory<GlideUrl, InputStream> {
        private final ModelCache<GlideUrl, GlideUrl> modelCache = new ModelCache<>(500);

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<GlideUrl, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new HttpGlideUrlLoader(this.modelCache);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public HttpGlideUrlLoader() {
        this(null);
    }

    public HttpGlideUrlLoader(ModelCache<GlideUrl, GlideUrl> modelCache) {
        this.modelCache = modelCache;
    }

    public ModelLoader.LoadData<InputStream> buildLoadData(GlideUrl glideUrl, int i, int i2, C3822h c3822h) {
        ModelCache<GlideUrl, GlideUrl> modelCache = this.modelCache;
        GlideUrl glideUrl2 = glideUrl;
        if (modelCache != null) {
            glideUrl2 = modelCache.get(glideUrl, 0, 0);
            if (glideUrl2 == null) {
                this.modelCache.put(glideUrl, 0, 0, glideUrl);
                glideUrl2 = glideUrl;
            }
        }
        return new ModelLoader.LoadData<>(glideUrl2, new C3683j(glideUrl2, ((Integer) c3822h.m37322a(TIMEOUT)).intValue()));
    }

    public boolean handles(GlideUrl glideUrl) {
        return true;
    }
}
