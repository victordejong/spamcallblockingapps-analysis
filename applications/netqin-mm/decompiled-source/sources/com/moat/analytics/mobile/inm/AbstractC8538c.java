package com.moat.analytics.mobile.inm;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.moat.analytics.mobile.inm.C8543g;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.inm.c */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/c.class */
public abstract class AbstractC8538c extends AbstractC8537b {

    /* renamed from: g */
    public static final MoatAdEventType[] f33227g = {MoatAdEventType.AD_EVT_FIRST_QUARTILE, MoatAdEventType.AD_EVT_MID_POINT, MoatAdEventType.AD_EVT_THIRD_QUARTILE};

    /* renamed from: h */
    public final Map<MoatAdEventType, Integer> f33228h;

    /* renamed from: i */
    public final Handler f33229i;

    /* renamed from: j */
    public Map<String, String> f33230j;

    /* renamed from: k */
    public WeakReference<View> f33231k;

    /* renamed from: l */
    public final Set<MoatAdEventType> f33232l;

    /* renamed from: m */
    public VideoTrackerListener f33233m;

    /* renamed from: n */
    public boolean f33234n;

    /* renamed from: o */
    public Double f33235o;

    /* renamed from: p */
    public final C8543g f33236p;

    /* renamed from: q */
    public final String f33237q;

    public AbstractC8538c(String str) {
        super(null, false, true);
        C8571p.m5104a(3, "BaseVideoTracker", this, "Initializing.");
        this.f33237q = str;
        C8543g gVar = new C8543g(C8531a.m5253a(), C8543g.EnumC8548a.VIDEO);
        this.f33236p = gVar;
        super.m5234a(gVar.f33242b);
        try {
            super.m5235a(this.f33236p.f33241a);
        } catch (C8562m e) {
            this.f33216a = e;
        }
        this.f33228h = new HashMap();
        this.f33232l = new HashSet();
        this.f33229i = new Handler();
        this.f33234n = false;
        this.f33235o = Double.valueOf(1.0d);
    }

    /* renamed from: a */
    public static boolean m5222a(MoatAdEventType moatAdEventType) {
        return moatAdEventType == MoatAdEventType.AD_EVT_COMPLETE || moatAdEventType == MoatAdEventType.AD_EVT_STOPPED || moatAdEventType == MoatAdEventType.AD_EVT_SKIPPED;
    }

    /* renamed from: b */
    private void m5217b(MoatAdEvent moatAdEvent) {
        C8555j jVar;
        JSONObject a = mo5036a(moatAdEvent);
        C8571p.m5104a(3, "BaseVideoTracker", this, String.format("Received event: %s", a.toString()));
        C8571p.m5099a("[SUCCESS] ", mo5037a() + String.format(" Received event: %s", a.toString()));
        if (m5230e() && (jVar = this.f33218c) != null) {
            jVar.m5176a(this.f33236p.f33243c, a);
            if (!this.f33232l.contains(moatAdEvent.f33200d)) {
                this.f33232l.add(moatAdEvent.f33200d);
                VideoTrackerListener videoTrackerListener = this.f33233m;
                if (videoTrackerListener != null) {
                    videoTrackerListener.onVideoEventReported(moatAdEvent.f33200d);
                }
            }
        }
        MoatAdEventType moatAdEventType = moatAdEvent.f33200d;
        if (m5222a(moatAdEventType)) {
            this.f33228h.put(moatAdEventType, 1);
            C8555j jVar2 = this.f33218c;
            if (jVar2 != null) {
                jVar2.m5169c(this);
            }
            m5214l();
        }
    }

    /* renamed from: a */
    public JSONObject mo5036a(MoatAdEvent moatAdEvent) {
        if (Double.isNaN(moatAdEvent.f33199c.doubleValue())) {
            moatAdEvent.f33199c = this.f33235o;
        }
        return new JSONObject(moatAdEvent.m5259a());
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public void mo5035a(List<String> list) {
        if (this.f33230j == null) {
            list.add("Null adIds object");
        }
        if (list.isEmpty()) {
            super.mo5035a(list);
            return;
        }
        throw new C8562m(TextUtils.join(" and ", list));
    }

    /* renamed from: a */
    public boolean m5219a(Integer num, Integer num2) {
        int abs = Math.abs(num2.intValue() - num.intValue());
        double intValue = num2.intValue();
        Double.isNaN(intValue);
        return ((double) abs) <= Math.min(750.0d, intValue * 0.05d);
    }

    /* renamed from: a */
    public boolean mo5198a(Map<String, String> map, View view) {
        try {
            m5232c();
            m5231d();
            if (view == null) {
                C8571p.m5104a(3, "BaseVideoTracker", this, "trackVideoAd received null video view instance");
            }
            this.f33230j = map;
            this.f33231k = new WeakReference<>(view);
            mo5218b();
            String format = String.format("trackVideoAd tracking ids: %s | view: %s", new JSONObject(map).toString(), C8571p.m5103a(view));
            C8571p.m5104a(3, "BaseVideoTracker", this, format);
            C8571p.m5099a("[SUCCESS] ", mo5037a() + " " + format);
            if (this.f33219d == null) {
                return true;
            }
            this.f33219d.onTrackingStarted(m5228g());
            return true;
        } catch (Exception e) {
            m5233a("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: b */
    public void mo5218b() {
        super.changeTargetView(this.f33231k.get());
        super.mo5218b();
        Map<String, Object> i = mo5034i();
        Integer num = (Integer) i.get("width");
        Integer num2 = (Integer) i.get("height");
        Integer num3 = (Integer) i.get(VastIconXmlManager.DURATION);
        C8571p.m5104a(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.f33236p.m5203a(this.f33237q, this.f33230j, num, num2, num3);
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    public void changeTargetView(View view) {
        C8571p.m5104a(3, "BaseVideoTracker", this, "changing view to " + C8571p.m5103a(view));
        this.f33231k = new WeakReference<>(view);
        try {
            super.changeTargetView(view);
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    public void dispatchEvent(MoatAdEvent moatAdEvent) {
        try {
            m5217b(moatAdEvent);
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: i */
    public abstract Map<String, Object> mo5034i();

    /* renamed from: j */
    public Double m5216j() {
        return Double.valueOf(m5215k().doubleValue() * C8574s.m5094a());
    }

    /* renamed from: k */
    public Double m5215k() {
        return this.f33235o;
    }

    /* renamed from: l */
    public void m5214l() {
        if (!this.f33234n) {
            this.f33234n = true;
            this.f33229i.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.inm.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C8571p.m5104a(3, "BaseVideoTracker", this, "Shutting down.");
                        AbstractC8538c.this.f33236p.m5208a();
                        AbstractC8538c.this.f33233m = null;
                    } catch (Exception e) {
                        C8562m.m5135a(e);
                    }
                }
            }, 500L);
        }
    }

    /* renamed from: m */
    public boolean m5213m() {
        return this.f33228h.containsKey(MoatAdEventType.AD_EVT_COMPLETE) || this.f33228h.containsKey(MoatAdEventType.AD_EVT_STOPPED) || this.f33228h.containsKey(MoatAdEventType.AD_EVT_SKIPPED);
    }

    public void removeVideoListener() {
        this.f33233m = null;
    }

    public void setPlayerVolume(Double d) {
        Double j = m5216j();
        if (!d.equals(this.f33235o)) {
            C8571p.m5104a(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "player volume changed to %f ", d));
            this.f33235o = d;
            if (!j.equals(m5216j())) {
                dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_VOLUME_CHANGE, MoatAdEvent.f33196a, this.f33235o));
            }
        }
    }

    public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        this.f33233m = videoTrackerListener;
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    public void stopTracking() {
        try {
            super.stopTracking();
            m5214l();
            if (this.f33233m != null) {
                this.f33233m = null;
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }
}
