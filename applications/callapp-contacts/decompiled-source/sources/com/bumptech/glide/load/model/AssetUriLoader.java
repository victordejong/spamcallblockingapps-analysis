package com.bumptech.glide.load.model;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.f.e;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.h;
import com.bumptech.glide.load.data.m;
import com.bumptech.glide.load.model.ModelLoader;
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
        d<Data> buildFetcher(AssetManager assetManager, String str);
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
        public d<ParcelFileDescriptor> buildFetcher(AssetManager assetManager, String str) {
            return new h(assetManager, str);
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
        public d<InputStream> buildFetcher(AssetManager assetManager, String str) {
            return new m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public AssetUriLoader(AssetManager assetManager, AssetFetcherFactory<Data> assetFetcherFactory) {
        this.assetManager = assetManager;
        this.factory = assetFetcherFactory;
    }

    public ModelLoader.LoadData<Data> buildLoadData(Uri uri, int i, int i2, com.bumptech.glide.load.h hVar) {
        return new ModelLoader.LoadData<>(new e(uri), this.factory.buildFetcher(this.assetManager, uri.toString().substring(ASSET_PREFIX_LENGTH)));
    }

    public boolean handles(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && ASSET_PATH_SEGMENT.equals(uri.getPathSegments().get(0));
    }
}
