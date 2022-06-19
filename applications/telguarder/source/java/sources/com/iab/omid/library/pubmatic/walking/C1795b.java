package com.iab.omid.library.pubmatic.walking;

import com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b;
import com.iab.omid.library.pubmatic.walking.p016a.AsyncTaskC1792d;
import com.iab.omid.library.pubmatic.walking.p016a.AsyncTaskC1793e;
import com.iab.omid.library.pubmatic.walking.p016a.AsyncTaskC1794f;
import com.iab.omid.library.pubmatic.walking.p016a.C1791c;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.walking.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/b.class */
public class C1795b implements AbstractAsyncTaskC1788b.AbstractC1790b {

    /* renamed from: a */
    private JSONObject f316a;

    /* renamed from: b */
    private final C1791c f317b;

    public C1795b(C1791c c1791c) {
        this.f317b = c1791c;
    }

    /* renamed from: a */
    public void m1135a() {
        this.f317b.m1142b(new AsyncTaskC1792d(this));
    }

    @Override // com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b.AbstractC1790b
    /* renamed from: a */
    public void mo1134a(JSONObject jSONObject) {
        this.f316a = jSONObject;
    }

    /* renamed from: a */
    public void m1133a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f317b.m1142b(new AsyncTaskC1794f(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b.AbstractC1790b
    /* renamed from: b */
    public JSONObject mo1132b() {
        return this.f316a;
    }

    /* renamed from: b */
    public void m1131b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f317b.m1142b(new AsyncTaskC1793e(this, hashSet, jSONObject, j));
    }
}
