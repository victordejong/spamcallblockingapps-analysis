package com.bumptech.glide.load.model.stream;

import android.text.TextUtils;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/stream/BaseGlideUrlLoader.class */
public abstract class BaseGlideUrlLoader<Model> implements ModelLoader<Model, InputStream> {
    private final ModelLoader<GlideUrl, InputStream> concreteLoader;
    private final ModelCache<Model, GlideUrl> modelCache;

    protected BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader) {
        this(modelLoader, null);
    }

    protected BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader, ModelCache<Model, GlideUrl> modelCache) {
        this.concreteLoader = modelLoader;
        this.modelCache = modelCache;
    }

    private static List<f> getAlternateKeys(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (String str : collection) {
            arrayList.add(new GlideUrl(str));
        }
        return arrayList;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<InputStream> buildLoadData(Model model, int i, int i2, h hVar) {
        ModelCache<Model, GlideUrl> modelCache = this.modelCache;
        GlideUrl glideUrl = modelCache != null ? modelCache.get(model, i, i2) : null;
        GlideUrl glideUrl2 = glideUrl;
        if (glideUrl == null) {
            String url = getUrl(model, i, i2, hVar);
            if (TextUtils.isEmpty(url)) {
                return null;
            }
            glideUrl2 = new GlideUrl(url, getHeaders(model, i, i2, hVar));
            ModelCache<Model, GlideUrl> modelCache2 = this.modelCache;
            if (modelCache2 != null) {
                modelCache2.put(model, i, i2, glideUrl2);
            }
        }
        List<String> alternateUrls = getAlternateUrls(model, i, i2, hVar);
        ModelLoader.LoadData<InputStream> buildLoadData = this.concreteLoader.buildLoadData(glideUrl2, i, i2, hVar);
        return (buildLoadData == null || alternateUrls.isEmpty()) ? buildLoadData : new ModelLoader.LoadData<>(buildLoadData.sourceKey, getAlternateKeys(alternateUrls), buildLoadData.fetcher);
    }

    protected List<String> getAlternateUrls(Model model, int i, int i2, h hVar) {
        return Collections.emptyList();
    }

    protected Headers getHeaders(Model model, int i, int i2, h hVar) {
        return Headers.DEFAULT;
    }

    protected abstract String getUrl(Model model, int i, int i2, h hVar);
}
