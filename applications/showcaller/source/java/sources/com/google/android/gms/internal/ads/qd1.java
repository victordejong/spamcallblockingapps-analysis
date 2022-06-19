package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5674b1;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.AbstractC6227e;
import com.google.android.gms.common.util.C6237o;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qd1.class */
public final class qd1 implements ze1 {

    /* renamed from: a */
    private final Context f28411a;

    /* renamed from: b */
    private final cf1 f28412b;

    /* renamed from: c */
    private final JSONObject f28413c;

    /* renamed from: d */
    private final qj1 f28414d;

    /* renamed from: e */
    private final re1 f28415e;

    /* renamed from: f */
    private final C7016u f28416f;

    /* renamed from: g */
    private final q31 f28417g;

    /* renamed from: h */
    private final w21 f28418h;

    /* renamed from: i */
    private final oa1 f28419i;

    /* renamed from: j */
    private final ej2 f28420j;

    /* renamed from: k */
    private final zzcgz f28421k;

    /* renamed from: l */
    private final xj2 f28422l;

    /* renamed from: m */
    private final ev0 f28423m;

    /* renamed from: n */
    private final uf1 f28424n;

    /* renamed from: o */
    private final AbstractC6227e f28425o;

    /* renamed from: p */
    private final la1 f28426p;

    /* renamed from: q */
    private final bp2 f28427q;

    /* renamed from: s */
    private boolean f28429s;

    /* renamed from: z */
    private AbstractC6861pt f28436z;

    /* renamed from: r */
    private boolean f28428r = false;

    /* renamed from: t */
    private boolean f28430t = false;

    /* renamed from: u */
    private boolean f28431u = false;

    /* renamed from: v */
    private Point f28432v = new Point();

    /* renamed from: w */
    private Point f28433w = new Point();

    /* renamed from: x */
    private long f28434x = 0;

    /* renamed from: y */
    private long f28435y = 0;

    public qd1(Context context, cf1 cf1Var, JSONObject jSONObject, qj1 qj1Var, re1 re1Var, C7016u c7016u, q31 q31Var, w21 w21Var, oa1 oa1Var, ej2 ej2Var, zzcgz zzcgzVar, xj2 xj2Var, ev0 ev0Var, uf1 uf1Var, AbstractC6227e abstractC6227e, la1 la1Var, bp2 bp2Var) {
        this.f28411a = context;
        this.f28412b = cf1Var;
        this.f28413c = jSONObject;
        this.f28414d = qj1Var;
        this.f28415e = re1Var;
        this.f28416f = c7016u;
        this.f28417g = q31Var;
        this.f28418h = w21Var;
        this.f28419i = oa1Var;
        this.f28420j = ej2Var;
        this.f28421k = zzcgzVar;
        this.f28422l = xj2Var;
        this.f28423m = ev0Var;
        this.f28424n = uf1Var;
        this.f28425o = abstractC6227e;
        this.f28426p = la1Var;
        this.f28427q = bp2Var;
    }

    /* renamed from: q */
    private final boolean m11955q(String str) {
        JSONObject optJSONObject = this.f28413c.optJSONObject("allow_pub_event_reporting");
        return optJSONObject != null && optJSONObject.optBoolean(str, false);
    }

    /* renamed from: r */
    private final String m11954r(View view, Map<String, WeakReference<View>> map) {
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    return entry.getKey();
                }
            }
        }
        int m11513d0 = this.f28415e.m11513d0();
        if (m11513d0 != 1) {
            if (m11513d0 == 2) {
                return "2099";
            }
            if (m11513d0 == 6) {
                return "3099";
            }
            return null;
        }
        return "1099";
    }

    /* renamed from: s */
    private final boolean m11953s() {
        return this.f28413c.optBoolean("allow_custom_click_gesture", false);
    }

    /* renamed from: t */
    private final boolean m11952t(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z) {
        C6155o.m17023e("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f28413c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25646a2)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            Context context = this.f28411a;
            JSONObject jSONObject7 = new JSONObject();
            C5667s.m18160d();
            DisplayMetrics m18070f0 = C5679c2.m18070f0((WindowManager) context.getSystemService("window"));
            try {
                jSONObject7.put("width", C7118wr.m9485a().m9177a(context, m18070f0.widthPixels));
                jSONObject7.put("height", C7118wr.m9485a().m9177a(context, m18070f0.heightPixels));
            } catch (JSONException e) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25668c6)).booleanValue()) {
                this.f28414d.m11876e("/clickRecorded", new nd1(this, null));
            } else {
                this.f28414d.m11876e("/logScionEvent", new md1(this, null));
            }
            this.f28414d.m11876e("/nativeImpression", new od1(this, null));
            ti0.m10655a(this.f28414d.m11877d("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.f28428r) {
                return true;
            }
            this.f28428r = C5667s.m18150n().m18130g(this.f28411a, this.f28421k.f33854d, this.f28420j.f22195C.toString(), this.f28422l.f32079f);
            return true;
        } catch (JSONException e2) {
            ei0.m15466d("Unable to create impression JSON.", e2);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: G */
    public final void mo8428G() {
        try {
            AbstractC6861pt abstractC6861pt = this.f28436z;
            if (abstractC6861pt == null) {
                return;
            }
            abstractC6861pt.mo12153a();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: L */
    public final void mo8427L(Bundle bundle) {
        if (bundle == null) {
            ei0.m15469a("Touch event data is null. No touch event is reported.");
        } else if (!m11955q("touch_reporting")) {
            ei0.m15467c("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            float f = bundle.getFloat("x");
            float f2 = bundle.getFloat("y");
            this.f28416f.m10450b().mo11747f((int) f, (int) f2, bundle.getInt("duration_ms"));
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: O */
    public final void mo8426O(String str) {
        m11948z(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: a */
    public final void mo8425a(AbstractC6972st abstractC6972st) {
        try {
            if (this.f28430t) {
                return;
            }
            if (abstractC6972st == null && this.f28415e.m11514d() != null) {
                this.f28430t = true;
                this.f28427q.m16302b(this.f28415e.m11514d().mo9057d());
                mo8428G();
                return;
            }
            this.f28430t = true;
            this.f28427q.m16302b(abstractC6972st.mo9057d());
            mo8428G();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: a0 */
    public final void mo8424a0(Bundle bundle) {
        if (bundle == null) {
            ei0.m15469a("Click data is null. No click is reported.");
        } else if (!m11955q("click_reporting")) {
            ei0.m15467c("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            m11948z(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, C5667s.m18160d().m18090R(bundle, null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: b */
    public final void mo8423b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f28431u) {
            ei0.m15469a("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!m11953s()) {
            ei0.m15469a("Custom click reporting failed. Ad unit id not in the allow list.");
        } else {
            JSONObject m18115e = C5674b1.m18115e(this.f28411a, map, map2, view);
            JSONObject m18118b = C5674b1.m18118b(this.f28411a, view);
            JSONObject m18117c = C5674b1.m18117c(view);
            JSONObject m18116d = C5674b1.m18116d(this.f28411a, view);
            String m11954r = m11954r(null, map);
            m11948z(view, m18118b, m18115e, m18117c, m18116d, m11954r, C5674b1.m18114f(m11954r, this.f28411a, this.f28433w, this.f28432v), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: c */
    public final void mo8422c(AbstractC6861pt abstractC6861pt) {
        this.f28436z = abstractC6861pt;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: d */
    public final JSONObject mo8421d(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject mo8411n = mo8411n(view, map, map2);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f28431u && m11953s()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (mo8411n != null) {
                jSONObject.put("nas", mo8411n);
            }
        } catch (JSONException e) {
            ei0.m15466d("Unable to create native click meta data JSON.", e);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: e */
    public final void mo8420e(View view, Map<String, WeakReference<View>> map) {
        this.f28432v = new Point();
        this.f28433w = new Point();
        if (view != null) {
            this.f28426p.m13618T0(view);
        }
        this.f28429s = false;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: f */
    public final void mo8419f(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject m18115e = C5674b1.m18115e(this.f28411a, map, map2, view2);
        JSONObject m18118b = C5674b1.m18118b(this.f28411a, view2);
        JSONObject m18117c = C5674b1.m18117c(view2);
        JSONObject m18116d = C5674b1.m18116d(this.f28411a, view2);
        String m11954r = m11954r(view, map);
        JSONObject m18114f = C5674b1.m18114f(m11954r, this.f28411a, this.f28433w, this.f28432v);
        if (true != ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25655b2)).booleanValue()) {
            view2 = view;
        }
        m11948z(view2, m18118b, m18115e, m18117c, m18116d, m11954r, m18114f, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: g */
    public final void mo8418g() {
        this.f28431u = true;
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: h */
    public final boolean mo8417h() {
        return m11953s();
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: i */
    public final void mo8416i(View view, MotionEvent motionEvent, View view2) {
        this.f28432v = C5674b1.m18112h(motionEvent, view2);
        long mo16807a = this.f28425o.mo16807a();
        this.f28435y = mo16807a;
        if (motionEvent.getAction() == 0) {
            this.f28434x = mo16807a;
            this.f28433w = this.f28432v;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.f28432v;
        obtain.setLocation(point.x, point.y);
        this.f28416f.m10448d(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: j */
    public final void mo8415j(View view) {
        if (!this.f28413c.optBoolean("custom_one_point_five_click_enabled", false)) {
            ei0.m15464f("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        uf1 uf1Var = this.f28424n;
        if (view == null) {
            return;
        }
        view.setOnClickListener(uf1Var);
        view.setClickable(true);
        uf1Var.f30599j = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: k */
    public final void mo8414k() {
        m11952t(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: l */
    public final void mo8413l(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        String mo11749d;
        JSONObject m18115e = C5674b1.m18115e(this.f28411a, map, map2, view);
        JSONObject m18118b = C5674b1.m18118b(this.f28411a, view);
        JSONObject m18117c = C5674b1.m18117c(view);
        JSONObject m18116d = C5674b1.m18116d(this.f28411a, view);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25646a2)).booleanValue()) {
            try {
                mo11749d = this.f28416f.m10450b().mo11749d(this.f28411a, view, null);
            } catch (Exception e) {
                ei0.m15467c("Exception getting data.");
            }
            m11952t(m18118b, m18115e, m18117c, m18116d, mo11749d, null, C5674b1.m18111i(this.f28411a, this.f28420j));
        }
        mo11749d = null;
        m11952t(m18118b, m18115e, m18117c, m18116d, mo11749d, null, C5674b1.m18111i(this.f28411a, this.f28420j));
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: m */
    public final void mo8412m(z00 z00Var) {
        if (!this.f28413c.optBoolean("custom_one_point_five_click_enabled", false)) {
            ei0.m15464f("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            this.f28424n.m10338a(z00Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: n */
    public final JSONObject mo8411n(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject m18115e = C5674b1.m18115e(this.f28411a, map, map2, view);
        JSONObject m18118b = C5674b1.m18118b(this.f28411a, view);
        JSONObject m18117c = C5674b1.m18117c(view);
        JSONObject m18116d = C5674b1.m18116d(this.f28411a, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", m18115e);
            jSONObject.put("ad_view_signal", m18118b);
            jSONObject.put("scroll_view_signal", m18117c);
            jSONObject.put("lock_screen_signal", m18116d);
            return jSONObject;
        } catch (JSONException e) {
            ei0.m15466d("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: o */
    public final void mo8410o(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f28432v = new Point();
        this.f28433w = new Point();
        if (!this.f28429s) {
            this.f28426p.m13619S0(view);
            this.f28429s = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f28423m.m15370i(this);
        boolean m18119a = C5674b1.m18119a(this.f28421k.f33856f);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (m18119a) {
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
                    if (m18119a) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: p */
    public final boolean mo8409p(Bundle bundle) {
        if (!m11955q("impression_reporting")) {
            ei0.m15467c("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        return m11952t(null, null, null, null, null, C5667s.m18160d().m18090R(bundle, null), false);
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: u */
    public final void mo8408u() {
        this.f28414d.m11878c();
    }

    @Override // com.google.android.gms.internal.ads.ze1
    /* renamed from: v */
    public final void mo8407v() {
        C6155o.m17023e("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f28413c);
            ti0.m10655a(this.f28414d.m11877d("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            ei0.m15466d("", e);
        }
    }

    /* renamed from: z */
    protected final void m11948z(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        String str2;
        C6155o.m17023e("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f28413c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.f28412b.m16063g(this.f28415e.m11496q()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f28415e.m11513d0());
            jSONObject8.put("view_aware_api_used", z);
            zzblv zzblvVar = this.f28422l.f32082i;
            jSONObject8.put("custom_mute_requested", zzblvVar != null && zzblvVar.f33723j);
            jSONObject8.put("custom_mute_enabled", !this.f28415e.m11516c().isEmpty() && this.f28415e.m11514d() != null);
            if (this.f28424n.m10337b() != null && this.f28413c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.f28425o.mo16807a());
            if (this.f28431u && m11953s()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            boolean z3 = false;
            if (this.f28412b.m16063g(this.f28415e.m11496q()) != null) {
                z3 = true;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            try {
                JSONObject optJSONObject = this.f28413c.optJSONObject("tracking_urls_and_actions");
                JSONObject jSONObject9 = optJSONObject;
                if (optJSONObject == null) {
                    jSONObject9 = new JSONObject();
                }
                str2 = this.f28416f.m10450b().mo11750b(this.f28411a, jSONObject9.optString("click_string"), view);
            } catch (Exception e) {
                ei0.m15466d("Exception obtaining click signals", e);
                str2 = null;
            }
            jSONObject8.put("click_signals", str2);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25630Y2)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25701g6)).booleanValue() && C6237o.m16771m()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25709h6)).booleanValue() && C6237o.m16771m()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject10 = new JSONObject();
            long mo16807a = this.f28425o.mo16807a();
            jSONObject10.put("time_from_last_touch_down", mo16807a - this.f28434x);
            jSONObject10.put("time_from_last_touch", mo16807a - this.f28435y);
            jSONObject7.put("touch_signal", jSONObject10);
            ti0.m10655a(this.f28414d.m11877d("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            ei0.m15466d("Unable to create click JSON.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.ze1
    public final void zzt() {
        if (!this.f28413c.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        this.f28424n.m10336c();
    }
}
