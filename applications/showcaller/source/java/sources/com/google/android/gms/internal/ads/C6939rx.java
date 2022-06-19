package com.google.android.gms.internal.ads;

import com.zhy.http.okhttp.OkHttpUtils;
/* renamed from: com.google.android.gms.internal.ads.rx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rx.class */
public final class C6939rx {

    /* renamed from: a */
    public static final C6791nx<Boolean> f29284a = C6828ox.m12479f("gads:consent:gmscore:dsid:enabled", true);

    /* renamed from: b */
    public static final C6791nx<Boolean> f29285b = C6828ox.m12479f("gads:consent:gmscore:lat:enabled", true);

    /* renamed from: c */
    public static final C6791nx<String> f29286c = new C6828ox("gads:consent:gmscore:backend_url", "https://adservice.google.com/getconfig/pubvendors", 4);

    /* renamed from: d */
    public static final C6791nx<Long> f29287d = new C6828ox("gads:consent:gmscore:time_out", Long.valueOf((long) OkHttpUtils.DEFAULT_MILLISECONDS), 2);

    /* renamed from: e */
    public static final C6791nx<Boolean> f29288e = C6828ox.m12479f("gads:consent:gmscore:enabled", true);
}
