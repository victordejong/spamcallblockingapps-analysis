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
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.n;
import com.mopub.common.Constants;
import java.lang.ref.WeakReference;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbm.class */
public final class bbm implements bcz {

    /* renamed from: a  reason: collision with root package name */
    final asc f24121a;

    /* renamed from: b  reason: collision with root package name */
    final arj f24122b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f24123c;

    /* renamed from: d  reason: collision with root package name */
    private final bcy f24124d;
    private final JSONObject e;
    private final bgy f;
    private final bcr g;
    private final die h;
    private final cov i;
    private final zzbar j;
    private final cpo k;
    private final aju l;
    private final bdr m;
    private final f n;
    private final ayh o;
    private final cus p;
    private boolean r;
    private elu y;
    private boolean q = false;
    private boolean s = false;
    private boolean t = false;
    private Point u = new Point();
    private Point v = new Point();
    private long w = 0;
    private long x = 0;

    public bbm(Context context, bcy bcyVar, JSONObject jSONObject, bgy bgyVar, bcr bcrVar, die dieVar, asc ascVar, arj arjVar, cov covVar, zzbar zzbarVar, cpo cpoVar, aju ajuVar, bdr bdrVar, f fVar, ayh ayhVar, cus cusVar) {
        this.f24123c = context;
        this.f24124d = bcyVar;
        this.e = jSONObject;
        this.f = bgyVar;
        this.g = bcrVar;
        this.h = dieVar;
        this.f24121a = ascVar;
        this.f24122b = arjVar;
        this.i = covVar;
        this.j = zzbarVar;
        this.k = cpoVar;
        this.l = ajuVar;
        this.m = bdrVar;
        this.n = fVar;
        this.o = ayhVar;
        this.p = cusVar;
    }

    private final String a(View view, Map<String, WeakReference<View>> map) {
        if (!(map == null || view == null)) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int a2 = this.g.a();
        if (a2 == 1) {
            return "1099";
        }
        if (a2 == 2) {
            return "2099";
        }
        if (a2 != 6) {
            return null;
        }
        return "3099";
    }

    private final void a(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        o.b("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.e);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            boolean z3 = false;
            jSONObject7.put("has_custom_click_handler", this.f24124d.b(this.g.u()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.g.a());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.k.i != null && this.k.i.zzboh);
            jSONObject8.put("custom_mute_enabled", !this.g.h().isEmpty() && this.g.i() != null);
            if (this.m.f24232b != null && this.e.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put(Reporting.Key.TIMESTAMP, this.n.a());
            if (this.t && h()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            if (this.f24124d.b(this.g.u()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            jSONObject8.put("click_signals", c(view));
            if (((Boolean) ekb.e().a(aq.cB)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) ekb.e().a(aq.fc)).booleanValue() && n.l()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) ekb.e().a(aq.fd)).booleanValue() && n.l()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long a2 = this.n.a();
            jSONObject9.put("time_from_last_touch_down", a2 - this.w);
            jSONObject9.put("time_from_last_touch", a2 - this.x);
            jSONObject7.put("touch_signal", jSONObject9);
            zl.a(this.f.a("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            zzd.zzc("Unable to create click JSON.", e);
        }
    }

    private final boolean a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        o.b("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.e);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) ekb.e().a(aq.bN)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            jSONObject6.put("screen", zzbn.zzbn(this.f24123c));
            if (((Boolean) ekb.e().a(aq.eY)).booleanValue()) {
                this.f.a("/clickRecorded", new bbn(this));
            } else {
                this.f.a("/logScionEvent", new bbo(this));
            }
            this.f.a("/nativeImpression", new bbq(this));
            zl.a(this.f.a("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.q || this.i.B == null) {
                return true;
            }
            this.q |= zzr.zzlf().zzb(this.f24123c, this.j.zzbrz, this.i.B.toString(), this.k.f);
            return true;
        } catch (JSONException e) {
            zzd.zzc("Unable to create impression JSON.", e);
            return false;
        }
    }

    private final boolean b(String str) {
        JSONObject optJSONObject = this.e.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    private final String c(View view) {
        try {
            JSONObject optJSONObject = this.e.optJSONObject("tracking_urls_and_actions");
            JSONObject jSONObject = optJSONObject;
            if (optJSONObject == null) {
                jSONObject = new JSONObject();
            }
            return this.h.f26844b.zza(this.f24123c, jSONObject.optString("click_string"), view);
        } catch (Exception e) {
            zzd.zzc("Exception obtaining click signals", e);
            return null;
        }
    }

    private final String d(View view) {
        if (!((Boolean) ekb.e().a(aq.bN)).booleanValue()) {
            return null;
        }
        try {
            return this.h.f26844b.zza(this.f24123c, view, (Activity) null);
        } catch (Exception e) {
            zzd.zzex("Exception getting data.");
            return null;
        }
    }

    private final boolean h() {
        return this.e.optBoolean("allow_custom_click_gesture", false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final JSONObject a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zza = zzbn.zza(this.f24123c, map, map2, view);
        JSONObject zza2 = zzbn.zza(this.f24123c, view);
        JSONObject zzt = zzbn.zzt(view);
        JSONObject zzb = zzbn.zzb(this.f24123c, view);
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
    public final void a() {
        this.t = true;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(Bundle bundle) {
        if (bundle == null) {
            zzd.zzdz("Click data is null. No click is reported.");
        } else if (!b("click_reporting")) {
            zzd.zzex("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            a(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzr.zzkv().zza(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(MotionEvent motionEvent, View view) {
        this.u = zzbn.zza(motionEvent, view);
        long a2 = this.n.a();
        this.x = a2;
        if (motionEvent.getAction() == 0) {
            this.w = a2;
            this.v = this.u;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.u.x, this.u.y);
        this.h.a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view) {
        this.u = new Point();
        this.v = new Point();
        this.o.b(view);
        this.r = false;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject zza = zzbn.zza(this.f24123c, map, map2, view2);
        JSONObject zza2 = zzbn.zza(this.f24123c, view2);
        JSONObject zzt = zzbn.zzt(view2);
        JSONObject zzb = zzbn.zzb(this.f24123c, view2);
        String a2 = a(view, map);
        JSONObject zza3 = zzbn.zza(a2, this.f24123c, this.v, this.u);
        if (!((Boolean) ekb.e().a(aq.bO)).booleanValue()) {
            view2 = view;
        }
        a(view2, zza2, zza, zzt, zzb, a2, zza3, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.u = new Point();
        this.v = new Point();
        if (!this.r) {
            this.o.a(view);
            this.r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.l.a(this);
        boolean zzdn = zzbn.zzdn(this.j.zzekb);
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
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.t) {
            zzd.zzdz("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!h()) {
            zzd.zzdz("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject zza = zzbn.zza(this.f24123c, map, map2, view);
            JSONObject zza2 = zzbn.zza(this.f24123c, view);
            JSONObject zzt = zzbn.zzt(view);
            JSONObject zzb = zzbn.zzb(this.f24123c, view);
            String a2 = a((View) null, map);
            a(view, zza2, zza, zzt, zzb, a2, zzbn.zza(a2, this.f24123c, this.v, this.u), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(elu eluVar) {
        this.y = eluVar;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(ely elyVar) {
        try {
            if (!this.s) {
                if (elyVar != null || this.g.i() == null) {
                    this.s = true;
                    this.p.a(elyVar.b());
                    e();
                    return;
                }
                this.s = true;
                this.p.a(this.g.i().f27981a);
                e();
            }
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(final fs fsVar) {
        if (!this.e.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzd.zzez("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        final bdr bdrVar = this.m;
        bdrVar.f24232b = fsVar;
        if (bdrVar.f24233c != null) {
            bdrVar.f24231a.b("/unconfirmedClick", bdrVar.f24233c);
        }
        bdrVar.f24233c = new hi(bdrVar, fsVar) { // from class: com.google.android.gms.internal.ads.bdu

            /* renamed from: a  reason: collision with root package name */
            private final bdr f24241a;

            /* renamed from: b  reason: collision with root package name */
            private final fs f24242b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24241a = bdrVar;
                this.f24242b = fsVar;
            }

            @Override // com.google.android.gms.internal.ads.hi
            public final void a(Object obj, Map map) {
                bdr bdrVar2 = this.f24241a;
                fs fsVar2 = this.f24242b;
                try {
                    bdrVar2.e = Long.valueOf(Long.parseLong((String) map.get(Reporting.Key.TIMESTAMP)));
                } catch (NumberFormatException e) {
                    zzd.zzex("Failed to call parse unconfirmedClickTimestamp.");
                }
                bdrVar2.f24234d = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (fsVar2 == null) {
                    zzd.zzdz("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    fsVar2.a(str);
                } catch (RemoteException e2) {
                    za.zze("#007 Could not call remote method.", e2);
                }
            }
        };
        bdrVar.f24231a.a("/unconfirmedClick", bdrVar.f24233c);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void a(String str) {
        a(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void b(Bundle bundle) {
        if (bundle == null) {
            zzd.zzdz("Touch event data is null. No touch event is reported.");
        } else if (!b("touch_reporting")) {
            zzd.zzex("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            this.h.f26844b.zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt(Constants.VAST_DURATION_MS));
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void b(View view) {
        if (!this.e.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzd.zzez("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        bdr bdrVar = this.m;
        if (view != null) {
            view.setOnClickListener(bdrVar);
            view.setClickable(true);
            bdrVar.f = new WeakReference<>(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        a(zzbn.zza(this.f24123c, view), zzbn.zza(this.f24123c, map, map2, view), zzbn.zzt(view), zzbn.zzb(this.f24123c, view), d(view), null, zzbn.zza(this.f24123c, this.i));
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final boolean b() {
        return h();
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void c() {
        a(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final boolean c(Bundle bundle) {
        if (b("impression_reporting")) {
            return a(null, null, null, null, null, zzr.zzkv().zza(bundle, (JSONObject) null), false);
        }
        zzd.zzex("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void d() {
        if (this.e.optBoolean("custom_one_point_five_click_enabled", false)) {
            bdr bdrVar = this.m;
            if (bdrVar.f24232b != null && bdrVar.e != null) {
                bdrVar.a();
                try {
                    bdrVar.f24232b.a();
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void e() {
        try {
            elu eluVar = this.y;
            if (eluVar != null) {
                eluVar.a();
            }
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void f() {
        o.b("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.e);
            zl.a(this.f.a("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bcz
    public final void g() {
        this.f.b();
    }
}
