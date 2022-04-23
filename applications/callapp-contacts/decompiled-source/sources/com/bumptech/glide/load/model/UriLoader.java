package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.f.e;
import com.bumptech.glide.load.data.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.i;
import com.bumptech.glide.load.data.n;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.model.ModelLoader;
import com.mopub.common.Constants;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UriLoader.class */
public class UriLoader<Data> implements ModelLoader<Uri, Data> {
    private static final Set<String> SCHEMES = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", Constants.VAST_TRACKER_CONTENT)));
    private final LocalUriFetcherFactory<Data> factory;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory.class */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor>, LocalUriFetcherFactory<AssetFileDescriptor> {
        private final ContentResolver contentResolver;

        public AssetFileDescriptorFactory(ContentResolver contentResolver) {
            this.contentResolver = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public final d<AssetFileDescriptor> build(Uri uri) {
            return new a(this.contentResolver, uri);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader<Uri, AssetFileDescriptor> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UriLoader$FileDescriptorFactory.class */
    public static class FileDescriptorFactory implements ModelLoaderFactory<Uri, ParcelFileDescriptor>, LocalUriFetcherFactory<ParcelFileDescriptor> {
        private final ContentResolver contentResolver;

        public FileDescriptorFactory(ContentResolver contentResolver) {
            this.contentResolver = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public d<ParcelFileDescriptor> build(Uri uri) {
            return new i(this.contentResolver, uri);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, ParcelFileDescriptor> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UriLoader$LocalUriFetcherFactory.class */
    public interface LocalUriFetcherFactory<Data> {
        d<Data> build(Uri uri);
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UriLoader$StreamFactory.class */
    public static class StreamFactory implements ModelLoaderFactory<Uri, InputStream>, LocalUriFetcherFactory<InputStream> {
        private final ContentResolver contentResolver;

        public StreamFactory(ContentResolver contentResolver) {
            this.contentResolver = contentResolver;
        }

        @Override // com.bumptech.glide.load.model.UriLoader.LocalUriFetcherFactory
        public d<InputStream> build(Uri uri) {
            return new n(this.contentResolver, uri);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new UriLoader(this);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public UriLoader(LocalUriFetcherFactory<Data> localUriFetcherFactory) {
        this.factory = localUriFetcherFactory;
    }

    public ModelLoader.LoadData<Data> buildLoadData(Uri uri, int i, int i2, h hVar) {
        return new ModelLoader.LoadData<>(new e(uri), this.factory.build(uri));
    }

    public boolean handles(Uri uri) {
        return SCHEMES.contains(uri.getScheme());
    }
}
