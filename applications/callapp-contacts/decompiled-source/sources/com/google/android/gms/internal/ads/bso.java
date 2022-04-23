package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bso.class */
public final class bso {

    /* renamed from: c  reason: collision with root package name */
    private cov f25017c = null;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, zzvx> f25016b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a  reason: collision with root package name */
    final List<zzvx> f25015a = Collections.synchronizedList(new ArrayList());

    public final arf a() {
        return new arf(this.f25017c, "", this);
    }

    public final void a(cov covVar) {
        String str = covVar.v;
        if (!this.f25016b.containsKey(str)) {
            Bundle bundle = new Bundle();
            Iterator<String> keys = covVar.u.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    bundle.putString(next, covVar.u.getString(next));
                } catch (JSONException e) {
                }
            }
            zzvx zzvxVar = new zzvx(covVar.D, 0L, null, bundle);
            this.f25015a.add(zzvxVar);
            this.f25016b.put(str, zzvxVar);
        }
    }

    public final void a(cov covVar, long j, zzvh zzvhVar) {
        String str = covVar.v;
        if (this.f25016b.containsKey(str)) {
            if (this.f25017c == null) {
                this.f25017c = covVar;
            }
            zzvx zzvxVar = this.f25016b.get(str);
            zzvxVar.zzcjb = j;
            zzvxVar.zzcjc = zzvhVar;
        }
    }
}
