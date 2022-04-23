package com.bumptech.glide.load.model;

import android.util.Base64;
import com.bumptech.glide.f.e;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.ModelLoader;
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
    static final class DataUriFetcher<Data> implements d<Data> {
        private Data data;
        private final String dataUri;
        private final DataDecoder<Data> reader;

        DataUriFetcher(String str, DataDecoder<Data> dataDecoder) {
            this.dataUri = str;
            this.reader = dataDecoder;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cleanup() {
            try {
                this.reader.close(this.data);
            } catch (IOException e) {
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Data> getDataClass() {
            return this.reader.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public final a getDataSource() {
            return a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public final void loadData(h hVar, d.a<? super Data> aVar) {
            try {
                Data decode = this.reader.decode(this.dataUri);
                this.data = decode;
                aVar.onDataReady(decode);
            } catch (IllegalArgumentException e) {
                aVar.onLoadFailed(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/DataUrlLoader$StreamFactory.class */
    public static final class StreamFactory<Model> implements ModelLoaderFactory<Model, InputStream> {
        private final DataDecoder<InputStream> opener = new DataDecoder<InputStream>() { // from class: com.bumptech.glide.load.model.DataUrlLoader.StreamFactory.1
            public void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.bumptech.glide.load.model.DataUrlLoader.DataDecoder
            public InputStream decode(String str) {
                if (str.startsWith(DataUrlLoader.DATA_SCHEME_IMAGE)) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    } else if (str.substring(0, indexOf).endsWith(DataUrlLoader.BASE64_TAG)) {
                        return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                    } else {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                } else {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
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
    public final ModelLoader.LoadData<Data> buildLoadData(Model model, int i, int i2, com.bumptech.glide.load.h hVar) {
        return new ModelLoader.LoadData<>(new e(model), new DataUriFetcher(model.toString(), this.dataDecoder));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Model model) {
        return model.toString().startsWith(DATA_SCHEME_IMAGE);
    }
}
