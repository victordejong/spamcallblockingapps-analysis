package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beo.class */
public final class beo implements bcz {

    /* renamed from: a  reason: collision with root package name */
    private final nb f24279a;

    /* renamed from: b  reason: collision with root package name */
    private final nc f24280b;

    /* renamed from: c  reason: collision with root package name */
    private final nh f24281c;

    /* renamed from: d  reason: collision with root package name */
    private final asc f24282d;
    private final arj e;
    private final Context f;
    private final cov g;
    private final zzbar h;
    private final cpo i;
    private boolean j = false;
    private boolean k = false;
    private boolean l = true;

    public beo(nb nbVar, nc ncVar, nh nhVar, asc ascVar, arj arjVar, Context context, cov covVar, zzbar zzbarVar, cpo cpoVar) {
        this.f24279a = nbVar;
        this.f24280b = ncVar;
        this.f24281c = nhVar;
        this.f24282d = ascVar;
        this.e = arjVar;
        this.f = context;
        this.g = covVar;
        this.h = zzbarVar;
        this.i = cpoVar;
    }

    private static HashMap<String, View> a(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    private final boolean a(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        Object obj;
        JSONObject jSONObject = this.g.ae;
        if (!((Boolean) ekb.e().a(aq.bc)).booleanValue() || jSONObject.length() == 0) {
            return true;
        }
        Map<String, WeakReference<View>> map3 = map;
        if (map == null) {
            map3 = new HashMap<>();
        }
        Map<String, WeakReference<View>> map4 = map2;
        if (map2 == null) {
            map4 = new HashMap<>();
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(map3);
        hashMap.putAll(map4);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray optJSONArray = jSONObject.optJSONArray(next);
            if (optJSONArray != null) {
                WeakReference weakReference = (WeakReference) hashMap.get(next);
                if (weakReference == null || (obj = weakReference.get()) == null) {
                    return false;
                }
                Class<?> cls = obj.getClass();
                Class<?> cls2 = cls;
                if (((Boolean) ekb.e().a(aq.bd)).booleanValue()) {
                    cls2 = cls;
                    if (next.equals("3010")) {
                        Object h = h();
                        if (h == null) {
                            return false;
                        }
                        cls2 = h.getClass();
                    }
                }
                try {
                    ArrayList arrayList = new ArrayList();
                    zzbh.zza(optJSONArray, arrayList);
                    zzr.zzkv();
                    if (!zzj.zza(this.f.getClassLoader(), cls2, arrayList)) {
                        return false;
                    }
                } catch (JSONException e) {
                }
            }
        }
        return true;
    }

    private final void c(View view) {
        try {
            nh nhVar = this.f24281c;
            if (nhVar == null || nhVar.q()) {
                nb nbVar = this.f24279a;
                if (nbVar == null || nbVar.k()) {
                    nc ncVar = this.f24280b;
                    if (ncVar != null && !ncVar.i()) {
                        this.f24280b.a(d.a(view));
                        this.e.onAdClicked();
                        return;
                    }
                    return;
                }
                this.f24279a.a(d.a(view));
                this.e.onAdClicked();
                return;
            }
            this.f24281c.a(d.a(view));
            this.e.onAdClicked();
        } catch (RemoteException e) {
            zzd.zzd("Failed to call handleClick", e);
        }
    }

    private final Object h() {
        b m;
        nh nhVar = this.f24281c;
        if (nhVar != null) {
            try {
                m = nhVar.m();
            } catch (RemoteException e) {
                return null;
            }
        } else {
            nb nbVar = this.f24279a;
            if (nbVar != null) {
                try {
                    m = nbVar.p();
                } catch (RemoteException e2) {
                    return null;
                }
            } else {
                nc ncVar = this.f24280b;
                if (ncVar != null) {
                    try {
                        m = ncVar.n();
                    } catch (RemoteException e3) {
                        return null;
                    }
                } else {
                    m = null;
                }
            }
        }
        if (m == null) {
            return null;
        }
        try {
            return d.a(m);
        } catch (IllegalArgumentException e4) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final JSONObject a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a() {
        this.k = true;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(MotionEvent motionEvent, View view) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view) {
        try {
            b a2 = d.a(view);
            nh nhVar = this.f24281c;
            if (nhVar != null) {
                nhVar.b(a2);
                return;
            }
            nb nbVar = this.f24279a;
            if (nbVar != null) {
                nbVar.c(a2);
                return;
            }
            nc ncVar = this.f24280b;
            if (ncVar != null) {
                ncVar.c(a2);
            }
        } catch (RemoteException e) {
            zzd.zzd("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.k || !this.g.G) {
            c(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            b a2 = d.a(view);
            this.l = a(map, map2);
            HashMap<String, View> a3 = a(map);
            HashMap<String, View> a4 = a(map2);
            nh nhVar = this.f24281c;
            if (nhVar != null) {
                nhVar.a(a2, d.a(a3), d.a(a4));
                return;
            }
            nb nbVar = this.f24279a;
            if (nbVar != null) {
                nbVar.a(a2, d.a(a3), d.a(a4));
                this.f24279a.b(a2);
                return;
            }
            nc ncVar = this.f24280b;
            if (ncVar != null) {
                ncVar.a(a2, d.a(a3), d.a(a4));
                this.f24280b.b(a2);
            }
        } catch (RemoteException e) {
            zzd.zzd("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.k) {
            zzd.zzez("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.g.G) {
            zzd.zzez("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            c(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(elu eluVar) {
        zzd.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(ely elyVar) {
        zzd.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(fs fsVar) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void b(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void b(View view) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.j && this.g.B != null) {
                this.j |= zzr.zzlf().zzb(this.f, this.h.zzbrz, this.g.B.toString(), this.i.f);
            }
            if (this.l) {
                nh nhVar = this.f24281c;
                if (nhVar == null || nhVar.p()) {
                    nb nbVar = this.f24279a;
                    if (nbVar == null || nbVar.j()) {
                        nc ncVar = this.f24280b;
                        if (ncVar != null && !ncVar.h()) {
                            this.f24280b.g();
                            this.f24282d.a();
                            return;
                        }
                        return;
                    }
                    this.f24279a.i();
                    this.f24282d.a();
                    return;
                }
                this.f24281c.r();
                this.f24282d.a();
            }
        } catch (RemoteException e) {
            zzd.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final boolean b() {
        return this.g.G;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final boolean c(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void d() {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void e() {
        zzd.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void g() {
    }
}
