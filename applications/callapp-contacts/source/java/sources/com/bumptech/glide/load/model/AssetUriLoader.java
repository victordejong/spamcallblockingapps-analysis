package com.bumptech.glide.load.model;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.data.C3681h;
import com.bumptech.glide.load.data.C3689m;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p115f.C3616e;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/AssetUriLoader.class */
public class AssetUriLoader<Data> implements ModelLoader<Uri, Data> {
    private static final String ASSET_PATH_SEGMENT = "android_asset";
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final int ASSET_PREFIX_LENGTH = 22;
    private final AssetManager assetManager;
    private final AssetFetcherFactory<Data> factory;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory.class */
    public interface AssetFetcherFactory<Data> {
        AbstractC3673d<Data> buildFetcher(AssetManager assetManager, String str);
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory.class */
    public static class FileDescriptorFactory implements AssetFetcherFactory<ParcelFileDescriptor>, ModelLoaderFactory<Uri, ParcelFileDescriptor> {
        private final AssetManager assetManager;

        public FileDescriptorFactory(AssetManager assetManager) {
            this.assetManager = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, ParcelFileDescriptor> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new AssetUriLoader(this.assetManager, this);
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public AbstractC3673d<ParcelFileDescriptor> buildFetcher(AssetManager assetManager, String str) {
            return new C3681h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/AssetUriLoader$StreamFactory.class */
    public static class StreamFactory implements AssetFetcherFactory<InputStream>, ModelLoaderFactory<Uri, InputStream> {
        private final AssetManager assetManager;

        public StreamFactory(AssetManager assetManager) {
            this.assetManager = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new AssetUriLoader(this.assetManager, this);
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public AbstractC3673d<InputStream> buildFetcher(AssetManager assetManager, String str) {
            return new C3689m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public AssetUriLoader(AssetManager assetManager, AssetFetcherFactory<Data> assetFetcherFactory) {
        this.assetManager = assetManager;
        this.factory = assetFetcherFactory;
    }

    public ModelLoader.LoadData<Data> buildLoadData(Uri uri, int i, int i2, C3822h c3822h) {
        return new ModelLoader.LoadData<>(new C3616e(uri), this.factory.buildFetcher(this.assetManager, uri.toString().substring(ASSET_PREFIX_LENGTH)));
    }

    public boolean handles(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && ASSET_PATH_SEGMENT.equals(uri.getPathSegments().get(0));
    }
}
