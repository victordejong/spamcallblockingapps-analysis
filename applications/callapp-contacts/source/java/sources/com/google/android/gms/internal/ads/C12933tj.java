package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.tj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tj.class */
public final class C12933tj implements AbstractC12921sy {

    /* renamed from: a */
    private AbstractC12713lg<JSONObject, JSONObject> f49876a;

    /* renamed from: b */
    private AbstractC12713lg<JSONObject, JSONObject> f49877b;

    public C12933tj(Context context) {
        C12720ln m14528a = zzr.zzli().m14528a(context, zzbar.zzaau());
        AbstractC12716lj<JSONObject> abstractC12716lj = C12719lm.f49472a;
        this.f49876a = m14528a.m14525a("google.afma.request.getAdDictionary", abstractC12716lj, abstractC12716lj);
        C12720ln m14528a2 = zzr.zzli().m14528a(context, zzbar.zzaau());
        AbstractC12716lj<JSONObject> abstractC12716lj2 = C12719lm.f49472a;
        this.f49877b = m14528a2.m14525a("google.afma.sdkConstants.getSdkConstants", abstractC12716lj2, abstractC12716lj2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12921sy
    /* renamed from: a */
    public final AbstractC12713lg<JSONObject, JSONObject> mo14175a() {
        return this.f49877b;
    }
}
