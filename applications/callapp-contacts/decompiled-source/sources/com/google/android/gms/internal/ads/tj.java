package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tj.class */
public final class tj implements sy {

    /* renamed from: a  reason: collision with root package name */
    private lg<JSONObject, JSONObject> f28404a;

    /* renamed from: b  reason: collision with root package name */
    private lg<JSONObject, JSONObject> f28405b;

    public tj(Context context) {
        ln a2 = zzr.zzli().a(context, zzbar.zzaau());
        lj<JSONObject> ljVar = lm.f28155a;
        this.f28404a = a2.a("google.afma.request.getAdDictionary", ljVar, ljVar);
        ln a3 = zzr.zzli().a(context, zzbar.zzaau());
        lj<JSONObject> ljVar2 = lm.f28155a;
        this.f28405b = a3.a("google.afma.sdkConstants.getSdkConstants", ljVar2, ljVar2);
    }

    @Override // com.google.android.gms.internal.ads.sy
    public final lg<JSONObject, JSONObject> a() {
        return this.f28405b;
    }
}
