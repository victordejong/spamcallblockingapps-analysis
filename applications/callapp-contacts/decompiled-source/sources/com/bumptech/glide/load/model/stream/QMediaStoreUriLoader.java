package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.f.e;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.a.b;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/QMediaStoreUriLoader.class */
public final class QMediaStoreUriLoader<DataT> implements ModelLoader<Uri, DataT> {
    private final Context context;
    private final Class<DataT> dataClass;
    private final ModelLoader<File, DataT> fileDelegate;
    private final ModelLoader<Uri, DataT> uriDelegate;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/QMediaStoreUriLoader$Factory.class */
    static abstract class Factory<DataT> implements ModelLoaderFactory<Uri, DataT> {
        private final Context context;
        private final Class<DataT> dataClass;

        Factory(Context context, Class<DataT> cls) {
            this.context = context;
            this.dataClass = cls;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader<Uri, DataT> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new QMediaStoreUriLoader(this.context, multiModelLoaderFactory.build(File.class, this.dataClass), multiModelLoaderFactory.build(Uri.class, this.dataClass), this.dataClass);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory.class */
    public static final class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory.class */
    public static final class InputStreamFactory extends Factory<InputStream> {
        public InputStreamFactory(Context context) {
            super(context, InputStream.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/QMediaStoreUriLoader$QMediaStoreUriFetcher.class */
    public static final class QMediaStoreUriFetcher<DataT> implements d<DataT> {
        private static final String[] PROJECTION = {"_data"};
        private final Context context;
        private final Class<DataT> dataClass;
        private volatile d<DataT> delegate;
        private final ModelLoader<File, DataT> fileDelegate;
        private final int height;
        private volatile boolean isCancelled;
        private final h options;
        private final Uri uri;
        private final ModelLoader<Uri, DataT> uriDelegate;
        private final int width;

        QMediaStoreUriFetcher(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Uri uri, int i, int i2, h hVar, Class<DataT> cls) {
            this.context = context.getApplicationContext();
            this.fileDelegate = modelLoader;
            this.uriDelegate = modelLoader2;
            this.uri = uri;
            this.width = i;
            this.height = i2;
            this.options = hVar;
            this.dataClass = cls;
        }

        private ModelLoader.LoadData<DataT> buildDelegateData() throws FileNotFoundException {
            if (Environment.isExternalStorageLegacy()) {
                return this.fileDelegate.buildLoadData(queryForFilePath(this.uri), this.width, this.height, this.options);
            }
            return this.uriDelegate.buildLoadData(isAccessMediaLocationGranted() ? MediaStore.setRequireOriginal(this.uri) : this.uri, this.width, this.height, this.options);
        }

        private d<DataT> buildDelegateFetcher() throws FileNotFoundException {
            ModelLoader.LoadData<DataT> buildDelegateData = buildDelegateData();
            if (buildDelegateData != null) {
                return buildDelegateData.fetcher;
            }
            return null;
        }

        private boolean isAccessMediaLocationGranted() {
            return this.context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        private File queryForFilePath(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor query = this.context.getContentResolver().query(uri, PROJECTION, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    throw new FileNotFoundException("Failed to media store entry for: ".concat(String.valueOf(uri)));
                }
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                if (!TextUtils.isEmpty(string)) {
                    File file = new File(string);
                    if (query != null) {
                        query.close();
                    }
                    return file;
                }
                throw new FileNotFoundException("File path was empty in media store for: ".concat(String.valueOf(uri)));
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
            this.isCancelled = true;
            d<DataT> dVar = this.delegate;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cleanup() {
            d<DataT> dVar = this.delegate;
            if (dVar != null) {
                dVar.cleanup();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<DataT> getDataClass() {
            return this.dataClass;
        }

        @Override // com.bumptech.glide.load.data.d
        public final a getDataSource() {
            return a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void loadData(com.bumptech.glide.h hVar, d.a<? super DataT> aVar) {
            try {
                d<DataT> buildDelegateFetcher = buildDelegateFetcher();
                if (buildDelegateFetcher == null) {
                    aVar.onLoadFailed(new IllegalArgumentException("Failed to build fetcher for: " + this.uri));
                    return;
                }
                this.delegate = buildDelegateFetcher;
                if (this.isCancelled) {
                    cancel();
                } else {
                    buildDelegateFetcher.loadData(hVar, aVar);
                }
            } catch (FileNotFoundException e) {
                aVar.onLoadFailed(e);
            }
        }
    }

    QMediaStoreUriLoader(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Class<DataT> cls) {
        this.context = context.getApplicationContext();
        this.fileDelegate = modelLoader;
        this.uriDelegate = modelLoader2;
        this.dataClass = cls;
    }

    public final ModelLoader.LoadData<DataT> buildLoadData(Uri uri, int i, int i2, h hVar) {
        return new ModelLoader.LoadData<>(new e(uri), new QMediaStoreUriFetcher(this.context, this.fileDelegate, this.uriDelegate, uri, i, i2, hVar, this.dataClass));
    }

    public final boolean handles(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && b.a(uri);
    }
}
