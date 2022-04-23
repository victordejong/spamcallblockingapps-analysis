package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekb.class */
public final class ekb {

    /* renamed from: a  reason: collision with root package name */
    private static ekb f27932a = new ekb();

    /* renamed from: b  reason: collision with root package name */
    private final yq f27933b;

    /* renamed from: c  reason: collision with root package name */
    private final ejj f27934c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27935d;
    private final al e;
    private final an f;
    private final am g;
    private final zzbar h;
    private final Random i;
    private final WeakHashMap<QueryInfo, String> j;

    protected ekb() {
        this(new yq(), new ejj(new eiz(), new eiw(), new c(), new fx(), new ud(), new vg(), new qx(), new ga()), new al(), new an(), new am(), yq.c(), new zzbar(0, 204890000, true), new Random(), new WeakHashMap());
    }

    private ekb(yq yqVar, ejj ejjVar, al alVar, an anVar, am amVar, String str, zzbar zzbarVar, Random random, WeakHashMap<QueryInfo, String> weakHashMap) {
        this.f27933b = yqVar;
        this.f27934c = ejjVar;
        this.e = alVar;
        this.f = anVar;
        this.g = amVar;
        this.f27935d = str;
        this.h = zzbarVar;
        this.i = random;
        this.j = weakHashMap;
    }

    public static yq a() {
        return f27932a.f27933b;
    }

    public static ejj b() {
        return f27932a.f27934c;
    }

    public static an c() {
        return f27932a.f;
    }

    public static al d() {
        return f27932a.e;
    }

    public static am e() {
        return f27932a.g;
    }

    public static String f() {
        return f27932a.f27935d;
    }

    public static zzbar g() {
        return f27932a.h;
    }

    public static Random h() {
        return f27932a.i;
    }

    public static WeakHashMap<QueryInfo, String> i() {
        return f27932a.j;
    }
}
