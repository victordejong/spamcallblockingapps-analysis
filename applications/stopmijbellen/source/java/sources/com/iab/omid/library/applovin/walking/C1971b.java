package com.iab.omid.library.applovin.walking;

import com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b;
import com.iab.omid.library.applovin.walking.p064a.AsyncTaskC1968d;
import com.iab.omid.library.applovin.walking.p064a.AsyncTaskC1969e;
import com.iab.omid.library.applovin.walking.p064a.AsyncTaskC1970f;
import com.iab.omid.library.applovin.walking.p064a.C1967c;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.walking.b */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/walking/b.class */
public class C1971b implements AbstractAsyncTaskC1964b.AbstractC1966b {

    /* renamed from: a */
    private JSONObject f7250a;

    /* renamed from: b */
    private final C1967c f7251b;

    public C1971b(C1967c c1967c) {
        this.f7251b = c1967c;
    }

    /* renamed from: a */
    public void m3994a() {
        this.f7251b.m4001b(new AsyncTaskC1968d(this));
    }

    @Override // com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b.AbstractC1966b
    /* renamed from: a */
    public void mo3993a(JSONObject jSONObject) {
        this.f7250a = jSONObject;
    }

    /* renamed from: a */
    public void m3992a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f7251b.m4001b(new AsyncTaskC1970f(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b.AbstractC1966b
    /* renamed from: b */
    public JSONObject mo3991b() {
        return this.f7250a;
    }

    /* renamed from: b */
    public void m3990b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f7251b.m4001b(new AsyncTaskC1969e(this, hashSet, jSONObject, j));
    }
}
