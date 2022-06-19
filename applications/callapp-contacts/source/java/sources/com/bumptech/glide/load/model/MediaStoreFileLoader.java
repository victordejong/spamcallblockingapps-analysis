package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.data.p118a.C3665b;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p115f.C3616e;
import java.io.File;
import java.io.FileNotFoundException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MediaStoreFileLoader.class */
public final class MediaStoreFileLoader implements ModelLoader<Uri, File> {
    private final Context context;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MediaStoreFileLoader$Factory.class */
    public static final class Factory implements ModelLoaderFactory<Uri, File> {
        private final Context context;

        public Factory(Context context) {
            this.context = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader<Uri, File> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreFileLoader(this.context);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher.class */
    public static class FilePathFetcher implements AbstractC3673d<File> {
        private static final String[] PROJECTION = {"_data"};
        private final Context context;
        private final Uri uri;

        FilePathFetcher(Context context, Uri uri) {
            this.context = context;
            this.uri = uri;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public Class<File> getDataClass() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public EnumC3658a getDataSource() {
            return EnumC3658a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super File> abstractC3674a) {
            Cursor query = this.context.getContentResolver().query(this.uri, PROJECTION, null, null, null);
            String str = null;
            if (query != null) {
                str = null;
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (!TextUtils.isEmpty(str)) {
                abstractC3674a.onDataReady(new File(str));
                return;
            }
            abstractC3674a.onLoadFailed(new FileNotFoundException("Failed to find file path for: " + this.uri));
        }
    }

    public MediaStoreFileLoader(Context context) {
        this.context = context;
    }

    public final ModelLoader.LoadData<File> buildLoadData(Uri uri, int i, int i2, C3822h c3822h) {
        return new ModelLoader.LoadData<>(new C3616e(uri), new FilePathFetcher(this.context, uri));
    }

    public final boolean handles(Uri uri) {
        return C3665b.m37535a(uri);
    }
}
