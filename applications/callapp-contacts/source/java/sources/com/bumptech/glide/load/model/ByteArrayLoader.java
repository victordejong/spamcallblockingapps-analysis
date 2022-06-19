package com.bumptech.glide.load.model;

import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p115f.C3616e;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteArrayLoader.class */
public class ByteArrayLoader<Data> implements ModelLoader<byte[], Data> {
    private final Converter<Data> converter;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory.class */
    public static class ByteBufferFactory implements ModelLoaderFactory<byte[], ByteBuffer> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<byte[], ByteBuffer> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteArrayLoader(new Converter<ByteBuffer>() { // from class: com.bumptech.glide.load.model.ByteArrayLoader.ByteBufferFactory.1
                @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
                public ByteBuffer convert(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }

                @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
                public Class<ByteBuffer> getDataClass() {
                    return ByteBuffer.class;
                }
            });
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteArrayLoader$Converter.class */
    public interface Converter<Data> {
        Data convert(byte[] bArr);

        Class<Data> getDataClass();
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteArrayLoader$Fetcher.class */
    public static class Fetcher<Data> implements AbstractC3673d<Data> {
        private final Converter<Data> converter;
        private final byte[] model;

        Fetcher(byte[] bArr, Converter<Data> converter) {
            this.model = bArr;
            this.converter = converter;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public Class<Data> getDataClass() {
            return this.converter.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public EnumC3658a getDataSource() {
            return EnumC3658a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super Data> abstractC3674a) {
            abstractC3674a.onDataReady((Data) this.converter.convert(this.model));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ByteArrayLoader$StreamFactory.class */
    public static class StreamFactory implements ModelLoaderFactory<byte[], InputStream> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<byte[], InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteArrayLoader(new Converter<InputStream>() { // from class: com.bumptech.glide.load.model.ByteArrayLoader.StreamFactory.1
                @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
                public InputStream convert(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }

                @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
                public Class<InputStream> getDataClass() {
                    return InputStream.class;
                }
            });
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public ByteArrayLoader(Converter<Data> converter) {
        this.converter = converter;
    }

    public ModelLoader.LoadData<Data> buildLoadData(byte[] bArr, int i, int i2, C3822h c3822h) {
        return new ModelLoader.LoadData<>(new C3616e(bArr), new Fetcher(bArr, this.converter));
    }

    public boolean handles(byte[] bArr) {
        return true;
    }
}
