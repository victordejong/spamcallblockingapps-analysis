package org.xutils.http.loader;

import java.io.InputStream;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.c */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/c.class */
class C9660c extends Loader<InputStream> {
    @Override // org.xutils.http.loader.Loader
    public InputStream load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        return uriRequest.getInputStream();
    }

    @Override // org.xutils.http.loader.Loader
    public InputStream loadFromCache(DiskCacheEntity diskCacheEntity) {
        return null;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<InputStream> newInstance() {
        return new C9660c();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
    }
}
