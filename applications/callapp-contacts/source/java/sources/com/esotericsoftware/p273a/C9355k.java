package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.k */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/k.class */
public final class C9355k extends AbstractC9354j {

    /* renamed from: c */
    final C9351g f32060c;

    /* renamed from: d */
    final int f32061d;

    /* renamed from: e */
    final int f32062e;

    /* renamed from: f */
    final int f32063f;

    /* renamed from: g */
    int f32064g;

    /* renamed from: h */
    int f32065h;

    /* renamed from: i */
    C9346b f32066i;

    /* renamed from: j */
    C9346b f32067j;

    /* renamed from: k */
    C9346b f32068k;

    /* renamed from: l */
    C9346b f32069l;

    /* renamed from: m */
    C9347c f32070m;

    public C9355k(C9351g c9351g, int i, String str, String str2, String str3, Object obj) {
        super(327680);
        if (c9351g.f32026r == null) {
            c9351g.f32026r = this;
        } else {
            c9351g.f32027s.f32059b = this;
        }
        c9351g.f32027s = this;
        this.f32060c = c9351g;
        this.f32061d = i;
        this.f32062e = c9351g.m24606a(str);
        this.f32063f = c9351g.m24606a(str2);
        if (str3 != null) {
            this.f32064g = c9351g.m24606a(str3);
        }
        if (obj != null) {
            this.f32065h = c9351g.m24607a(obj).f32091a;
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9354j
    /* renamed from: a */
    public final AbstractC9345a mo24586a(int i, C9365u c9365u, String str, boolean z) {
        C9348d c9348d = new C9348d();
        C9346b.m24665a(i, c9365u, c9348d);
        c9348d.m24646b(this.f32060c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32060c, true, c9348d, c9348d, c9348d.f31987b - 2);
        if (z) {
            c9346b.f31975c = this.f32068k;
            this.f32068k = c9346b;
        } else {
            c9346b.f31975c = this.f32069l;
            this.f32069l = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9354j
    /* renamed from: a */
    public final AbstractC9345a mo24584a(String str, boolean z) {
        C9348d c9348d = new C9348d();
        c9348d.m24646b(this.f32060c.m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this.f32060c, true, c9348d, c9348d, 2);
        if (z) {
            c9346b.f31975c = this.f32066i;
            this.f32066i = c9346b;
        } else {
            c9346b.f31975c = this.f32067j;
            this.f32067j = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9354j
    /* renamed from: a */
    public final void mo24585a(C9347c c9347c) {
        c9347c.f31985c = this.f32070m;
        this.f32070m = c9347c;
    }
}
