package com.bumptech.glide.load.model.stream;

import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.UrlUriLoader;
import java.io.InputStream;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/HttpUriLoader.class */
public class HttpUriLoader extends UrlUriLoader<InputStream> {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/HttpUriLoader$Factory.class */
    public static class Factory extends UrlUriLoader.StreamFactory {
    }

    public HttpUriLoader(ModelLoader<GlideUrl, InputStream> modelLoader) {
        super(modelLoader);
    }
}
