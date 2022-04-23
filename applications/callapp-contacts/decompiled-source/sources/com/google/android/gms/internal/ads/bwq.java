package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwq.class */
public final class bwq implements bsm<cqe, bug> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, bsn<cqe, bug>> f25289a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final bjg f25290b;

    public bwq(bjg bjgVar) {
        this.f25290b = bjgVar;
    }

    @Override // com.google.android.gms.internal.ads.bsm
    public final bsn<cqe, bug> a(String str, JSONObject jSONObject) throws zzdpq {
        bsn<cqe, bug> bsnVar;
        synchronized (this) {
            bsn<cqe, bug> bsnVar2 = this.f25289a.get(str);
            bsnVar = bsnVar2;
            if (bsnVar2 == null) {
                bsnVar = new bsn<>(this.f25290b.a(str, jSONObject), new bug(), str);
                this.f25289a.put(str, bsnVar);
            }
        }
        return bsnVar;
    }
}
