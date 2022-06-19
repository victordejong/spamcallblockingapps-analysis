package com.verizon.ads.support;

import android.view.View;
import com.verizon.ads.Logger;
import com.verizon.ads.support.utils.ViewabilityWatcher;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/ViewabilityWatcherRule.class */
public class ViewabilityWatcherRule implements ViewabilityWatcher.ViewabilityListener {

    /* renamed from: a */
    private static final Logger f61712a = Logger.getInstance(ViewabilityWatcherRule.class);

    /* renamed from: c */
    private final boolean f61714c;

    /* renamed from: d */
    private final int f61715d;

    /* renamed from: f */
    private volatile long f61717f;

    /* renamed from: g */
    private ViewabilityWatcher f61718g;

    /* renamed from: b */
    private boolean f61713b = false;

    /* renamed from: e */
    private volatile long f61716e = 0;

    public ViewabilityWatcherRule(View view, int i, int i2, boolean z) {
        this.f61715d = i2;
        this.f61714c = z;
        ViewabilityWatcher viewabilityWatcher = new ViewabilityWatcher(view, this);
        this.f61718g = viewabilityWatcher;
        viewabilityWatcher.setMinViewabilityPercent(i);
        this.f61718g.startWatching();
    }

    public static Map<String, Object> convertJSONToMap(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.get(next));
            }
            return hashMap;
        } catch (JSONException e) {
            f61712a.m5564e("Error converting JSON to map", e);
            return null;
        }
    }

    /* renamed from: e */
    private long m5328e() {
        if (this.f61713b) {
            return mo5331b() - this.f61717f;
        }
        return 0L;
    }

    /* renamed from: a */
    protected boolean mo5332a() {
        return true;
    }

    /* renamed from: b */
    protected long mo5331b() {
        return 0L;
    }

    /* renamed from: c */
    protected void mo5330c() {
    }

    /* renamed from: d */
    protected void mo5329d() {
    }

    /* renamed from: f */
    public final View m5327f() {
        ViewabilityWatcher viewabilityWatcher = this.f61718g;
        if (viewabilityWatcher != null) {
            return viewabilityWatcher.getView();
        }
        return null;
    }

    /* renamed from: g */
    public final boolean m5326g() {
        ViewabilityWatcher viewabilityWatcher = this.f61718g;
        return viewabilityWatcher != null && viewabilityWatcher.viewable;
    }

    /* renamed from: h */
    public final int m5325h() {
        return this.f61715d;
    }

    /* renamed from: i */
    public final void m5324i() {
        ViewabilityWatcher viewabilityWatcher = this.f61718g;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.stopWatching();
            this.f61718g = null;
        }
    }

    /* renamed from: j */
    public final void m5323j() {
        if (this.f61713b) {
            f61712a.m5567d("Already tracking");
        } else if (!mo5332a()) {
            f61712a.m5567d("Tracking criteria not satisifed -- not tracking");
        } else {
            f61712a.m5567d("Starting tracking");
            this.f61713b = true;
            this.f61717f = mo5331b();
            mo5330c();
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: k */
    public void m5322k() {
        if (!this.f61713b) {
            return;
        }
        f61712a.m5567d("Stopping tracking");
        this.f61716e = this.f61714c ? (char) 0 : m5320m();
        this.f61717f = 0L;
        this.f61713b = false;
        mo5329d();
    }

    /* renamed from: l */
    public final boolean m5321l() {
        return this.f61713b;
    }

    /* renamed from: m */
    public final long m5320m() {
        return this.f61716e + m5328e();
    }

    @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
    public void onViewableChanged(boolean z) {
        if (Logger.isLogLevelEnabled(3)) {
            f61712a.m5567d(String.format("onViewableChanged: %s, %s", Boolean.valueOf(z), this));
        }
        if (z) {
            m5323j();
        } else {
            m5322k();
        }
    }

    public void release() {
        f61712a.m5567d("Releasing");
        m5324i();
    }

    public String toString() {
        ViewabilityWatcher viewabilityWatcher = this.f61718g;
        return viewabilityWatcher == null ? "ViewabilityWatcherRule" : String.format("ViewabilityWatcherRule{view: %s, percentage: %d, duration: %d, continuous: %s, time in view: %d}", viewabilityWatcher.getView(), Integer.valueOf(this.f61718g.getMinViewabilityPercent()), Integer.valueOf(this.f61715d), Boolean.valueOf(this.f61714c), Long.valueOf(m5320m()));
    }
}
