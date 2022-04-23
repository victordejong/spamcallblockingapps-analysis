package com.adbert.p009a;

import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.CookieStore;
import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.adbert.a.k */
/* loaded from: classes-dex2jar.jar:com/adbert/a/k.class */
public class C1411k extends CookieManager {

    /* renamed from: a */
    public android.webkit.CookieManager f674a;

    public C1411k() {
        this(null, null);
    }

    public C1411k(CookieStore cookieStore, CookiePolicy cookiePolicy) {
        super(null, cookiePolicy);
        this.f674a = android.webkit.CookieManager.getInstance();
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public Map<String, List<String>> get(URI uri, Map<String, List<String>> map) {
        if (uri == null || map == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        String uri2 = uri.toString();
        HashMap hashMap = new HashMap();
        String cookie = this.f674a.getCookie(uri2);
        if (cookie != null) {
            hashMap.put("Cookie", Arrays.asList(cookie));
        }
        return hashMap;
    }

    @Override // java.net.CookieManager
    public CookieStore getCookieStore() {
        throw new UnsupportedOperationException();
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public void put(URI uri, Map<String, List<String>> map) {
        if (!(uri == null || map == null)) {
            String uri2 = uri.toString();
            for (String str : map.keySet()) {
                if (str != null && (str.equalsIgnoreCase("Set-Cookie2") || str.equalsIgnoreCase("Set-Cookie"))) {
                    for (String str2 : map.get(str)) {
                        this.f674a.setCookie(uri2, str2);
                    }
                }
            }
        }
    }
}
