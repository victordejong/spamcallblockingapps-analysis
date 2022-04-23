package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbin.class */
public final class zzbin {

    /* renamed from: a */
    public final String f25037a;

    /* renamed from: b */
    public final Uri f25038b;

    /* renamed from: c */
    public final Map<String, String> f25039c;

    public zzbin(WebResourceRequest webResourceRequest) {
        this(webResourceRequest.getUrl().toString(), webResourceRequest.getUrl(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders());
    }

    public zzbin(String str) {
        this(str, Uri.parse(str), null, null);
    }

    public zzbin(String str, Uri uri, String str2, Map<String, String> map) {
        this.f25037a = str;
        this.f25038b = uri;
        this.f25039c = map == null ? Collections.emptyMap() : map;
    }
}
