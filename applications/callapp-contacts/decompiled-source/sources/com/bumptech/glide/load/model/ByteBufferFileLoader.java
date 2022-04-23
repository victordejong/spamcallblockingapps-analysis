package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.f.e;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferFileLoader.class */
public class ByteBufferFileLoader implements ModelLoader<File, ByteBuffer> {
    private static final String TAG = "ByteBufferFileLoader";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher.class */
    public static final class ByteBufferFetcher implements d<ByteBuffer> {
        private final File file;

        ByteBufferFetcher(File file) {
            this.file = file;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final a getDataSource() {
            return a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void loadData(h hVar, d.a<? super ByteBuffer> aVar) {
            try {
                aVar.onDataReady(com.bumptech.glide.g.a.a(this.file));
            } catch (IOException e) {
                Log.isLoggable(ByteBufferFileLoader.TAG, 3);
                aVar.onLoadFailed(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferFileLoader$Factory.class */
    public static class Factory implements ModelLoaderFactory<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<File, ByteBuffer> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteBufferFileLoader();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public ModelLoader.LoadData<ByteBuffer> buildLoadData(File file, int i, int i2, com.bumptech.glide.load.h hVar) {
        return new ModelLoader.LoadData<>(new e(file), new ByteBufferFetcher(file));
    }

    public boolean handles(File file) {
        return true;
    }
}
