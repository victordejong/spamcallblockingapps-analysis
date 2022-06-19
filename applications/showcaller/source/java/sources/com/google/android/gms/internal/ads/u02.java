package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u02.class */
public final class u02 implements sw1<ok2, ny1> {

    /* renamed from: a */
    private final Map<String, tw1<ok2, ny1>> f30460a = new HashMap();

    /* renamed from: b */
    private final ol1 f30461b;

    public u02(ol1 ol1Var) {
        this.f30461b = ol1Var;
    }

    @Override // com.google.android.gms.internal.ads.sw1
    /* renamed from: a */
    public final tw1<ok2, ny1> mo10443a(String str, JSONObject jSONObject) {
        tw1<ok2, ny1> tw1Var;
        synchronized (this) {
            tw1<ok2, ny1> tw1Var2 = this.f30460a.get(str);
            tw1Var = tw1Var2;
            if (tw1Var2 == null) {
                tw1Var = new tw1<>(this.f30461b.m12597b(str, jSONObject), new ny1(), str);
                this.f30460a.put(str, tw1Var);
            }
        }
        return tw1Var;
    }
}
