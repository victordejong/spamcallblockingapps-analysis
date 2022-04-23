package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.f.e;
import com.bumptech.glide.load.data.a.b;
import com.bumptech.glide.load.data.a.c;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.bitmap.aa;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader.class */
public class MediaStoreVideoThumbLoader implements ModelLoader<Uri, InputStream> {
    private final Context context;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory.class */
    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {
        private final Context context;

        public Factory(Context context) {
            this.context = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreVideoThumbLoader(this.context);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    public MediaStoreVideoThumbLoader(Context context) {
        this.context = context.getApplicationContext();
    }

    private boolean isRequestingDefaultFrame(h hVar) {
        Long l = (Long) hVar.a(aa.f7644a);
        return l != null && l.longValue() == -1;
    }

    public ModelLoader.LoadData<InputStream> buildLoadData(Uri uri, int i, int i2, h hVar) {
        if (!b.a(i, i2) || !isRequestingDefaultFrame(hVar)) {
            return null;
        }
        e eVar = new e(uri);
        Context context = this.context;
        return new ModelLoader.LoadData<>(eVar, c.a(context, uri, new c.b(context.getContentResolver())));
    }

    public boolean handles(Uri uri) {
        return b.a(uri) && b.b(uri);
    }
}
