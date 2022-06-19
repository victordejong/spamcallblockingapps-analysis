package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* renamed from: com.google.android.gms.internal.consent_sdk.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/h.class */
public final class C13248h extends AbstractC13198bb {

    /* renamed from: a */
    private AbstractC13219bu<Application> f50471a;

    /* renamed from: b */
    private AbstractC13219bu<C13253m> f50472b;

    /* renamed from: c */
    private AbstractC13219bu<C13225c> f50473c;

    /* renamed from: d */
    private AbstractC13219bu<AbstractC13262v> f50474d;

    /* renamed from: e */
    private AbstractC13219bu<C13170aa> f50475e;

    /* renamed from: f */
    private AbstractC13219bu<C13171ab> f50476f;

    /* renamed from: g */
    private AbstractC13219bu<C13231cf> f50477g;

    /* renamed from: h */
    private AbstractC13219bu<C13222bx> f50478h;

    /* renamed from: i */
    private AbstractC13219bu<C13251k> f50479i;

    /* renamed from: j */
    private AbstractC13219bu<C13243cr> f50480j;

    /* renamed from: k */
    private AbstractC13219bu<C13233ch> f50481k;

    /* renamed from: l */
    private AbstractC13219bu<C13228cc> f50482l;

    private C13248h(Application application) {
        C13246f c13246f;
        C13257q c13257q;
        C13257q c13257q2;
        C13255o c13255o;
        C13257q c13257q3;
        AbstractC13215bq m13554a = C13218bt.m13554a(application);
        this.f50471a = m13554a;
        this.f50472b = C13216br.m13555a(new C13256p(m13554a));
        c13246f = C13245e.f50469a;
        this.f50473c = C13216br.m13555a(c13246f);
        C13247g c13247g = new C13247g(this);
        this.f50474d = c13247g;
        this.f50475e = C13216br.m13555a(new C13174ae(c13247g));
        C13221bw c13221bw = new C13221bw(this.f50471a);
        this.f50476f = c13221bw;
        this.f50477g = new C13234ci(this.f50471a, c13221bw, this.f50472b);
        c13257q = C13260t.f50503a;
        this.f50478h = C13216br.m13555a(new C13226ca(c13257q));
        AbstractC13219bu<Application> abstractC13219bu = this.f50471a;
        AbstractC13219bu<C13253m> abstractC13219bu2 = this.f50472b;
        c13257q2 = C13260t.f50503a;
        C13254n c13254n = new C13254n(abstractC13219bu, abstractC13219bu2, c13257q2);
        this.f50479i = c13254n;
        this.f50480j = new C13244d(this.f50478h, c13254n, this.f50472b);
        AbstractC13219bu<Application> abstractC13219bu3 = this.f50471a;
        AbstractC13219bu<C13225c> abstractC13219bu4 = this.f50473c;
        c13255o = C13258r.f50502a;
        c13257q3 = C13260t.f50503a;
        C13239cn c13239cn = new C13239cn(abstractC13219bu3, abstractC13219bu4, c13255o, c13257q3, this.f50472b, this.f50475e, this.f50477g, this.f50480j, this.f50478h);
        this.f50481k = c13239cn;
        this.f50482l = C13216br.m13555a(new C13230ce(this.f50472b, c13239cn, this.f50475e));
    }

    public /* synthetic */ C13248h(Application application, C13247g c13247g) {
        this(application);
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13198bb
    /* renamed from: a */
    public final C13228cc mo13541a() {
        return this.f50482l.mo13528a();
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13198bb
    /* renamed from: b */
    public final C13170aa mo13539b() {
        return this.f50475e.mo13528a();
    }
}
