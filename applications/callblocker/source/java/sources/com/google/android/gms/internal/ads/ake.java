package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ake.class */
public final class ake extends amh {

    /* renamed from: c */
    private final View f9864c;

    /* renamed from: d */
    private final act f9865d;

    /* renamed from: e */
    private final cgq f9866e;

    /* renamed from: f */
    private final int f9867f;

    /* renamed from: g */
    private final boolean f9868g;

    /* renamed from: h */
    private final boolean f9869h;

    /* renamed from: i */
    private dvi f9870i;

    /* renamed from: j */
    private final ajv f9871j;

    public ake(amk amkVar, View view, act actVar, cgq cgqVar, int i, boolean z, boolean z2, ajv ajvVar) {
        super(amkVar);
        this.f9864c = view;
        this.f9865d = actVar;
        this.f9866e = cgqVar;
        this.f9867f = i;
        this.f9868g = z;
        this.f9869h = z2;
        this.f9871j = ajvVar;
    }

    /* renamed from: a */
    public final cgq m13036a() {
        return chk.m11310a(this.f9998b.f12993o, this.f9866e);
    }

    /* renamed from: a */
    public final void m13035a(long j) {
        this.f9871j.m13049a(j);
    }

    /* renamed from: a */
    public final void m13034a(dva dvaVar) {
        if (this.f9865d != null) {
            this.f9865d.mo13466a(dvaVar);
        }
    }

    /* renamed from: a */
    public final void m13033a(dvi dviVar) {
        this.f9870i = dviVar;
    }

    /* renamed from: b */
    public final View m13032b() {
        return this.f9864c;
    }

    /* renamed from: c */
    public final int m13031c() {
        return this.f9867f;
    }

    /* renamed from: d */
    public final boolean m13030d() {
        return this.f9868g;
    }

    /* renamed from: e */
    public final boolean m13029e() {
        return this.f9869h;
    }

    /* renamed from: f */
    public final boolean m13028f() {
        return (this.f9865d == null || this.f9865d.mo13426v() == null || !this.f9865d.mo13426v().mo13518b()) ? false : true;
    }

    /* renamed from: g */
    public final boolean m13027g() {
        return this.f9865d != null && this.f9865d.mo13424x();
    }

    /* renamed from: h */
    public final dvi m13026h() {
        return this.f9870i;
    }
}
