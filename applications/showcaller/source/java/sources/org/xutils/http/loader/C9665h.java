package org.xutils.http.loader;

import android.text.TextUtils;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.common.util.IOUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.h */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/h.class */
class C9665h extends Loader<String> {

    /* renamed from: a */
    private String f40778a = "UTF-8";

    /* renamed from: b */
    private String f40779b = null;

    @Override // org.xutils.http.loader.Loader
    public String load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        String readStr = IOUtil.readStr(uriRequest.getInputStream(), this.f40778a);
        this.f40779b = readStr;
        return readStr;
    }

    @Override // org.xutils.http.loader.Loader
    public String loadFromCache(DiskCacheEntity diskCacheEntity) {
        if (diskCacheEntity != null) {
            return diskCacheEntity.getTextContent();
        }
        return null;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<String> newInstance() {
        return new C9665h();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
        saveStringCache(uriRequest, this.f40779b);
    }

    @Override // org.xutils.http.loader.Loader
    public void setParams(RequestParams requestParams) {
        if (requestParams != null) {
            String charset = requestParams.getCharset();
            if (TextUtils.isEmpty(charset)) {
                return;
            }
            this.f40778a = charset;
        }
    }
}
