package com.iab.omid.library.mopub.p435g;

import com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b;
import com.iab.omid.library.mopub.p435g.p436a.AsyncTaskC16400d;
import com.iab.omid.library.mopub.p435g.p436a.C16399c;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.g.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/c.class */
public final class C16405c implements AbstractAsyncTaskC16396b.AbstractC16398b {

    /* renamed from: a */
    final C16399c f57882a;

    /* renamed from: b */
    private JSONObject f57883b;

    public C16405c(C16399c c16399c) {
        this.f57882a = c16399c;
    }

    @Override // com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b.AbstractC16398b
    /* renamed from: a */
    public final JSONObject mo7288a() {
        return this.f57883b;
    }

    @Override // com.iab.omid.library.mopub.p435g.p436a.AbstractAsyncTaskC16396b.AbstractC16398b
    /* renamed from: a */
    public final void mo7287a(JSONObject jSONObject) {
        this.f57883b = jSONObject;
    }

    /* renamed from: b */
    public final void m7286b() {
        this.f57882a.m7293a(new AsyncTaskC16400d(this));
    }
}
