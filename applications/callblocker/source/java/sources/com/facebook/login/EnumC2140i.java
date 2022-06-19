package com.facebook.login;
/* renamed from: com.facebook.login.i */
/* loaded from: classes-dex2jar.jar:com/facebook/login/i.class */
public enum EnumC2140i {
    NATIVE_WITH_FALLBACK(true, true, true, false, true, true),
    NATIVE_ONLY(true, true, false, false, false, true),
    KATANA_ONLY(false, true, false, false, false, false),
    WEB_ONLY(false, false, true, false, true, false),
    WEB_VIEW_ONLY(false, false, true, false, false, false),
    DIALOG_ONLY(false, true, true, false, true, true),
    DEVICE_AUTH(false, false, false, true, false, false);
    

    /* renamed from: h */
    private final boolean f6281h;

    /* renamed from: i */
    private final boolean f6282i;

    /* renamed from: j */
    private final boolean f6283j;

    /* renamed from: k */
    private final boolean f6284k;

    /* renamed from: l */
    private final boolean f6285l;

    /* renamed from: m */
    private final boolean f6286m;

    EnumC2140i(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f6281h = z;
        this.f6282i = z2;
        this.f6283j = z3;
        this.f6284k = z4;
        this.f6285l = z5;
        this.f6286m = z6;
    }

    /* renamed from: a */
    public boolean m15198a() {
        return this.f6281h;
    }

    /* renamed from: b */
    public boolean m15197b() {
        return this.f6282i;
    }

    /* renamed from: c */
    public boolean m15196c() {
        return this.f6283j;
    }

    /* renamed from: d */
    public boolean m15195d() {
        return this.f6284k;
    }

    /* renamed from: e */
    public boolean m15194e() {
        return this.f6285l;
    }

    /* renamed from: f */
    public boolean m15193f() {
        return this.f6286m;
    }
}
