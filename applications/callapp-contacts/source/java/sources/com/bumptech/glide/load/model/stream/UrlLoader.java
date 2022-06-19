package com.bumptech.glide.load.model.stream;

import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/UrlLoader.class */
public class UrlLoader implements ModelLoader<URL, InputStream> {
    private final ModelLoader<GlideUrl, InputStream> glideUrlLoader;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/UrlLoader$StreamFactory.class */
    public static class StreamFactory implements ModelLoaderFactory<URL, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<URL, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UrlLoader(multiModelLoaderFactory.build(GlideUrl.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public UrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader) {
        this.glideUrlLoader = modelLoader;
    }

    public ModelLoader.LoadData<InputStream> buildLoadData(URL url, int i, int i2, C3822h c3822h) {
        return this.glideUrlLoader.buildLoadData(new GlideUrl(url), i, i2, c3822h);
    }

    public boolean handles(URL url) {
        return true;
    }
}
