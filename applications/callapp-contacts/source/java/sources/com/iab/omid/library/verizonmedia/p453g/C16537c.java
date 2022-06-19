package com.iab.omid.library.verizonmedia.p453g;

import com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b;
import com.iab.omid.library.verizonmedia.p453g.p454a.AsyncTaskC16532d;
import com.iab.omid.library.verizonmedia.p453g.p454a.C16531c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.g.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/c.class */
public final class C16537c implements AbstractAsyncTaskC16528b.AbstractC16530b {

    /* renamed from: a */
    final C16531c f58143a;

    /* renamed from: b */
    private JSONObject f58144b;

    public C16537c(C16531c c16531c) {
        this.f58143a = c16531c;
    }

    @Override // com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b.AbstractC16530b
    /* renamed from: a */
    public final JSONObject mo7066a() {
        return this.f58144b;
    }

    @Override // com.iab.omid.library.verizonmedia.p453g.p454a.AbstractAsyncTaskC16528b.AbstractC16530b
    /* renamed from: a */
    public final void mo7065a(JSONObject jSONObject) {
        this.f58144b = jSONObject;
    }

    /* renamed from: b */
    public final void m7064b() {
        this.f58143a.m7071a(new AsyncTaskC16532d(this));
    }
}
