package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwq.class */
public final class bwq implements bsm<cqe, bug> {

    /* renamed from: a */
    private final Map<String, bsn<cqe, bug>> f44969a = new HashMap();

    /* renamed from: b */
    private final bjg f44970b;

    public bwq(bjg bjgVar) {
        this.f44970b = bjgVar;
    }

    @Override // com.google.android.gms.internal.ads.bsm
    /* renamed from: a */
    public final bsn<cqe, bug> mo17588a(String str, JSONObject jSONObject) throws zzdpq {
        bsn<cqe, bug> bsnVar;
        synchronized (this) {
            bsn<cqe, bug> bsnVar2 = this.f44969a.get(str);
            bsnVar = bsnVar2;
            if (bsnVar2 == null) {
                bsnVar = new bsn<>(this.f44970b.m17810a(str, jSONObject), new bug(), str);
                this.f44969a.put(str, bsnVar);
            }
        }
        return bsnVar;
    }
}
