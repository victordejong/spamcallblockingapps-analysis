package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.f.e;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/FileLoader.class */
public class FileLoader<Data> implements ModelLoader<File, Data> {
    private static final String TAG = "FileLoader";
    private final FileOpener<Data> fileOpener;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/FileLoader$Factory.class */
    public static class Factory<Data> implements ModelLoaderFactory<File, Data> {
        private final FileOpener<Data> opener;

        public Factory(FileOpener<Data> fileOpener) {
            this.opener = fileOpener;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader<File, Data> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new FileLoader(this.opener);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/FileLoader$FileDescriptorFactory.class */
    public static class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory() {
            super(new FileOpener<ParcelFileDescriptor>() { // from class: com.bumptech.glide.load.model.FileLoader.FileDescriptorFactory.1
                public void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }

                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                public Class<ParcelFileDescriptor> getDataClass() {
                    return ParcelFileDescriptor.class;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                public ParcelFileDescriptor open(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, 268435456);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/FileLoader$FileFetcher.class */
    public static final class FileFetcher<Data> implements d<Data> {
        private Data data;
        private final File file;
        private final FileOpener<Data> opener;

        FileFetcher(File file, FileOpener<Data> fileOpener) {
            this.file = file;
            this.opener = fileOpener;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cleanup() {
            Data data = this.data;
            if (data != null) {
                try {
                    this.opener.close(data);
                } catch (IOException e) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Data> getDataClass() {
            return this.opener.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public final a getDataSource() {
            return a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public final void loadData(h hVar, d.a<? super Data> aVar) {
            try {
                Data open = this.opener.open(this.file);
                this.data = open;
                aVar.onDataReady(open);
            } catch (FileNotFoundException e) {
                Log.isLoggable(FileLoader.TAG, 3);
                aVar.onLoadFailed(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/FileLoader$FileOpener.class */
    public interface FileOpener<Data> {
        void close(Data data) throws IOException;

        Class<Data> getDataClass();

        Data open(File file) throws FileNotFoundException;
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/FileLoader$StreamFactory.class */
    public static class StreamFactory extends Factory<InputStream> {
        public StreamFactory() {
            super(new FileOpener<InputStream>() { // from class: com.bumptech.glide.load.model.FileLoader.StreamFactory.1
                public void close(InputStream inputStream) throws IOException {
                    inputStream.close();
                }

                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                public Class<InputStream> getDataClass() {
                    return InputStream.class;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
                public InputStream open(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }
            });
        }
    }

    public FileLoader(FileOpener<Data> fileOpener) {
        this.fileOpener = fileOpener;
    }

    public ModelLoader.LoadData<Data> buildLoadData(File file, int i, int i2, com.bumptech.glide.load.h hVar) {
        return new ModelLoader.LoadData<>(new e(file), new FileFetcher(file, this.fileOpener));
    }

    public boolean handles(File file) {
        return true;
    }
}
