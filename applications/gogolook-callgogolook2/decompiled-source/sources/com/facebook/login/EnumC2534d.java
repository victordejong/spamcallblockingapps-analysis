package com.facebook.login;
/* renamed from: com.facebook.login.d */
/* loaded from: classes-dex2jar.jar:com/facebook/login/d.class */
public enum EnumC2534d {
    NATIVE_WITH_FALLBACK(true, true, true, false, true, true),
    NATIVE_ONLY(true, true, false, false, false, true),
    KATANA_ONLY(false, true, false, false, false, false),
    WEB_ONLY(false, false, true, false, true, false),
    WEB_VIEW_ONLY(false, false, true, false, false, false),
    DIALOG_ONLY(false, true, true, false, true, true),
    DEVICE_AUTH(false, false, false, true, false, false);
    

    /* renamed from: a */
    public final boolean f3337a;

    /* renamed from: b */
    public final boolean f3338b;

    /* renamed from: c */
    public final boolean f3339c;

    /* renamed from: d */
    public final boolean f3340d;

    /* renamed from: e */
    public final boolean f3341e;

    /* renamed from: f */
    public final boolean f3342f;

    EnumC2534d(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f3337a = z;
        this.f3338b = z2;
        this.f3339c = z3;
        this.f3340d = z4;
        this.f3341e = z5;
        this.f3342f = z6;
    }

    /* renamed from: a */
    public boolean m34394a() {
        return this.f3341e;
    }

    /* renamed from: b */
    public boolean m34393b() {
        return this.f3340d;
    }

    /* renamed from: c */
    public boolean m34392c() {
        return this.f3342f;
    }

    /* renamed from: d */
    public boolean m34391d() {
        return this.f3337a;
    }

    /* renamed from: e */
    public boolean m34390e() {
        return this.f3338b;
    }

    /* renamed from: f */
    public boolean m34389f() {
        return this.f3339c;
    }
}
