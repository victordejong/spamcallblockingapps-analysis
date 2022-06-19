package com.mopub.network;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.util.ResponseHeader;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequest.class */
public abstract class MoPubRequest<T> extends Request<T> {

    /* renamed from: s */
    public final String f5401s;

    /* renamed from: t */
    public final Context f5402t;

    public MoPubRequest(Context context, String str, Response.ErrorListener errorListener) {
        super(MoPubRequestUtils.chooseMethod(str), MoPubRequestUtils.truncateQueryParamsIfPost(str), errorListener);
        this.f5401s = str;
        this.f5402t = context.getApplicationContext();
    }

    @Override // com.mopub.volley.Request
    /* renamed from: e */
    public Map<String, String> mo3169e() {
        if (!MoPubRequestUtils.isMoPubRequest(getUrl())) {
            return null;
        }
        return MoPubRequestUtils.convertQueryToMap(this.f5402t, this.f5401s);
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        String generateBodyFromParams = MoPubRequestUtils.generateBodyFromParams(mo3169e(), getUrl());
        if (generateBodyFromParams == null) {
            return null;
        }
        return generateBodyFromParams.getBytes();
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return MoPubRequestUtils.isMoPubRequest(getUrl()) ? "application/json; charset=UTF-8" : super.getBodyContentType();
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getHeaders() {
        Locale locale;
        Locale locale2;
        String str;
        TreeMap treeMap = new TreeMap();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = this.f5402t.getResources().getConfiguration().getLocales();
            locale = locales.size() > 0 ? locales.get(0) : null;
        } else {
            locale = this.f5402t.getResources().getConfiguration().locale;
        }
        if (locale == null || TextUtils.isEmpty(locale.toString().trim())) {
            str = Locale.getDefault().getLanguage().trim();
            locale2 = Locale.getDefault();
        } else {
            locale2 = locale;
            str = locale.getLanguage().trim();
        }
        String trim = locale2.getCountry().trim();
        if (!TextUtils.isEmpty(str)) {
            String str2 = str;
            if (!TextUtils.isEmpty(trim)) {
                str2 = str + "-" + trim.toLowerCase();
            }
            treeMap.put(ResponseHeader.ACCEPT_LANGUAGE.getKey(), str2);
        }
        return treeMap;
    }

    public String getOriginalUrl() {
        return this.f5401s;
    }

    /* renamed from: o */
    public String m3210o(NetworkResponse networkResponse) {
        String str;
        Preconditions.checkNotNull(networkResponse);
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return str;
    }
}
