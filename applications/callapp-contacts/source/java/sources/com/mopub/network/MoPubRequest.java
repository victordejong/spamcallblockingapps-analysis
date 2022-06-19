package com.mopub.network;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.google.api.client.json.Json;
import com.mopub.common.Preconditions;
import com.mopub.common.util.ResponseHeader;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubRequest.class */
public abstract class MoPubRequest<T> extends Request<T> {

    /* renamed from: a */
    private final String f60298a;

    /* renamed from: b */
    private final Context f60299b;

    public MoPubRequest(Context context, String str, Response.ErrorListener errorListener) {
        super(MoPubRequestUtils.chooseMethod(str), MoPubRequestUtils.truncateQueryParamsIfPost(str), errorListener);
        this.f60298a = str;
        this.f60299b = context.getApplicationContext();
    }

    /* renamed from: a */
    public static String m6048a(NetworkResponse networkResponse) {
        String str;
        Preconditions.checkNotNull(networkResponse);
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return str;
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        String generateBodyFromParams = MoPubRequestUtils.generateBodyFromParams(getParams(), getUrl());
        if (generateBodyFromParams == null) {
            return null;
        }
        return generateBodyFromParams.getBytes();
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return MoPubRequestUtils.isMoPubRequest(getUrl()) ? Json.MEDIA_TYPE : super.getBodyContentType();
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getHeaders() {
        Locale locale;
        String str;
        String str2;
        TreeMap treeMap = new TreeMap();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = this.f60299b.getResources().getConfiguration().getLocales();
            locale = locales.size() > 0 ? locales.get(0) : null;
        } else {
            locale = this.f60299b.getResources().getConfiguration().locale;
        }
        if (locale == null || TextUtils.isEmpty(locale.toString().trim())) {
            str2 = Locale.getDefault().getLanguage().trim();
            str = Locale.getDefault().getCountry().trim();
        } else {
            String trim = locale.getLanguage().trim();
            str = locale.getCountry().trim();
            str2 = trim;
        }
        if (!TextUtils.isEmpty(str2)) {
            String str3 = str2;
            if (!TextUtils.isEmpty(str)) {
                str3 = str2 + VerificationLanguage.REGION_PREFIX + str.toLowerCase();
            }
            treeMap.put(ResponseHeader.ACCEPT_LANGUAGE.getKey(), str3);
        }
        return treeMap;
    }

    public String getOriginalUrl() {
        return this.f60298a;
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getParams() {
        if (!MoPubRequestUtils.isMoPubRequest(getUrl())) {
            return null;
        }
        return MoPubRequestUtils.convertQueryToMap(this.f60299b, this.f60298a);
    }
}
