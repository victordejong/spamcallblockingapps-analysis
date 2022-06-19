package org.xutils.http.loader;

import org.xutils.cache.DiskCacheEntity;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/a.class */
class C9658a extends Loader<Boolean> {
    @Override // org.xutils.http.loader.Loader
    public Boolean load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        return Boolean.valueOf(uriRequest.getResponseCode() < 300);
    }

    @Override // org.xutils.http.loader.Loader
    public Boolean loadFromCache(DiskCacheEntity diskCacheEntity) {
        return null;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<Boolean> newInstance() {
        return new C9658a();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
    }
}
