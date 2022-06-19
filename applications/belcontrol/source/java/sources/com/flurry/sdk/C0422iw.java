package com.flurry.sdk;
/* renamed from: com.flurry.sdk.iw */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iw.class */
public class C0422iw {

    /* renamed from: m */
    private static final String f3263m = "com.flurry.sdk.iw";

    /* renamed from: a */
    public int f3264a;

    /* renamed from: b */
    public long f3265b;

    /* renamed from: c */
    public long f3266c;

    /* renamed from: d */
    public boolean f3267d;

    /* renamed from: g */
    public String f3270g;

    /* renamed from: h */
    public int f3271h;

    /* renamed from: i */
    public long f3272i;

    /* renamed from: j */
    public boolean f3273j;

    /* renamed from: l */
    public iv f3275l;

    /* renamed from: k */
    public long f3274k = 0;

    /* renamed from: e */
    public int f3268e = 0;

    /* renamed from: f */
    public EnumC0423ix f3269f = EnumC0423ix.PENDING_COMPLETION;

    public C0422iw(iv ivVar, long j, long j2, int i) {
        this.f3275l = ivVar;
        this.f3265b = j;
        this.f3266c = j2;
        this.f3264a = i;
    }

    /* renamed from: a */
    public final void m4761a() {
        this.f3275l.f.add(this);
        if (this.f3267d) {
            this.f3275l.m = true;
        }
    }
}
