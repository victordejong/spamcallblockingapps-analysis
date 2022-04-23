package com.iab.omid.library.verizonmedia.g;

import com.iab.omid.library.verizonmedia.g.a.b;
import com.iab.omid.library.verizonmedia.g.a.d;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/c.class */
public final class c implements b.AbstractC0539b {

    /* renamed from: a  reason: collision with root package name */
    final com.iab.omid.library.verizonmedia.g.a.c f33515a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f33516b;

    public c(com.iab.omid.library.verizonmedia.g.a.c cVar) {
        this.f33515a = cVar;
    }

    @Override // com.iab.omid.library.verizonmedia.g.a.b.AbstractC0539b
    public final JSONObject a() {
        return this.f33516b;
    }

    @Override // com.iab.omid.library.verizonmedia.g.a.b.AbstractC0539b
    public final void a(JSONObject jSONObject) {
        this.f33516b = jSONObject;
    }

    public final void b() {
        this.f33515a.a(new d(this));
    }
}
