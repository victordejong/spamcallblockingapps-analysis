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
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
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

    /* renamed from: a */
    private final AbstractC12763nb f43728a;

    /* renamed from: b */
    private final AbstractC12764nc f43729b;

    /* renamed from: c */
    private final AbstractC12769nh f43730c;

    /* renamed from: d */
    private final asc f43731d;

    /* renamed from: e */
    private final arj f43732e;

    /* renamed from: f */
    private final Context f43733f;

    /* renamed from: g */
    private final cov f43734g;

    /* renamed from: h */
    private final zzbar f43735h;

    /* renamed from: i */
    private final cpo f43736i;

    /* renamed from: j */
    private boolean f43737j = false;

    /* renamed from: k */
    private boolean f43738k = false;

    /* renamed from: l */
    private boolean f43739l = true;

    public beo(AbstractC12763nb abstractC12763nb, AbstractC12764nc abstractC12764nc, AbstractC12769nh abstractC12769nh, asc ascVar, arj arjVar, Context context, cov covVar, zzbar zzbarVar, cpo cpoVar) {
        this.f43728a = abstractC12763nb;
        this.f43729b = abstractC12764nc;
        this.f43730c = abstractC12769nh;
        this.f43731d = ascVar;
        this.f43732e = arjVar;
        this.f43733f = context;
        this.f43734g = covVar;
        this.f43735h = zzbarVar;
        this.f43736i = cpoVar;
    }

    /* renamed from: a */
    private static HashMap<String, View> m17906a(Map<String, WeakReference<View>> map) {
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

    /* renamed from: a */
    private final boolean m17905a(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        Object obj;
        JSONObject jSONObject = this.f43734g.f46252ae;
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42719bc)).booleanValue() || jSONObject.length() == 0) {
            return true;
        }
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        HashMap hashMap2 = map2;
        if (map2 == null) {
            hashMap2 = new HashMap();
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray optJSONArray = jSONObject.optJSONArray(next);
            if (optJSONArray != null) {
                WeakReference weakReference = (WeakReference) hashMap3.get(next);
                if (weakReference == null || (obj = weakReference.get()) == null) {
                    return false;
                }
                Class<?> cls = obj.getClass();
                Class<?> cls2 = cls;
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42720bd)).booleanValue()) {
                    cls2 = cls;
                    if (next.equals("3010")) {
                        Object m17893h = m17893h();
                        if (m17893h == null) {
                            return false;
                        }
                        cls2 = m17893h.getClass();
                    }
                }
                try {
                    ArrayList arrayList = new ArrayList();
                    zzbh.zza(optJSONArray, arrayList);
                    zzr.zzkv();
                    if (!zzj.zza(this.f43733f.getClassLoader(), cls2, arrayList)) {
                        return false;
                    }
                } catch (JSONException e) {
                }
            }
        }
        return true;
    }

    /* renamed from: c */
    private final void m17898c(View view) {
        try {
            AbstractC12769nh abstractC12769nh = this.f43730c;
            if (abstractC12769nh != null && !abstractC12769nh.mo14309q()) {
                this.f43730c.mo14327a(BinderC12129d.m18979a(view));
                this.f43732e.onAdClicked();
                return;
            }
            AbstractC12763nb abstractC12763nb = this.f43728a;
            if (abstractC12763nb != null && !abstractC12763nb.mo14377k()) {
                this.f43728a.mo14390a(BinderC12129d.m18979a(view));
                this.f43732e.onAdClicked();
                return;
            }
            AbstractC12764nc abstractC12764nc = this.f43729b;
            if (abstractC12764nc == null || abstractC12764nc.mo14398i()) {
                return;
            }
            this.f43729b.mo14409a(BinderC12129d.m18979a(view));
            this.f43732e.onAdClicked();
        } catch (RemoteException e) {
            zzd.zzd("Failed to call handleClick", e);
        }
    }

    /* renamed from: h */
    private final Object m17893h() {
        AbstractC12126b mo14313m;
        AbstractC12769nh abstractC12769nh = this.f43730c;
        if (abstractC12769nh != null) {
            try {
                mo14313m = abstractC12769nh.mo14313m();
            } catch (RemoteException e) {
                return null;
            }
        } else {
            AbstractC12763nb abstractC12763nb = this.f43728a;
            if (abstractC12763nb != null) {
                try {
                    mo14313m = abstractC12763nb.mo14372p();
                } catch (RemoteException e2) {
                    return null;
                }
            } else {
                AbstractC12764nc abstractC12764nc = this.f43729b;
                if (abstractC12764nc != null) {
                    try {
                        mo14313m = abstractC12764nc.mo14393n();
                    } catch (RemoteException e3) {
                        return null;
                    }
                } else {
                    mo14313m = null;
                }
            }
        }
        if (mo14313m != null) {
            try {
                return BinderC12129d.m18980a(mo14313m);
            } catch (IllegalArgumentException e4) {
                return null;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final JSONObject mo17913a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17918a() {
        this.f43738k = true;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17917a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17916a(MotionEvent motionEvent, View view) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17915a(View view) {
        try {
            AbstractC12126b m18979a = BinderC12129d.m18979a(view);
            AbstractC12769nh abstractC12769nh = this.f43730c;
            if (abstractC12769nh != null) {
                abstractC12769nh.mo14324b(m18979a);
                return;
            }
            AbstractC12763nb abstractC12763nb = this.f43728a;
            if (abstractC12763nb != null) {
                abstractC12763nb.mo14385c(m18979a);
                return;
            }
            AbstractC12764nc abstractC12764nc = this.f43729b;
            if (abstractC12764nc == null) {
                return;
            }
            abstractC12764nc.mo14404c(m18979a);
        } catch (RemoteException e) {
            zzd.zzd("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17914a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f43738k || !this.f43734g.f46227G) {
            m17898c(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17912a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            AbstractC12126b m18979a = BinderC12129d.m18979a(view);
            this.f43739l = m17905a(map, map2);
            HashMap<String, View> m17906a = m17906a(map);
            HashMap<String, View> m17906a2 = m17906a(map2);
            AbstractC12769nh abstractC12769nh = this.f43730c;
            if (abstractC12769nh != null) {
                abstractC12769nh.mo14326a(m18979a, BinderC12129d.m18979a(m17906a), BinderC12129d.m18979a(m17906a2));
                return;
            }
            AbstractC12763nb abstractC12763nb = this.f43728a;
            if (abstractC12763nb != null) {
                abstractC12763nb.mo14389a(m18979a, BinderC12129d.m18979a(m17906a), BinderC12129d.m18979a(m17906a2));
                this.f43728a.mo14387b(m18979a);
                return;
            }
            AbstractC12764nc abstractC12764nc = this.f43729b;
            if (abstractC12764nc == null) {
                return;
            }
            abstractC12764nc.mo14408a(m18979a, BinderC12129d.m18979a(m17906a), BinderC12129d.m18979a(m17906a2));
            this.f43729b.mo14406b(m18979a);
        } catch (RemoteException e) {
            zzd.zzd("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17911a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f43738k) {
            zzd.zzez("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.f43734g.f46227G) {
            zzd.zzez("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            m17898c(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17910a(elu eluVar) {
        zzd.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17909a(ely elyVar) {
        zzd.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17908a(AbstractC12563fs abstractC12563fs) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17907a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final void mo17903b(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final void mo17902b(View view) {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final void mo17901b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f43737j && this.f43734g.f46222B != null) {
                this.f43737j |= zzr.zzlf().zzb(this.f43733f, this.f43735h.zzbrz, this.f43734g.f46222B.toString(), this.f43736i.f46326f);
            }
            if (!this.f43739l) {
                return;
            }
            AbstractC12769nh abstractC12769nh = this.f43730c;
            if (abstractC12769nh != null && !abstractC12769nh.mo14310p()) {
                this.f43730c.mo14308r();
                this.f43731d.m18434a();
                return;
            }
            AbstractC12763nb abstractC12763nb = this.f43728a;
            if (abstractC12763nb != null && !abstractC12763nb.mo14378j()) {
                this.f43728a.mo14379i();
                this.f43731d.m18434a();
                return;
            }
            AbstractC12764nc abstractC12764nc = this.f43729b;
            if (abstractC12764nc == null || abstractC12764nc.mo14399h()) {
                return;
            }
            this.f43729b.mo14400g();
            this.f43731d.m18434a();
        } catch (RemoteException e) {
            zzd.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final boolean mo17904b() {
        return this.f43734g.f46227G;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: c */
    public final void mo17900c() {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: c */
    public final boolean mo17899c(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: d */
    public final void mo17897d() {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: e */
    public final void mo17896e() {
        zzd.zzez("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: f */
    public final void mo17895f() {
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: g */
    public final void mo17894g() {
    }
}
