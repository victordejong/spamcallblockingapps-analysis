package org.xutils.http.loader;

import org.xutils.cache.DiskCacheEntity;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.d */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/d.class */
class C9661d extends Loader<Integer> {
    @Override // org.xutils.http.loader.Loader
    public Integer load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        return Integer.valueOf(uriRequest.getResponseCode());
    }

    @Override // org.xutils.http.loader.Loader
    public Integer loadFromCache(DiskCacheEntity diskCacheEntity) {
        return null;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<Integer> newInstance() {
        return new C9661d();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
    }
}
