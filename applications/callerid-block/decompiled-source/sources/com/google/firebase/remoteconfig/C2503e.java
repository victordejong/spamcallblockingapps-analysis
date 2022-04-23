package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import com.google.firebase.abt.AbtException;
import com.google.firebase.abt.b;
import com.google.firebase.c;
import com.google.firebase.installations.g;
import com.google.firebase.remoteconfig.internal.C2514e;
import com.google.firebase.remoteconfig.internal.C2517f;
import com.google.firebase.remoteconfig.internal.C2524k;
import com.google.firebase.remoteconfig.internal.C2527m;
import com.google.firebase.remoteconfig.internal.C2528n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.remoteconfig.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/e.class */
public class C2503e {

    /* renamed from: a */
    private final b f10767a;

    /* renamed from: b */
    private final Executor f10768b;

    /* renamed from: c */
    private final C2514e f10769c;

    /* renamed from: d */
    private final C2514e f10770d;

    /* renamed from: e */
    private final C2514e f10771e;

    /* renamed from: f */
    private final C2524k f10772f;

    /* renamed from: g */
    private final C2527m f10773g;

    /* renamed from: h */
    private final C2528n f10774h;

    /* renamed from: i */
    private final g f10775i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2503e(Context context, c cVar, g gVar, b bVar, Executor executor, C2514e eVar, C2514e eVar2, C2514e eVar3, C2524k kVar, C2527m mVar, C2528n nVar) {
        this.f10775i = gVar;
        this.f10767a = bVar;
        this.f10768b = executor;
        this.f10769c = eVar;
        this.f10770d = eVar2;
        this.f10771e = eVar3;
        this.f10772f = kVar;
        this.f10773g = mVar;
        this.f10774h = nVar;
    }

    /* renamed from: g */
    private static boolean m3305g(C2517f fVar, C2517f fVar2) {
        return fVar2 == null || !fVar.m3256e().equals(fVar2.m3256e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ AbstractC2397g m3304h(C2503e eVar, AbstractC2397g gVar, AbstractC2397g gVar2, AbstractC2397g gVar3) {
        if (!gVar.m3772o() || gVar.m3776k() == null) {
            return C2401j.m3760e(Boolean.FALSE);
        }
        C2517f fVar = (C2517f) gVar.m3776k();
        return (!gVar2.m3772o() || m3305g(fVar, (C2517f) gVar2.m3776k())) ? eVar.f10770d.m3267i(fVar).m3780g(eVar.f10768b, C2499a.m3315b(eVar)) : C2401j.m3760e(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public boolean m3301k(AbstractC2397g<C2517f> gVar) {
        if (!gVar.m3772o()) {
            return false;
        }
        this.f10769c.m3274b();
        if (gVar.m3776k() != null) {
            m3298n(gVar.m3776k().m3258c());
            return true;
        }
        Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
        return true;
    }

    /* renamed from: m */
    static List<Map<String, String>> m3299m(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    /* renamed from: b */
    public AbstractC2397g<Boolean> m3310b() {
        AbstractC2397g<C2517f> c = this.f10769c.m3273c();
        AbstractC2397g<C2517f> c2 = this.f10770d.m3273c();
        return C2401j.m3756i(c, c2).m3778i(this.f10768b, C2501c.m3313b(this, c, c2));
    }

    /* renamed from: c */
    public AbstractC2397g<Void> m3309c() {
        return this.f10772f.m3239d().m3771p(C2502d.m3312b());
    }

    /* renamed from: d */
    public AbstractC2397g<Boolean> m3308d() {
        return m3309c().m3770q(this.f10768b, C2500b.m3314b(this));
    }

    /* renamed from: e */
    public Map<String, AbstractC2508h> m3307e() {
        return this.f10773g.m3213c();
    }

    /* renamed from: f */
    public AbstractC2504f m3306f() {
        return this.f10774h.m3204c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m3300l() {
        this.f10770d.m3273c();
        this.f10771e.m3273c();
        this.f10769c.m3273c();
    }

    /* renamed from: n */
    void m3298n(JSONArray jSONArray) {
        if (this.f10767a != null) {
            try {
                this.f10767a.k(m3299m(jSONArray));
            } catch (JSONException e) {
                Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e);
            } catch (AbtException e2) {
                Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e2);
            }
        }
    }
}
