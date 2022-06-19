package com.iab.omid.library.pubnativenet.p444g;

import com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b;
import com.iab.omid.library.pubnativenet.p444g.p445a.AsyncTaskC16466d;
import com.iab.omid.library.pubnativenet.p444g.p445a.C16465c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.g.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/c.class */
public final class C16471c implements AbstractAsyncTaskC16462b.AbstractC16464b {

    /* renamed from: a */
    final C16465c f58011a;

    /* renamed from: b */
    private JSONObject f58012b;

    public C16471c(C16465c c16465c) {
        this.f58011a = c16465c;
    }

    @Override // com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b.AbstractC16464b
    /* renamed from: a */
    public final JSONObject mo7184a() {
        return this.f58012b;
    }

    @Override // com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b.AbstractC16464b
    /* renamed from: a */
    public final void mo7183a(JSONObject jSONObject) {
        this.f58012b = jSONObject;
    }

    /* renamed from: b */
    public final void m7182b() {
        this.f58011a.m7189a(new AsyncTaskC16466d(this));
    }
}
