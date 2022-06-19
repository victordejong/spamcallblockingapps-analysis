package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p115f.C3616e;
import com.bumptech.glide.p116g.C3618a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferFileLoader.class */
public class ByteBufferFileLoader implements ModelLoader<File, ByteBuffer> {
    private static final String TAG = "ByteBufferFileLoader";

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher.class */
    public static final class ByteBufferFetcher implements AbstractC3673d<ByteBuffer> {
        private final File file;

        ByteBufferFetcher(File file) {
            this.file = file;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final EnumC3658a getDataSource() {
            return EnumC3658a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super ByteBuffer> abstractC3674a) {
            try {
                abstractC3674a.onDataReady(C3618a.m37615a(this.file));
            } catch (IOException e) {
                Log.isLoggable(ByteBufferFileLoader.TAG, 3);
                abstractC3674a.onLoadFailed(e);
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

    public ModelLoader.LoadData<ByteBuffer> buildLoadData(File file, int i, int i2, C3822h c3822h) {
        return new ModelLoader.LoadData<>(new C3616e(file), new ByteBufferFetcher(file));
    }

    public boolean handles(File file) {
        return true;
    }
}
