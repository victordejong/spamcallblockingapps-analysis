package org.xutils.http.loader;

import org.xutils.cache.DiskCacheEntity;
import org.xutils.common.util.IOUtil;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.b */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/b.class */
class C9659b extends Loader<byte[]> {

    /* renamed from: a */
    private byte[] f40769a;

    @Override // org.xutils.http.loader.Loader
    public byte[] load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        byte[] readBytes = IOUtil.readBytes(uriRequest.getInputStream());
        this.f40769a = readBytes;
        return readBytes;
    }

    @Override // org.xutils.http.loader.Loader
    public byte[] loadFromCache(DiskCacheEntity diskCacheEntity) {
        byte[] bytesContent;
        if (diskCacheEntity == null || (bytesContent = diskCacheEntity.getBytesContent()) == null || bytesContent.length <= 0) {
            return null;
        }
        return bytesContent;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<byte[]> newInstance() {
        return new C9659b();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
        saveByteArrayCache(uriRequest, this.f40769a);
    }
}
