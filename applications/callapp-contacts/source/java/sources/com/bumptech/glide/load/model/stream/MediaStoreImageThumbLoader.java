package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.data.p118a.C3665b;
import com.bumptech.glide.load.data.p118a.C3666c;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.p115f.C3616e;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader.class */
public class MediaStoreImageThumbLoader implements ModelLoader<Uri, InputStream> {
    private final Context context;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory.class */
    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {
        private final Context context;

        public Factory(Context context) {
            this.context = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreImageThumbLoader(this.context);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public MediaStoreImageThumbLoader(Context context) {
        this.context = context.getApplicationContext();
    }

    public ModelLoader.LoadData<InputStream> buildLoadData(Uri uri, int i, int i2, C3822h c3822h) {
        if (C3665b.m37536a(i, i2)) {
            C3616e c3616e = new C3616e(uri);
            Context context = this.context;
            return new ModelLoader.LoadData<>(c3616e, C3666c.m37533a(context, uri, new C3666c.C3667a(context.getContentResolver())));
        }
        return null;
    }

    public boolean handles(Uri uri) {
        return C3665b.m37535a(uri) && !C3665b.m37534b(uri);
    }
}
