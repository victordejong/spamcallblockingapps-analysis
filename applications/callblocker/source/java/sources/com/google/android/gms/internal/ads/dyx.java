package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p123f.C2293b;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyx.class */
public final class dyx {

    /* renamed from: a */
    private static dyx f16154a = new dyx();

    /* renamed from: b */
    private final C3634xr f16155b;

    /* renamed from: c */
    private final dyl f16156c;

    /* renamed from: d */
    private final String f16157d;

    /* renamed from: e */
    private final ecz f16158e;

    /* renamed from: f */
    private final edb f16159f;

    /* renamed from: g */
    private final ede f16160g;

    /* renamed from: h */
    private final C3647yd f16161h;

    /* renamed from: i */
    private final Random f16162i;

    /* renamed from: j */
    private final WeakHashMap<C2293b, String> f16163j;

    protected dyx() {
        this(new C3634xr(), new dyl(new dxy(), new dxv(), new ebx(), new C3100dy(), new C3460rf(), new C3486se(), new C3369nw(), new C3104eb()), new ecz(), new edb(), new ede(), C3634xr.m6785c(), new C3647yd(0, 201004000, true), new Random(), new WeakHashMap());
    }

    private dyx(C3634xr c3634xr, dyl dylVar, ecz eczVar, edb edbVar, ede edeVar, String str, C3647yd c3647yd, Random random, WeakHashMap<C2293b, String> weakHashMap) {
        this.f16155b = c3634xr;
        this.f16156c = dylVar;
        this.f16158e = eczVar;
        this.f16159f = edbVar;
        this.f16160g = edeVar;
        this.f16157d = str;
        this.f16161h = c3647yd;
        this.f16162i = random;
        this.f16163j = weakHashMap;
    }

    /* renamed from: a */
    public static C3634xr m8162a() {
        return f16154a.f16155b;
    }

    /* renamed from: b */
    public static dyl m8161b() {
        return f16154a.f16156c;
    }

    /* renamed from: c */
    public static edb m8160c() {
        return f16154a.f16159f;
    }

    /* renamed from: d */
    public static ecz m8159d() {
        return f16154a.f16158e;
    }

    /* renamed from: e */
    public static ede m8158e() {
        return f16154a.f16160g;
    }

    /* renamed from: f */
    public static String m8157f() {
        return f16154a.f16157d;
    }

    /* renamed from: g */
    public static C3647yd m8156g() {
        return f16154a.f16161h;
    }

    /* renamed from: h */
    public static Random m8155h() {
        return f16154a.f16162i;
    }

    /* renamed from: i */
    public static WeakHashMap<C2293b, String> m8154i() {
        return f16154a.f16163j;
    }
}
