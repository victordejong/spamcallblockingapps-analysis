package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwm.class */
public final class zzwm {

    /* renamed from: j */
    public static zzwm f29072j = new zzwm();

    /* renamed from: a */
    public final zzbbg f29073a;

    /* renamed from: b */
    public final zzvx f29074b;

    /* renamed from: c */
    public final String f29075c;

    /* renamed from: d */
    public final zzaaw f29076d;

    /* renamed from: e */
    public final zzaay f29077e;

    /* renamed from: f */
    public final zzaax f29078f;

    /* renamed from: g */
    public final zzbbx f29079g;

    /* renamed from: h */
    public final Random f29080h;

    /* renamed from: i */
    public final WeakHashMap<QueryInfo, String> f29081i;

    public zzwm() {
        this(new zzbbg(), new zzvx(new zzve(), new zzvf(), new zzzl(), new zzagi(), new zzauk(), new zzavo(), new zzaqz(), new zzagh()), new zzaaw(), new zzaay(), new zzaax(), zzbbg.m15894c(), new zzbbx(0, 202510000, true), new Random(), new WeakHashMap());
    }

    public zzwm(zzbbg zzbbgVar, zzvx zzvxVar, zzaaw zzaawVar, zzaay zzaayVar, zzaax zzaaxVar, String str, zzbbx zzbbxVar, Random random, WeakHashMap<QueryInfo, String> weakHashMap) {
        this.f29073a = zzbbgVar;
        this.f29074b = zzvxVar;
        this.f29076d = zzaawVar;
        this.f29077e = zzaayVar;
        this.f29078f = zzaaxVar;
        this.f29075c = str;
        this.f29079g = zzbbxVar;
        this.f29080h = random;
        this.f29081i = weakHashMap;
    }

    /* renamed from: a */
    public static zzbbg m11170a() {
        return f29072j.f29073a;
    }

    /* renamed from: b */
    public static zzvx m11169b() {
        return f29072j.f29074b;
    }

    /* renamed from: c */
    public static zzaay m11168c() {
        return f29072j.f29077e;
    }

    /* renamed from: d */
    public static zzaaw m11167d() {
        return f29072j.f29076d;
    }

    /* renamed from: e */
    public static zzaax m11166e() {
        return f29072j.f29078f;
    }

    /* renamed from: f */
    public static String m11165f() {
        return f29072j.f29075c;
    }

    /* renamed from: g */
    public static zzbbx m11164g() {
        return f29072j.f29079g;
    }

    /* renamed from: h */
    public static Random m11163h() {
        return f29072j.f29080h;
    }

    /* renamed from: i */
    public static WeakHashMap<QueryInfo, String> m11162i() {
        return f29072j.f29081i;
    }
}
