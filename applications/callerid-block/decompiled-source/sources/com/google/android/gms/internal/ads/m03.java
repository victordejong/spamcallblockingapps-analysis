package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p077y.C1522b;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/m03.class */
public final class m03 {

    /* renamed from: g */
    private static final m03 f7196g = new m03();

    /* renamed from: a */
    private final C1786io f7197a;

    /* renamed from: b */
    private final k03 f7198b;

    /* renamed from: c */
    private final String f7199c;

    /* renamed from: d */
    private final zzbbq f7200d;

    /* renamed from: e */
    private final Random f7201e;

    /* renamed from: f */
    private final WeakHashMap<C1522b, String> f7202f;

    protected m03() {
        C1786io ioVar = new C1786io();
        k03 k03Var = new k03(new oz2(), new nz2(), new e2(), new a8(), new C1703dl(), new wh(), new b8());
        String f = C1786io.m7138f();
        zzbbq zzbbqVar = new zzbbq(0, 210890000, true, false, false);
        Random random = new Random();
        WeakHashMap<C1522b, String> weakHashMap = new WeakHashMap<>();
        this.f7197a = ioVar;
        this.f7198b = k03Var;
        this.f7199c = f;
        this.f7200d = zzbbqVar;
        this.f7201e = random;
        this.f7202f = weakHashMap;
    }

    /* renamed from: a */
    public static C1786io m6636a() {
        return f7196g.f7197a;
    }

    /* renamed from: b */
    public static k03 m6635b() {
        return f7196g.f7198b;
    }

    /* renamed from: c */
    public static String m6634c() {
        return f7196g.f7199c;
    }

    /* renamed from: d */
    public static zzbbq m6633d() {
        return f7196g.f7200d;
    }

    /* renamed from: e */
    public static Random m6632e() {
        return f7196g.f7201e;
    }

    /* renamed from: f */
    public static WeakHashMap<C1522b, String> m6631f() {
        return f7196g.f7202f;
    }
}
