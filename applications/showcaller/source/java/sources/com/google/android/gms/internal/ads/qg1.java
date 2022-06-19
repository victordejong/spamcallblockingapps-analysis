package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5748x0;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qg1.class */
public final class qg1 implements ze1 {

    /* renamed from: a */
    private final h80 f28469a;

    /* renamed from: b */
    private final q31 f28470b;

    /* renamed from: c */
    private final w21 f28471c;

    /* renamed from: d */
    private final oa1 f28472d;

    /* renamed from: e */
    private final Context f28473e;

    /* renamed from: f */
    private final ej2 f28474f;

    /* renamed from: g */
    private final zzcgz f28475g;

    /* renamed from: h */
    private final xj2 f28476h;

    /* renamed from: i */
    private boolean f28477i = false;

    /* renamed from: j */
    private boolean f28478j = false;

    /* renamed from: k */
    private boolean f28479k = true;

    /* renamed from: l */
    private final d80 f28480l;

    /* renamed from: m */
    private final e80 f28481m;

    public qg1(d80 d80Var, e80 e80Var, h80 h80Var, q31 q31Var, w21 w21Var, oa1 oa1Var, Context context, ej2 ej2Var, zzcgz zzcgzVar, xj2 xj2Var, byte[] bArr) {
        this.f28480l = d80Var;
        this.f28481m = e80Var;
        this.f28469a = h80Var;
        this.f28470b = q31Var;
        this.f28471c = w21Var;
        this.f28472d = oa1Var;
        this.f28473e = context;
        this.f28474f = ej2Var;
        this.f28475g = zzcgzVar;
        this.f28476h = xj2Var;
    }

    /* renamed from: q */
    private final void m11897q(View view) {
        try {
            h80 h80Var = this.f28469a;
            if (h80Var != null && !h80Var.zzu()) {
                this.f28469a.mo14739g0(BinderC6255b.m16744m2(view));
                this.f28471c.mo7877z0();
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25660b7)).booleanValue()) {
                    return;
                }
                this.f28472d.mo7917b();
                return;
            }
            d80 d80Var = this.f28480l;
            if (d80Var != null && !d80Var.m15866k()) {
                this.f28480l.m15876S(BinderC6255b.m16744m2(view));
                this.f28471c.mo7877z0();
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25660b7)).booleanValue()) {
                    return;
                }
                this.f28472d.mo7917b();
                return;
            }
            e80 e80Var = this.f28481m;
            if (e80Var == null || e80Var.m15542n()) {
                return;
            }
            this.f28481m.m15544i6(BinderC6255b.m16744m2(view));
            this.f28471c.mo7877z0();
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25660b7)).booleanValue()) {
                return;
            }
            this.f28472d.mo7917b();
        } catch (RemoteException e) {
            ei0.m15463g("Failed to call handleClick", e);
        }
    }

    /* renamed from: r */
    private static final HashMap<String, View> m11896r(Map<String, WeakReference<View>> map) {
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

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: G */
    public final void mo8428G() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: L */
    public final void mo8427L(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: O */
    public final void mo8426O(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: a */
    public final void mo8425a(AbstractC6972st abstractC6972st) {
        ei0.m15464f("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: a0 */
    public final void mo8424a0(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: b */
    public final void mo8423b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f28478j) {
            ei0.m15464f("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.f28474f.f22200H) {
            ei0.m15464f("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            m11897q(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: c */
    public final void mo8422c(AbstractC6861pt abstractC6861pt) {
        ei0.m15464f("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: d */
    public final JSONObject mo8421d(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: e */
    public final void mo8420e(View view, Map<String, WeakReference<View>> map) {
        try {
            AbstractC6253a m16744m2 = BinderC6255b.m16744m2(view);
            h80 h80Var = this.f28469a;
            if (h80Var != null) {
                h80Var.mo14734k2(m16744m2);
                return;
            }
            d80 d80Var = this.f28480l;
            if (d80Var != null) {
                d80Var.m15862y4(m16744m2);
                return;
            }
            e80 e80Var = this.f28481m;
            if (e80Var == null) {
                return;
            }
            e80Var.m15539x2(m16744m2);
        } catch (RemoteException e) {
            ei0.m15463g("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: f */
    public final void mo8419f(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f28478j || !this.f28474f.f22200H) {
            m11897q(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: g */
    public final void mo8418g() {
        this.f28478j = true;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: h */
    public final boolean mo8417h() {
        return this.f28474f.f22200H;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: i */
    public final void mo8416i(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: j */
    public final void mo8415j(View view) {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: k */
    public final void mo8414k() {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: l */
    public final void mo8413l(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f28477i) {
                this.f28477i = C5667s.m18150n().m18130g(this.f28473e, this.f28475g.f33854d, this.f28474f.f22195C.toString(), this.f28476h.f32079f);
            }
            if (!this.f28479k) {
                return;
            }
            h80 h80Var = this.f28469a;
            if (h80Var != null && !h80Var.zzt()) {
                this.f28469a.mo14726w();
                this.f28470b.zza();
                return;
            }
            d80 d80Var = this.f28480l;
            if (d80Var != null && !d80Var.m15865l()) {
                this.f28480l.m15867j();
                this.f28470b.zza();
                return;
            }
            e80 e80Var = this.f28481m;
            if (e80Var == null || e80Var.m15543m()) {
                return;
            }
            this.f28481m.m15545h();
            this.f28470b.zza();
        } catch (RemoteException e) {
            ei0.m15463g("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: m */
    public final void mo8412m(z00 z00Var) {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: n */
    public final JSONObject mo8411n(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: o */
    public final void mo8410o(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        Object obj2;
        AbstractC6253a mo14735k;
        try {
            AbstractC6253a m16744m2 = BinderC6255b.m16744m2(view);
            JSONObject jSONObject = this.f28474f.f22232g0;
            boolean z = true;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25654b1)).booleanValue()) {
                if (jSONObject.length() == 0) {
                    z = true;
                } else {
                    Map<String, WeakReference<View>> hashMap = map == null ? new HashMap<>() : map;
                    Map<String, WeakReference<View>> hashMap2 = map2 == null ? new HashMap<>() : map2;
                    HashMap hashMap3 = new HashMap();
                    hashMap3.putAll(hashMap);
                    hashMap3.putAll(hashMap2);
                    Iterator<String> keys = jSONObject.keys();
                    loop0: while (true) {
                        z = true;
                        if (!keys.hasNext()) {
                            break;
                        }
                        String next = keys.next();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        if (optJSONArray != null) {
                            WeakReference weakReference = (WeakReference) hashMap3.get(next);
                            if (weakReference == null || (obj = weakReference.get()) == null) {
                                break;
                            }
                            Class<?> cls = obj.getClass();
                            Class<?> cls2 = cls;
                            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25663c1)).booleanValue()) {
                                cls2 = cls;
                                if (next.equals("3010")) {
                                    h80 h80Var = this.f28469a;
                                    if (h80Var != null) {
                                        try {
                                            mo14735k = h80Var.mo14735k();
                                        } catch (RemoteException | IllegalArgumentException e) {
                                            obj2 = null;
                                        }
                                    } else {
                                        d80 d80Var = this.f28480l;
                                        if (d80Var != null) {
                                            mo14735k = d80Var.m15872a6();
                                        } else {
                                            e80 e80Var = this.f28481m;
                                            mo14735k = e80Var != null ? e80Var.zzu() : null;
                                        }
                                    }
                                    obj2 = null;
                                    if (mo14735k != null) {
                                        obj2 = BinderC6255b.m16745J0(mo14735k);
                                    }
                                    if (obj2 == null) {
                                        break;
                                    }
                                    cls2 = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList<String> arrayList = new ArrayList();
                                C5748x0.m17924a(optJSONArray, arrayList);
                                C5667s.m18160d();
                                ClassLoader classLoader = this.f28473e.getClassLoader();
                                for (String str : arrayList) {
                                    if (Class.forName(str, false, classLoader).isAssignableFrom(cls2)) {
                                        break;
                                    }
                                }
                                break loop0;
                            } catch (JSONException e2) {
                            }
                        }
                    }
                    z = false;
                }
            }
            this.f28479k = z;
            HashMap<String, View> m11896r = m11896r(map);
            HashMap<String, View> m11896r2 = m11896r(map2);
            h80 h80Var2 = this.f28469a;
            if (h80Var2 != null) {
                h80Var2.mo14725y1(m16744m2, BinderC6255b.m16744m2(m11896r), BinderC6255b.m16744m2(m11896r2));
                return;
            }
            d80 d80Var2 = this.f28480l;
            if (d80Var2 != null) {
                d80Var2.m15877E6(m16744m2, BinderC6255b.m16744m2(m11896r), BinderC6255b.m16744m2(m11896r2));
                this.f28480l.m15863u1(m16744m2);
                return;
            }
            e80 e80Var2 = this.f28481m;
            if (e80Var2 == null) {
                return;
            }
            e80Var2.m15549a6(m16744m2, BinderC6255b.m16744m2(m11896r), BinderC6255b.m16744m2(m11896r2));
            this.f28481m.m15550a3(m16744m2);
        } catch (RemoteException e3) {
            ei0.m15463g("Failed to call trackView", e3);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: p */
    public final boolean mo8409p(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: u */
    public final void mo8408u() {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: v */
    public final void mo8407v() {
    }

    @Override // com.google.android.gms.internal.ads.ze1
    public final void zzt() {
    }
}
