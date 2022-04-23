package com.iab.omid.library.pubnativenet.g;

import com.iab.omid.library.pubnativenet.g.a.b;
import com.iab.omid.library.pubnativenet.g.a.d;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/c.class */
public final class c implements b.AbstractC0536b {

    /* renamed from: a  reason: collision with root package name */
    final com.iab.omid.library.pubnativenet.g.a.c f33419a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f33420b;

    public c(com.iab.omid.library.pubnativenet.g.a.c cVar) {
        this.f33419a = cVar;
    }

    @Override // com.iab.omid.library.pubnativenet.g.a.b.AbstractC0536b
    public final JSONObject a() {
        return this.f33420b;
    }

    @Override // com.iab.omid.library.pubnativenet.g.a.b.AbstractC0536b
    public final void a(JSONObject jSONObject) {
        this.f33420b = jSONObject;
    }

    public final void b() {
        this.f33419a.a(new d(this));
    }
}
