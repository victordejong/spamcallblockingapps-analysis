package com.mopub.network;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
/* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequest.class */
public abstract class MoPubRequest<T> extends Request<T> {
    @NonNull

    /* renamed from: q */
    public final String f9430q;
    @NonNull

    /* renamed from: r */
    public final Context f9431r;

    public MoPubRequest(@NonNull Context context, @NonNull String str, @Nullable Response.ErrorListener errorListener) {
        super(MoPubRequestUtils.chooseMethod(str), MoPubRequestUtils.truncateQueryParamsIfPost(str), errorListener);
        this.f9430q = str;
        this.f9431r = context.getApplicationContext();
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Map<String, String> mo29957a() {
        if (!MoPubRequestUtils.isMoPubRequest(getUrl())) {
            return null;
        }
        return MoPubRequestUtils.convertQueryToMap(this.f9431r, this.f9430q);
    }

    @NonNull
    /* renamed from: b */
    public String m29994b(@NonNull NetworkResponse networkResponse) {
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
        String generateBodyFromParams = MoPubRequestUtils.generateBodyFromParams(mo29957a(), getUrl());
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
        String str;
        String str2;
        TreeMap treeMap = new TreeMap();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = this.f9431r.getResources().getConfiguration().getLocales();
            locale = locales.size() > 0 ? locales.get(0) : null;
        } else {
            locale = this.f9431r.getResources().getConfiguration().locale;
        }
        if (locale == null || TextUtils.isEmpty(locale.toString().trim())) {
            str2 = Locale.getDefault().getLanguage().trim();
            str = Locale.getDefault().getCountry().trim();
        } else {
            str2 = locale.getLanguage().trim();
            str = locale.getCountry().trim();
        }
        if (!TextUtils.isEmpty(str2)) {
            String str3 = str2;
            if (!TextUtils.isEmpty(str)) {
                str3 = str2 + "-" + str.toLowerCase();
            }
            treeMap.put(ResponseHeader.ACCEPT_LANGUAGE.getKey(), str3);
        }
        return treeMap;
    }

    @NonNull
    public String getOriginalUrl() {
        return this.f9430q;
    }
}
