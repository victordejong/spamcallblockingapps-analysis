package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ww */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ww.class */
public final class C3612ww extends dts<drt> {

    /* renamed from: a */
    private final C3658yo<drt> f17574a;

    /* renamed from: b */
    private final Map<String, String> f17575b;

    /* renamed from: c */
    private final C3638xv f17576c;

    public C3612ww(String str, C3658yo<drt> c3658yo) {
        this(str, null, c3658yo);
    }

    private C3612ww(String str, Map<String, String> map, C3658yo<drt> c3658yo) {
        super(0, str, new C3611wv(c3658yo));
        this.f17575b = null;
        this.f17574a = c3658yo;
        this.f17576c = new C3638xv();
        this.f17576c.m6772a(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.dts
    /* renamed from: a */
    public final ecj<drt> mo6863a(drt drtVar) {
        return ecj.m7910a(drtVar, C3441qn.m7303a(drtVar));
    }

    @Override // com.google.android.gms.internal.ads.dts
    /* renamed from: a */
    public final /* synthetic */ void mo6862a(drt drtVar) {
        drt drtVar2 = drtVar;
        this.f17576c.m6768a(drtVar2.f15523c, drtVar2.f15521a);
        C3638xv c3638xv = this.f17576c;
        byte[] bArr = drtVar2.f15522b;
        if (C3638xv.m6760c() && bArr != null) {
            c3638xv.m6766a(bArr);
        }
        this.f17574a.m6731b(drtVar2);
    }
}
