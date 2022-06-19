package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.qq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qq.class */
public final class C3444qq implements AbstractC3428qa {

    /* renamed from: a */
    private AbstractC3244jf<JSONObject, JSONObject> f17295a;

    /* renamed from: b */
    private AbstractC3244jf<JSONObject, JSONObject> f17296b;

    public C3444qq(Context context) {
        this.f17295a = C2341q.m14731p().m7731a(context, C3647yd.m6741a()).m7725a("google.afma.request.getAdDictionary", C3247ji.f16804a, C3247ji.f16804a);
        this.f17296b = C2341q.m14731p().m7731a(context, C3647yd.m6741a()).m7725a("google.afma.sdkConstants.getSdkConstants", C3247ji.f16804a, C3247ji.f16804a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3428qa
    /* renamed from: a */
    public final AbstractC3244jf<JSONObject, JSONObject> mo7299a() {
        return this.f17296b;
    }
}
