package com.google.android.gms.internal.consent_sdk;
/* renamed from: com.google.android.gms.internal.consent_sdk.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/l.class */
final class C13252l implements AbstractC13259s {

    /* renamed from: a */
    private AbstractC13219bu<C13178ai> f50489a;

    /* renamed from: b */
    private AbstractC13219bu<C13173ad> f50490b;

    /* renamed from: c */
    private AbstractC13219bu<C13261u> f50491c;

    /* renamed from: d */
    private AbstractC13219bu f50492d;

    /* renamed from: e */
    private AbstractC13219bu<zzbe> f50493e;

    /* renamed from: f */
    private final /* synthetic */ C13248h f50494f;

    private C13252l(C13248h c13248h, C13173ad c13173ad) {
        AbstractC13219bu abstractC13219bu;
        AbstractC13219bu abstractC13219bu2;
        C13255o c13255o;
        C13257q c13257q;
        AbstractC13219bu abstractC13219bu3;
        AbstractC13219bu abstractC13219bu4;
        C13255o c13255o2;
        AbstractC13219bu abstractC13219bu5;
        AbstractC13219bu abstractC13219bu6;
        AbstractC13219bu abstractC13219bu7;
        this.f50494f = c13248h;
        abstractC13219bu = c13248h.f50471a;
        this.f50489a = C13216br.m13555a(new C13181al(abstractC13219bu));
        this.f50490b = C13218bt.m13554a(c13173ad);
        this.f50491c = new C13213bo();
        abstractC13219bu2 = c13248h.f50471a;
        AbstractC13219bu<C13178ai> abstractC13219bu8 = this.f50489a;
        c13255o = C13258r.f50502a;
        c13257q = C13260t.f50503a;
        abstractC13219bu3 = c13248h.f50478h;
        abstractC13219bu4 = c13248h.f50479i;
        this.f50492d = new C13185ap(abstractC13219bu2, abstractC13219bu8, c13255o, c13257q, abstractC13219bu3, abstractC13219bu4, this.f50491c);
        AbstractC13219bu<C13178ai> abstractC13219bu9 = this.f50489a;
        c13255o2 = C13258r.f50502a;
        this.f50493e = new C13179aj(abstractC13219bu9, c13255o2, this.f50492d);
        AbstractC13219bu<C13261u> abstractC13219bu10 = this.f50491c;
        abstractC13219bu5 = c13248h.f50471a;
        abstractC13219bu6 = c13248h.f50473c;
        AbstractC13219bu<C13178ai> abstractC13219bu11 = this.f50489a;
        abstractC13219bu7 = c13248h.f50472b;
        AbstractC13219bu<T> m13555a = C13216br.m13555a(new C13172ac(abstractC13219bu5, abstractC13219bu6, abstractC13219bu11, abstractC13219bu7, this.f50490b, this.f50493e));
        C13220bv.m13553a(m13555a);
        C13213bo c13213bo = (C13213bo) abstractC13219bu10;
        if (c13213bo.f50397a == null) {
            c13213bo.f50397a = m13555a;
            return;
        }
        throw new IllegalStateException();
    }

    public /* synthetic */ C13252l(C13248h c13248h, C13173ad c13173ad, C13247g c13247g) {
        this(c13248h, c13173ad);
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13259s
    /* renamed from: a */
    public final C13261u mo13526a() {
        return this.f50491c.mo13528a();
    }
}
