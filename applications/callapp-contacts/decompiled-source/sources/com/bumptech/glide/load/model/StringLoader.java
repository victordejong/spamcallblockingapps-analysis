package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StringLoader.class */
public class StringLoader<Data> implements ModelLoader<String, Data> {
    private final ModelLoader<Uri, Data> uriLoader;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory.class */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader<String, AssetFileDescriptor> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new StringLoader(multiModelLoaderFactory.build(Uri.class, AssetFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StringLoader$FileDescriptorFactory.class */
    public static class FileDescriptorFactory implements ModelLoaderFactory<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<String, ParcelFileDescriptor> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new StringLoader(multiModelLoaderFactory.build(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/StringLoader$StreamFactory.class */
    public static class StreamFactory implements ModelLoaderFactory<String, InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<String, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new StringLoader(multiModelLoaderFactory.build(Uri.class, InputStream.class));
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public StringLoader(ModelLoader<Uri, Data> modelLoader) {
        this.uriLoader = modelLoader;
    }

    private static Uri parseUri(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            uri = toFileUri(str);
        } else {
            Uri parse = Uri.parse(str);
            uri = parse.getScheme() == null ? toFileUri(str) : parse;
        }
        return uri;
    }

    private static Uri toFileUri(String str) {
        return Uri.fromFile(new File(str));
    }

    public ModelLoader.LoadData<Data> buildLoadData(String str, int i, int i2, h hVar) {
        Uri parseUri = parseUri(str);
        if (parseUri == null || !this.uriLoader.handles(parseUri)) {
            return null;
        }
        return this.uriLoader.buildLoadData(parseUri, i, i2, hVar);
    }

    public boolean handles(String str) {
        return true;
    }
}
