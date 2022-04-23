package com.bumptech.glide.load.model;

import android.net.Uri;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.model.ModelLoader;
import com.mopub.common.Constants;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UrlUriLoader.class */
public class UrlUriLoader<Data> implements ModelLoader<Uri, Data> {
    private static final Set<String> SCHEMES = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", Constants.HTTPS)));
    private final ModelLoader<GlideUrl, Data> urlLoader;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UrlUriLoader$StreamFactory.class */
    public static class StreamFactory implements ModelLoaderFactory<Uri, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UrlUriLoader(multiModelLoaderFactory.build(GlideUrl.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public UrlUriLoader(ModelLoader<GlideUrl, Data> modelLoader) {
        this.urlLoader = modelLoader;
    }

    public ModelLoader.LoadData<Data> buildLoadData(Uri uri, int i, int i2, h hVar) {
        return this.urlLoader.buildLoadData(new GlideUrl(uri.toString()), i, i2, hVar);
    }

    public boolean handles(Uri uri) {
        return SCHEMES.contains(uri.getScheme());
    }
}
