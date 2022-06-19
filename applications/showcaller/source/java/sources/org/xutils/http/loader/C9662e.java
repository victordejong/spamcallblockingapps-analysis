package org.xutils.http.loader;

import android.text.TextUtils;
import org.json.JSONArray;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.common.util.IOUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.e */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/e.class */
class C9662e extends Loader<JSONArray> {

    /* renamed from: a */
    private String f40770a = "UTF-8";

    /* renamed from: b */
    private String f40771b = null;

    @Override // org.xutils.http.loader.Loader
    public JSONArray load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        this.f40771b = IOUtil.readStr(uriRequest.getInputStream(), this.f40770a);
        return new JSONArray(this.f40771b);
    }

    @Override // org.xutils.http.loader.Loader
    public JSONArray loadFromCache(DiskCacheEntity diskCacheEntity) {
        if (diskCacheEntity != null) {
            String textContent = diskCacheEntity.getTextContent();
            if (TextUtils.isEmpty(textContent)) {
                return null;
            }
            return new JSONArray(textContent);
        }
        return null;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<JSONArray> newInstance() {
        return new C9662e();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
        saveStringCache(uriRequest, this.f40771b);
    }

    @Override // org.xutils.http.loader.Loader
    public void setParams(RequestParams requestParams) {
        if (requestParams != null) {
            String charset = requestParams.getCharset();
            if (TextUtils.isEmpty(charset)) {
                return;
            }
            this.f40770a = charset;
        }
    }
}
