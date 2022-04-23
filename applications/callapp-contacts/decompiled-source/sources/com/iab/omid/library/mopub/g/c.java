package com.iab.omid.library.mopub.g;

import com.iab.omid.library.mopub.g.a.b;
import com.iab.omid.library.mopub.g.a.d;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/c.class */
public final class c implements b.AbstractC0533b {

    /* renamed from: a  reason: collision with root package name */
    final com.iab.omid.library.mopub.g.a.c f33324a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f33325b;

    public c(com.iab.omid.library.mopub.g.a.c cVar) {
        this.f33324a = cVar;
    }

    @Override // com.iab.omid.library.mopub.g.a.b.AbstractC0533b
    public final JSONObject a() {
        return this.f33325b;
    }

    @Override // com.iab.omid.library.mopub.g.a.b.AbstractC0533b
    public final void a(JSONObject jSONObject) {
        this.f33325b = jSONObject;
    }

    public final void b() {
        this.f33324a.a(new d(this));
    }
}
