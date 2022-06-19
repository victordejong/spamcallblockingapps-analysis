package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import java.util.Collections;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aey.class */
public final class aey {

    /* renamed from: a */
    public final String f8087a;

    /* renamed from: b */
    public final Uri f8088b;

    /* renamed from: c */
    public final Map<String, String> f8089c;

    /* renamed from: d */
    private final String f8090d;

    @TargetApi(21)
    public aey(WebResourceRequest webResourceRequest) {
        this(webResourceRequest.getUrl().toString(), webResourceRequest.getUrl(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders());
    }

    public aey(String str) {
        this(str, Uri.parse(str), null, null);
    }

    private aey(String str, Uri uri, String str2, Map<String, String> map) {
        this.f8087a = str;
        this.f8088b = uri;
        this.f8090d = str2 == null ? "GET" : str2;
        this.f8089c = map == null ? Collections.emptyMap() : map;
    }
}
