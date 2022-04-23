package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.f.e;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.a.b;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.ModelLoader;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher.class */
    public static class FilePathFetcher implements d<File> {
        private static final String[] PROJECTION = {"_data"};
        private final Context context;
        private final Uri uri;

        FilePathFetcher(Context context, Uri uri) {
            this.context = context;
            this.uri = uri;
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<File> getDataClass() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public a getDataSource() {
            return a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void loadData(h hVar, d.a<? super File> aVar) {
            Cursor query = this.context.getContentResolver().query(this.uri, PROJECTION, null, null, null);
            String str = null;
            str = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(str)) {
                aVar.onLoadFailed(new FileNotFoundException("Failed to find file path for: " + this.uri));
                return;
            }
            aVar.onDataReady(new File(str));
        }
    }

    public MediaStoreFileLoader(Context context) {
        this.context = context;
    }

    public final ModelLoader.LoadData<File> buildLoadData(Uri uri, int i, int i2, com.bumptech.glide.load.h hVar) {
        return new ModelLoader.LoadData<>(new e(uri), new FilePathFetcher(this.context, uri));
    }

    public final boolean handles(Uri uri) {
        return b.a(uri);
    }
}
