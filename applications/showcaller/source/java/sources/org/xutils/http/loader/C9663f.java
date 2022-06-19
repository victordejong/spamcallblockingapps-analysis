package org.xutils.http.loader;

import android.text.TextUtils;
import org.json.JSONObject;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.common.util.IOUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.f */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/f.class */
class C9663f extends Loader<JSONObject> {

    /* renamed from: a */
    private String f40772a = "UTF-8";

    /* renamed from: b */
    private String f40773b = null;

    @Override // org.xutils.http.loader.Loader
    public JSONObject load(UriRequest uriRequest) {
        uriRequest.sendRequest();
        this.f40773b = IOUtil.readStr(uriRequest.getInputStream(), this.f40772a);
        return new JSONObject(this.f40773b);
    }

    @Override // org.xutils.http.loader.Loader
    public JSONObject loadFromCache(DiskCacheEntity diskCacheEntity) {
        if (diskCacheEntity != null) {
            String textContent = diskCacheEntity.getTextContent();
            if (TextUtils.isEmpty(textContent)) {
                return null;
            }
            return new JSONObject(textContent);
        }
        return null;
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<JSONObject> newInstance() {
        return new C9663f();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
        saveStringCache(uriRequest, this.f40773b);
    }

    @Override // org.xutils.http.loader.Loader
    public void setParams(RequestParams requestParams) {
        if (requestParams != null) {
            String charset = requestParams.getCharset();
            if (TextUtils.isEmpty(charset)) {
                return;
            }
            this.f40772a = charset;
        }
    }
}
