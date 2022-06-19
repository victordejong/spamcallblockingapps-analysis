package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.AbstractC12102f;
import com.google.android.gms.common.util.C12110n;
import com.mopub.common.Constants;
import java.lang.ref.WeakReference;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbm.class */
public final class bbm implements bcz {

    /* renamed from: a */
    final asc f43449a;

    /* renamed from: b */
    final arj f43450b;

    /* renamed from: c */
    private final Context f43451c;

    /* renamed from: d */
    private final bcy f43452d;

    /* renamed from: e */
    private final JSONObject f43453e;

    /* renamed from: f */
    private final bgy f43454f;

    /* renamed from: g */
    private final bcr f43455g;

    /* renamed from: h */
    private final die f43456h;

    /* renamed from: i */
    private final cov f43457i;

    /* renamed from: j */
    private final zzbar f43458j;

    /* renamed from: k */
    private final cpo f43459k;

    /* renamed from: l */
    private final aju f43460l;

    /* renamed from: m */
    private final bdr f43461m;

    /* renamed from: n */
    private final AbstractC12102f f43462n;

    /* renamed from: o */
    private final ayh f43463o;

    /* renamed from: p */
    private final cus f43464p;

    /* renamed from: r */
    private boolean f43466r;

    /* renamed from: y */
    private elu f43473y;

    /* renamed from: q */
    private boolean f43465q = false;

    /* renamed from: s */
    private boolean f43467s = false;

    /* renamed from: t */
    private boolean f43468t = false;

    /* renamed from: u */
    private Point f43469u = new Point();

    /* renamed from: v */
    private Point f43470v = new Point();

    /* renamed from: w */
    private long f43471w = 0;

    /* renamed from: x */
    private long f43472x = 0;

    public bbm(Context context, bcy bcyVar, JSONObject jSONObject, bgy bgyVar, bcr bcrVar, die dieVar, asc ascVar, arj arjVar, cov covVar, zzbar zzbarVar, cpo cpoVar, aju ajuVar, bdr bdrVar, AbstractC12102f abstractC12102f, ayh ayhVar, cus cusVar) {
        this.f43451c = context;
        this.f43452d = bcyVar;
        this.f43453e = jSONObject;
        this.f43454f = bgyVar;
        this.f43455g = bcrVar;
        this.f43456h = dieVar;
        this.f43449a = ascVar;
        this.f43450b = arjVar;
        this.f43457i = covVar;
        this.f43458j = zzbarVar;
        this.f43459k = cpoVar;
        this.f43460l = ajuVar;
        this.f43461m = bdrVar;
        this.f43462n = abstractC12102f;
        this.f43463o = ayhVar;
        this.f43464p = cusVar;
    }

    /* renamed from: a */
    private final String m18246a(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int m18198a = this.f43455g.m18198a();
        if (m18198a != 1) {
            if (m18198a == 2) {
                return "2099";
            }
            if (m18198a == 6) {
                return "3099";
            }
            return null;
        }
        return "1099";
    }

    /* renamed from: a */
    private final void m18245a(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        C12045o.m19155b("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f43453e);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.f43452d.m18135b(this.f43455g.m18151u()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f43455g.m18198a());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.f43459k.f46329i != null && this.f43459k.f46329i.zzboh);
            jSONObject8.put("custom_mute_enabled", !this.f43455g.m18164h().isEmpty() && this.f43455g.m18163i() != null);
            if (this.f43461m.f43671b != null && this.f43453e.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put(Reporting.Key.TIMESTAMP, this.f43462n.mo19039a());
            if (this.f43468t && m18240h()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            boolean z3 = false;
            if (this.f43452d.m18135b(this.f43455g.m18151u()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            jSONObject8.put("click_signals", m18242c(view));
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42745cB)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42931fc)).booleanValue() && C12110n.m19010l()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42932fd)).booleanValue() && C12110n.m19010l()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long mo19039a = this.f43462n.mo19039a();
            jSONObject9.put("time_from_last_touch_down", mo19039a - this.f43471w);
            jSONObject9.put("time_from_last_touch", mo19039a - this.f43472x);
            jSONObject7.put("touch_signal", jSONObject9);
            C13099zl.m13900a(this.f43454f.m17867a("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            zzd.zzc("Unable to create click JSON.", e);
        }
    }

    /* renamed from: a */
    private final boolean m18244a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        C12045o.m19155b("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f43453e);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42704bN)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            jSONObject6.put("screen", zzbn.zzbn(this.f43451c));
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42874eY)).booleanValue()) {
                this.f43454f.m17869a("/clickRecorded", new bbn(this));
            } else {
                this.f43454f.m17869a("/logScionEvent", new bbo(this));
            }
            this.f43454f.m17869a("/nativeImpression", new bbq(this));
            C13099zl.m13900a(this.f43454f.m17867a("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.f43465q || this.f43457i.f46222B == null) {
                return true;
            }
            this.f43465q |= zzr.zzlf().zzb(this.f43451c, this.f43458j.zzbrz, this.f43457i.f46222B.toString(), this.f43459k.f46326f);
            return true;
        } catch (JSONException e) {
            zzd.zzc("Unable to create impression JSON.", e);
            return false;
        }
    }

    /* renamed from: b */
    private final boolean m18243b(String str) {
        JSONObject optJSONObject = this.f43453e.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    /* renamed from: c */
    private final String m18242c(View view) {
        try {
            JSONObject optJSONObject = this.f43453e.optJSONObject("tracking_urls_and_actions");
            JSONObject jSONObject = optJSONObject;
            if (optJSONObject == null) {
                jSONObject = new JSONObject();
            }
            return this.f43456h.f47085b.zza(this.f43451c, jSONObject.optString("click_string"), view);
        } catch (Exception e) {
            zzd.zzc("Exception obtaining click signals", e);
            return null;
        }
    }

    /* renamed from: d */
    private final String m18241d(View view) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42704bN)).booleanValue()) {
            return null;
        }
        try {
            return this.f43456h.f47085b.zza(this.f43451c, view, (Activity) null);
        } catch (Exception e) {
            zzd.zzex("Exception getting data.");
            return null;
        }
    }

    /* renamed from: h */
    private final boolean m18240h() {
        return this.f43453e.optBoolean("allow_custom_click_gesture", false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final JSONObject mo17913a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zza = zzbn.zza(this.f43451c, map, map2, view);
        JSONObject zza2 = zzbn.zza(this.f43451c, view);
        JSONObject zzt = zzbn.zzt(view);
        JSONObject zzb = zzbn.zzb(this.f43451c, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", zza);
            jSONObject.put("ad_view_signal", zza2);
            jSONObject.put("scroll_view_signal", zzt);
            jSONObject.put("lock_screen_signal", zzb);
            return jSONObject;
        } catch (JSONException e) {
            zzd.zzc("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17918a() {
        this.f43468t = true;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17917a(Bundle bundle) {
        if (bundle == null) {
            zzd.zzdz("Click data is null. No click is reported.");
        } else if (!m18243b("click_reporting")) {
            zzd.zzex("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            m18245a(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzr.zzkv().zza(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17916a(MotionEvent motionEvent, View view) {
        this.f43469u = zzbn.zza(motionEvent, view);
        long mo19039a = this.f43462n.mo19039a();
        this.f43472x = mo19039a;
        if (motionEvent.getAction() == 0) {
            this.f43471w = mo19039a;
            this.f43470v = this.f43469u;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.f43469u.x, this.f43469u.y);
        this.f43456h.m16640a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17915a(View view) {
        this.f43469u = new Point();
        this.f43470v = new Point();
        this.f43463o.m18322b(view);
        this.f43466r = false;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17914a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject zza = zzbn.zza(this.f43451c, map, map2, view2);
        JSONObject zza2 = zzbn.zza(this.f43451c, view2);
        JSONObject zzt = zzbn.zzt(view2);
        JSONObject zzb = zzbn.zzb(this.f43451c, view2);
        String m18246a = m18246a(view, map);
        JSONObject zza3 = zzbn.zza(m18246a, this.f43451c, this.f43470v, this.f43469u);
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42705bO)).booleanValue()) {
            view2 = view;
        }
        m18245a(view2, zza2, zza, zzt, zzb, m18246a, zza3, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17912a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f43469u = new Point();
        this.f43470v = new Point();
        if (!this.f43466r) {
            this.f43463o.m18323a(view);
            this.f43466r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f43460l.m18629a(this);
        boolean zzdn = zzbn.zzdn(this.f43458j.zzekb);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (zzdn) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            for (Map.Entry<String, WeakReference<View>> entry2 : map2.entrySet()) {
                View view3 = entry2.getValue().get();
                if (view3 != null) {
                    if (zzdn) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17911a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f43468t) {
            zzd.zzdz("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!m18240h()) {
            zzd.zzdz("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject zza = zzbn.zza(this.f43451c, map, map2, view);
            JSONObject zza2 = zzbn.zza(this.f43451c, view);
            JSONObject zzt = zzbn.zzt(view);
            JSONObject zzb = zzbn.zzb(this.f43451c, view);
            String m18246a = m18246a((View) null, map);
            m18245a(view, zza2, zza, zzt, zzb, m18246a, zzbn.zza(m18246a, this.f43451c, this.f43470v, this.f43469u), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17910a(elu eluVar) {
        this.f43473y = eluVar;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17909a(ely elyVar) {
        try {
            if (this.f43467s) {
                return;
            }
            if (elyVar != null || this.f43455g.m18163i() == null) {
                this.f43467s = true;
                this.f43464p.m17207a(elyVar.mo14713b());
                mo17896e();
                return;
            }
            this.f43467s = true;
            this.f43464p.m17207a(this.f43455g.m18163i().f49268a);
            mo17896e();
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17908a(AbstractC12563fs abstractC12563fs) {
        if (!this.f43453e.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzd.zzez("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        bdr bdrVar = this.f43461m;
        bdrVar.f43671b = abstractC12563fs;
        if (bdrVar.f43672c != null) {
            bdrVar.f43670a.m17864b("/unconfirmedClick", bdrVar.f43672c);
        }
        bdrVar.f43672c = new AbstractC12607hi(bdrVar, abstractC12563fs) { // from class: com.google.android.gms.internal.ads.bdu

            /* renamed from: a */
            private final bdr f43688a;

            /* renamed from: b */
            private final AbstractC12563fs f43689b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43688a = bdrVar;
                this.f43689b = abstractC12563fs;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC12607hi
            /* renamed from: a */
            public final void mo14250a(Object obj, Map map) {
                bdr bdrVar2 = this.f43688a;
                AbstractC12563fs abstractC12563fs2 = this.f43689b;
                try {
                    bdrVar2.f43674e = Long.valueOf(Long.parseLong((String) map.get(Reporting.Key.TIMESTAMP)));
                } catch (NumberFormatException e) {
                    zzd.zzex("Failed to call parse unconfirmedClickTimestamp.");
                }
                bdrVar2.f43673d = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (abstractC12563fs2 == null) {
                    zzd.zzdz("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    abstractC12563fs2.mo14235a(str);
                } catch (RemoteException e2) {
                    C13088za.zze("#007 Could not call remote method.", e2);
                }
            }
        };
        bdrVar.f43670a.m17869a("/unconfirmedClick", bdrVar.f43672c);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: a */
    public final void mo17907a(String str) {
        m18245a(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final void mo17903b(Bundle bundle) {
        if (bundle == null) {
            zzd.zzdz("Touch event data is null. No touch event is reported.");
        } else if (!m18243b("touch_reporting")) {
            zzd.zzex("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            this.f43456h.f47085b.zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt(Constants.VAST_DURATION_MS));
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final void mo17902b(View view) {
        if (!this.f43453e.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzd.zzez("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        bdr bdrVar = this.f43461m;
        if (view == null) {
            return;
        }
        view.setOnClickListener(bdrVar);
        view.setClickable(true);
        bdrVar.f43675f = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final void mo17901b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        m18244a(zzbn.zza(this.f43451c, view), zzbn.zza(this.f43451c, map, map2, view), zzbn.zzt(view), zzbn.zzb(this.f43451c, view), m18241d(view), null, zzbn.zza(this.f43451c, this.f43457i));
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: b */
    public final boolean mo17904b() {
        return m18240h();
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: c */
    public final void mo17900c() {
        m18244a(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: c */
    public final boolean mo17899c(Bundle bundle) {
        if (!m18243b("impression_reporting")) {
            zzd.zzex("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        return m18244a(null, null, null, null, null, zzr.zzkv().zza(bundle, (JSONObject) null), false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: d */
    public final void mo17897d() {
        if (!this.f43453e.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        bdr bdrVar = this.f43461m;
        if (bdrVar.f43671b == null || bdrVar.f43674e == null) {
            return;
        }
        bdrVar.m18121a();
        try {
            bdrVar.f43671b.mo14236a();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: e */
    public final void mo17896e() {
        try {
            elu eluVar = this.f43473y;
            if (eluVar == null) {
                return;
            }
            eluVar.mo14803a();
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: f */
    public final void mo17895f() {
        C12045o.m19155b("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f43453e);
            C13099zl.m13900a(this.f43454f.m17867a("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            C13088za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    /* renamed from: g */
    public final void mo17894g() {
        this.f43454f.m17865b();
    }
}
