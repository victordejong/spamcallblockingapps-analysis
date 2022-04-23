package com.zhy.http.okhttp.cookie;

import com.zhy.http.okhttp.cookie.store.CookieStore;
import com.zhy.http.okhttp.utils.Exceptions;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/cookie/CookieJarImpl.class */
public class CookieJarImpl implements CookieJar {
    private CookieStore cookieStore;

    public CookieJarImpl(CookieStore cookieStore) {
        if (cookieStore == null) {
            Exceptions.illegalArgument("cookieStore can not be null.", new Object[0]);
        }
        this.cookieStore = cookieStore;
    }

    public CookieStore getCookieStore() {
        return this.cookieStore;
    }

    @Override // okhttp3.CookieJar
    public List<Cookie> loadForRequest(HttpUrl httpUrl) {
        List<Cookie> list;
        synchronized (this) {
            list = this.cookieStore.get(httpUrl);
        }
        return list;
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
        synchronized (this) {
            this.cookieStore.add(httpUrl, list);
        }
    }
}
