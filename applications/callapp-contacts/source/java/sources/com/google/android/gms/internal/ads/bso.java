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

    /* renamed from: c */
    private cov f44644c = null;

    /* renamed from: b */
    private final Map<String, zzvx> f44643b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    final List<zzvx> f44642a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final arf m17620a() {
        return new arf(this.f44644c, "", this);
    }

    /* renamed from: a */
    public final void m17619a(cov covVar) {
        String str = covVar.f46275v;
        if (this.f44643b.containsKey(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = covVar.f46274u.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, covVar.f46274u.getString(next));
            } catch (JSONException e) {
            }
        }
        zzvx zzvxVar = new zzvx(covVar.f46224D, 0L, null, bundle);
        this.f44642a.add(zzvxVar);
        this.f44643b.put(str, zzvxVar);
    }

    /* renamed from: a */
    public final void m17618a(cov covVar, long j, zzvh zzvhVar) {
        String str = covVar.f46275v;
        if (!this.f44643b.containsKey(str)) {
            return;
        }
        if (this.f44644c == null) {
            this.f44644c = covVar;
        }
        zzvx zzvxVar = this.f44643b.get(str);
        zzvxVar.zzcjb = j;
        zzvxVar.zzcjc = zzvhVar;
    }
}
