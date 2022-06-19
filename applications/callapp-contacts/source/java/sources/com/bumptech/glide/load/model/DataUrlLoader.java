package com.bumptech.glide.load.model;

import android.util.Base64;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p115f.C3616e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/DataUrlLoader.class */
public final class DataUrlLoader<Model, Data> implements ModelLoader<Model, Data> {
    private static final String BASE64_TAG = ";base64";
    private static final String DATA_SCHEME_IMAGE = "data:image";
    private final DataDecoder<Data> dataDecoder;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/DataUrlLoader$DataDecoder.class */
    public interface DataDecoder<Data> {
        void close(Data data) throws IOException;

        Data decode(String str) throws IllegalArgumentException;

        Class<Data> getDataClass();
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher.class */
    static final class DataUriFetcher<Data> implements AbstractC3673d<Data> {
        private Data data;
        private final String dataUri;
        private final DataDecoder<Data> reader;

        DataUriFetcher(String str, DataDecoder<Data> dataDecoder) {
            this.dataUri = str;
            this.reader = dataDecoder;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final void cleanup() {
            try {
                this.reader.close(this.data);
            } catch (IOException e) {
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final Class<Data> getDataClass() {
            return this.reader.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final EnumC3658a getDataSource() {
            return EnumC3658a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public final void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super Data> abstractC3674a) {
            try {
                Data decode = this.reader.decode(this.dataUri);
                this.data = decode;
                abstractC3674a.onDataReady(decode);
            } catch (IllegalArgumentException e) {
                abstractC3674a.onLoadFailed(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/DataUrlLoader$StreamFactory.class */
    public static final class StreamFactory<Model> implements ModelLoaderFactory<Model, InputStream> {
        private final DataDecoder<InputStream> opener = new DataDecoder<InputStream>() { // from class: com.bumptech.glide.load.model.DataUrlLoader.StreamFactory.1
            public void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public InputStream decode(String str) {
                if (str.startsWith(DataUrlLoader.DATA_SCHEME_IMAGE)) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    }
                    if (!str.substring(0, indexOf).endsWith(DataUrlLoader.BASE64_TAG)) {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }

            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public Class<InputStream> getDataClass() {
                return InputStream.class;
            }
        };

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader<Model, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DataUrlLoader(this.opener);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    public DataUrlLoader(DataDecoder<Data> dataDecoder) {
        this.dataDecoder = dataDecoder;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData<Data> buildLoadData(Model model, int i, int i2, C3822h c3822h) {
        return new ModelLoader.LoadData<>(new C3616e(model), new DataUriFetcher(model.toString(), this.dataDecoder));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Model model) {
        return model.toString().startsWith(DATA_SCHEME_IMAGE);
    }
}
