package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekb.class */
public final class ekb {

    /* renamed from: a */
    private static ekb f49147a = new ekb();

    /* renamed from: b */
    private final C13077yq f49148b;

    /* renamed from: c */
    private final ejj f49149c;

    /* renamed from: d */
    private final String f49150d;

    /* renamed from: e */
    private final C12180al f49151e;

    /* renamed from: f */
    private final C12182an f49152f;

    /* renamed from: g */
    private final SharedPreferences$OnSharedPreferenceChangeListenerC12181am f49153g;

    /* renamed from: h */
    private final zzbar f49154h;

    /* renamed from: i */
    private final Random f49155i;

    /* renamed from: j */
    private final WeakHashMap<QueryInfo, String> f49156j;

    protected ekb() {
        this(new C13077yq(), new ejj(new eiz(), new eiw(), new C12260c(), new C12568fx(), new C12954ud(), new C12984vg(), new C12866qx(), new C12572ga()), new C12180al(), new C12182an(), new SharedPreferences$OnSharedPreferenceChangeListenerC12181am(), C13077yq.m13933c(), new zzbar(0, 204890000, true), new Random(), new WeakHashMap());
    }

    private ekb(C13077yq c13077yq, ejj ejjVar, C12180al c12180al, C12182an c12182an, SharedPreferences$OnSharedPreferenceChangeListenerC12181am sharedPreferences$OnSharedPreferenceChangeListenerC12181am, String str, zzbar zzbarVar, Random random, WeakHashMap<QueryInfo, String> weakHashMap) {
        this.f49148b = c13077yq;
        this.f49149c = ejjVar;
        this.f49151e = c12180al;
        this.f49152f = c12182an;
        this.f49153g = sharedPreferences$OnSharedPreferenceChangeListenerC12181am;
        this.f49150d = str;
        this.f49154h = zzbarVar;
        this.f49155i = random;
        this.f49156j = weakHashMap;
    }

    /* renamed from: a */
    public static C13077yq m14835a() {
        return f49147a.f49148b;
    }

    /* renamed from: b */
    public static ejj m14834b() {
        return f49147a.f49149c;
    }

    /* renamed from: c */
    public static C12182an m14833c() {
        return f49147a.f49152f;
    }

    /* renamed from: d */
    public static C12180al m14832d() {
        return f49147a.f49151e;
    }

    /* renamed from: e */
    public static SharedPreferences$OnSharedPreferenceChangeListenerC12181am m14831e() {
        return f49147a.f49153g;
    }

    /* renamed from: f */
    public static String m14830f() {
        return f49147a.f49150d;
    }

    /* renamed from: g */
    public static zzbar m14829g() {
        return f49147a.f49154h;
    }

    /* renamed from: h */
    public static Random m14828h() {
        return f49147a.f49155i;
    }

    /* renamed from: i */
    public static WeakHashMap<QueryInfo, String> m14827i() {
        return f49147a.f49156j;
    }
}
