package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uw1.class */
public final class uw1 {

    /* renamed from: c */
    private jj2 f30990c = null;

    /* renamed from: d */
    private ej2 f30991d = null;

    /* renamed from: b */
    private final Map<String, zzbdp> f30989b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    private final List<zzbdp> f30988a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final void m10171a(jj2 jj2Var) {
        this.f30990c = jj2Var;
    }

    /* renamed from: b */
    public final void m10170b(ej2 ej2Var) {
        String str = ej2Var.f22251w;
        if (this.f30989b.containsKey(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = ej2Var.f22250v.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, ej2Var.f22250v.getString(next));
            } catch (JSONException e) {
            }
        }
        zzbdp zzbdpVar = new zzbdp(ej2Var.f22197E, 0L, null, bundle);
        this.f30988a.add(zzbdpVar);
        this.f30989b.put(str, zzbdpVar);
    }

    /* renamed from: c */
    public final void m10169c(ej2 ej2Var, long j, zzbcz zzbczVar) {
        String str = ej2Var.f22251w;
        if (!this.f30989b.containsKey(str)) {
            return;
        }
        if (this.f30991d == null) {
            this.f30991d = ej2Var;
        }
        zzbdp zzbdpVar = this.f30989b.get(str);
        zzbdpVar.f33702e = j;
        zzbdpVar.f33703f = zzbczVar;
    }

    /* renamed from: d */
    public final q21 m10168d() {
        return new q21(this.f30991d, "", this, this.f30990c);
    }

    /* renamed from: e */
    public final List<zzbdp> m10167e() {
        return this.f30988a;
    }
}
