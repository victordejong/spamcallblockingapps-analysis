package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axw.class */
public final class axw implements azh {

    /* renamed from: a */
    private final Context f10536a;

    /* renamed from: b */
    private final azg f10537b;

    /* renamed from: c */
    private final JSONObject f10538c;

    /* renamed from: d */
    private final bcy f10539d;

    /* renamed from: e */
    private final ayx f10540e;

    /* renamed from: f */
    private final ctl f10541f;

    /* renamed from: g */
    private final aqh f10542g;

    /* renamed from: h */
    private final apo f10543h;

    /* renamed from: i */
    private final cgr f10544i;

    /* renamed from: j */
    private final C3647yd f10545j;

    /* renamed from: k */
    private final chh f10546k;

    /* renamed from: l */
    private final ajb f10547l;

    /* renamed from: m */
    private final azy f10548m;

    /* renamed from: n */
    private final AbstractC2708e f10549n;

    /* renamed from: o */
    private final aup f10550o;

    /* renamed from: p */
    private final clj f10551p;

    /* renamed from: r */
    private boolean f10553r;

    /* renamed from: y */
    private eah f10560y;

    /* renamed from: q */
    private boolean f10552q = false;

    /* renamed from: s */
    private boolean f10554s = false;

    /* renamed from: t */
    private boolean f10555t = false;

    /* renamed from: u */
    private Point f10556u = new Point();

    /* renamed from: v */
    private Point f10557v = new Point();

    /* renamed from: w */
    private long f10558w = 0;

    /* renamed from: x */
    private long f10559x = 0;

    public axw(Context context, azg azgVar, JSONObject jSONObject, bcy bcyVar, ayx ayxVar, ctl ctlVar, aqh aqhVar, apo apoVar, cgr cgrVar, C3647yd c3647yd, chh chhVar, ajb ajbVar, azy azyVar, AbstractC2708e abstractC2708e, aup aupVar, clj cljVar) {
        this.f10536a = context;
        this.f10537b = azgVar;
        this.f10538c = jSONObject;
        this.f10539d = bcyVar;
        this.f10540e = ayxVar;
        this.f10541f = ctlVar;
        this.f10542g = aqhVar;
        this.f10543h = apoVar;
        this.f10544i = cgrVar;
        this.f10545j = c3647yd;
        this.f10546k = chhVar;
        this.f10547l = ajbVar;
        this.f10548m = azyVar;
        this.f10549n = abstractC2708e;
        this.f10550o = aupVar;
        this.f10551p = cljVar;
    }

    /* renamed from: a */
    private final void m12338a(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        C2662s.m13974b("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f10538c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.f10537b.m12215b(this.f10540e.m12236u()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f10540e.m12283a());
            jSONObject8.put("view_aware_api_used", z);
            jSONObject8.put("custom_mute_requested", this.f10546k.f13045i != null && this.f10546k.f13045i.f11461g);
            jSONObject8.put("custom_mute_enabled", !this.f10540e.m12249h().isEmpty() && this.f10540e.m12248i() != null);
            if (this.f10548m.m12184a() != null && this.f10538c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.f10549n.mo13862a());
            if (this.f10555t && m12330h()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            jSONObject8.put("has_custom_click_handler", this.f10537b.m12215b(this.f10540e.m12236u()) != null);
            jSONObject8.put("click_signals", m12335b(view));
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long mo13862a = this.f10549n.mo13862a();
            jSONObject9.put("time_from_last_touch_down", mo13862a - this.f10558w);
            jSONObject9.put("time_from_last_touch", mo13862a - this.f10559x);
            jSONObject7.put("touch_signal", jSONObject9);
            C3654yk.m6736a(this.f10539d.m12086a("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e) {
            C3556uu.m6748c("Unable to create click JSON.", e);
        }
    }

    /* renamed from: a */
    private final boolean m12336a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5) {
        boolean z;
        C2662s.m13974b("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f10538c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) dyx.m8158e().m7876a(edi.f16437bq)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            this.f10539d.m12088a("/logScionEvent", new axy(this));
            this.f10539d.m12088a("/nativeImpression", new axx(this));
            C3654yk.m6736a(this.f10539d.m12086a("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (!this.f10552q && this.f10544i.f13004z != null) {
                this.f10552q |= C2341q.m14734m().m6890b(this.f10536a, this.f10545j.f17636a, this.f10544i.f13004z.toString(), this.f10546k.f13042f);
            }
            z = true;
        } catch (JSONException e) {
            C3556uu.m6748c("Unable to create impression JSON.", e);
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private final String m12335b(View view) {
        String str;
        try {
            JSONObject optJSONObject = this.f10538c.optJSONObject("tracking_urls_and_actions");
            JSONObject jSONObject = optJSONObject;
            if (optJSONObject == null) {
                jSONObject = new JSONObject();
            }
            str = this.f10541f.m10670a().mo11049a(this.f10536a, jSONObject.optString("click_string"), view);
        } catch (Exception e) {
            C3556uu.m6748c("Exception obtaining click signals", e);
            str = null;
        }
        return str;
    }

    /* renamed from: b */
    private final String m12334b(View view, Map<String, WeakReference<View>> map) {
        String str;
        if (map != null && view != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                if (view.equals(entry.getValue().get())) {
                    str = entry.getKey();
                    break;
                }
            }
        }
        switch (this.f10540e.m12283a()) {
            case 1:
                str = "1099";
                break;
            case 2:
                str = "2099";
                break;
            case 3:
                str = null;
                break;
            case 4:
            case 5:
            default:
                str = null;
                break;
            case 6:
                str = "3099";
                break;
        }
        return str;
    }

    /* renamed from: b */
    private final boolean m12332b(String str) {
        JSONObject optJSONObject = this.f10538c.optJSONObject("allow_pub_event_reporting");
        boolean z = false;
        if (optJSONObject != null) {
            z = false;
            if (optJSONObject.optBoolean(str, false)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    private final String m12331c(View view) {
        String str;
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16437bq)).booleanValue()) {
            str = null;
        } else {
            try {
                str = this.f10541f.m10670a().mo11052a(this.f10536a, view, (Activity) null);
            } catch (Exception e) {
                C3556uu.m6749c("Exception getting data.");
                str = null;
            }
        }
        return str;
    }

    /* renamed from: h */
    private final boolean m12330h() {
        return this.f10538c.optBoolean("allow_custom_click_gesture", false);
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12163a() {
        this.f10555t = true;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12162a(Bundle bundle) {
        if (bundle == null) {
            C3556uu.m6751b("Click data is null. No click is reported.");
        } else if (!m12332b("click_reporting")) {
            C3556uu.m6749c("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            m12338a(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, C2341q.m14744c().m6997a(bundle, (JSONObject) null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12161a(View view) {
        if (!this.f10538c.optBoolean("custom_one_point_five_click_enabled", false)) {
            C3556uu.m6745e("setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
            return;
        }
        azy azyVar = this.f10548m;
        if (view == null) {
            return;
        }
        view.setOnClickListener(azyVar);
        view.setClickable(true);
        azyVar.f10751c = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12160a(View view, MotionEvent motionEvent, View view2) {
        this.f10556u = C3622xf.m6831a(motionEvent, view2);
        long mo13862a = this.f10549n.mo13862a();
        this.f10559x = mo13862a;
        if (motionEvent.getAction() == 0) {
            this.f10558w = mo13862a;
            this.f10557v = this.f10556u;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setLocation(this.f10556u.x, this.f10556u.y);
        this.f10541f.m10665a(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12159a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        JSONObject m6832a = C3622xf.m6832a(this.f10536a, map, map2, view2);
        JSONObject m6833a = C3622xf.m6833a(this.f10536a, view2);
        JSONObject m6830a = C3622xf.m6830a(view2);
        JSONObject m6828b = C3622xf.m6828b(this.f10536a, view2);
        String m12334b = m12334b(view, map);
        m12338a(view, m6833a, m6832a, m6830a, m6828b, m12334b, C3622xf.m6829a(m12334b, this.f10536a, this.f10557v, this.f10556u), null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12158a(View view, Map<String, WeakReference<View>> map) {
        this.f10556u = new Point();
        this.f10557v = new Point();
        this.f10550o.m12419b(view);
        this.f10553r = false;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12157a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        m12336a(C3622xf.m6833a(this.f10536a, view), C3622xf.m6832a(this.f10536a, map, map2, view), C3622xf.m6830a(view), C3622xf.m6828b(this.f10536a, view), m12331c(view), null);
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12156a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f10556u = new Point();
        this.f10557v = new Point();
        if (!this.f10553r) {
            this.f10550o.m12420a(view);
            this.f10553r = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f10547l.m13081a(this);
        boolean m6837a = C3622xf.m6837a(this.f10545j.f17638c);
        if (map != null) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    if (m6837a) {
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
                    if (m6837a) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12155a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f10555t) {
            C3556uu.m6751b("Custom click reporting failed. enableCustomClickGesture is not set.");
        } else if (!m12330h()) {
            C3556uu.m6751b("Custom click reporting failed. Ad unit id not whitelisted.");
        } else {
            JSONObject m6832a = C3622xf.m6832a(this.f10536a, map, map2, view);
            JSONObject m6833a = C3622xf.m6833a(this.f10536a, view);
            JSONObject m6830a = C3622xf.m6830a(view);
            JSONObject m6828b = C3622xf.m6828b(this.f10536a, view);
            String m12334b = m12334b(null, map);
            m12338a(view, m6833a, m6832a, m6830a, m6828b, m12334b, C3622xf.m6829a(m12334b, this.f10536a, this.f10557v, this.f10556u), null, z, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12154a(AbstractC3014dt abstractC3014dt) {
        if (!this.f10538c.optBoolean("custom_one_point_five_click_enabled", false)) {
            C3556uu.m6745e("setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information.");
        } else {
            this.f10548m.m12183a(abstractC3014dt);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12153a(eah eahVar) {
        this.f10560y = eahVar;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12152a(eal ealVar) {
        try {
            if (!this.f10554s) {
                if (ealVar != null || this.f10540e.m12248i() == null) {
                    this.f10554s = true;
                    this.f10551p.m11100a(ealVar.mo7989b());
                    mo12143e();
                } else {
                    this.f10554s = true;
                    this.f10551p.m11100a(this.f10540e.m12248i().mo7989b());
                    mo12143e();
                }
            }
        } catch (RemoteException e) {
            C3556uu.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: a */
    public final void mo12151a(String str) {
        m12338a(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: b */
    public final void mo12148b(Bundle bundle) {
        if (bundle == null) {
            C3556uu.m6751b("Touch event data is null. No touch event is reported.");
        } else if (!m12332b("touch_reporting")) {
            C3556uu.m6749c("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
        } else {
            this.f10541f.m10670a().mo11054a((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: b */
    public final boolean mo12149b() {
        return m12330h();
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: c */
    public final void mo12146c() {
        m12336a(null, null, null, null, null, null);
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: c */
    public final boolean mo12145c(Bundle bundle) {
        boolean m12336a;
        if (!m12332b("impression_reporting")) {
            C3556uu.m6749c("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
            m12336a = false;
        } else {
            m12336a = m12336a(null, null, null, null, null, C2341q.m14744c().m6997a(bundle, (JSONObject) null));
        }
        return m12336a;
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: d */
    public final void mo12144d() {
        if (!this.f10538c.optBoolean("custom_one_point_five_click_enabled", false)) {
            return;
        }
        this.f10548m.m12182b();
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: e */
    public final void mo12143e() {
        try {
            if (this.f10560y == null) {
                return;
            }
            this.f10560y.mo8102a();
        } catch (RemoteException e) {
            C3556uu.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: f */
    public final void mo12142f() {
        C2662s.m13974b("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f10538c);
            C3654yk.m6736a(this.f10539d.m12086a("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            C3645yb.m6748c("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.azh
    /* renamed from: g */
    public final void mo12141g() {
        this.f10539d.m12083b();
    }
}
