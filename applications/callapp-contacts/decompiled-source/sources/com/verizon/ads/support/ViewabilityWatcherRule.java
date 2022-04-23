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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35629a = Logger.getInstance(ViewabilityWatcherRule.class);

    /* renamed from: c  reason: collision with root package name */
    private final boolean f35631c;

    /* renamed from: d  reason: collision with root package name */
    private final int f35632d;
    private volatile long f;
    private ViewabilityWatcher g;

    /* renamed from: b  reason: collision with root package name */
    private boolean f35630b = false;
    private volatile long e = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewabilityWatcherRule(View view, int i, int i2, boolean z) {
        this.f35632d = i2;
        this.f35631c = z;
        ViewabilityWatcher viewabilityWatcher = new ViewabilityWatcher(view, this);
        this.g = viewabilityWatcher;
        viewabilityWatcher.setMinViewabilityPercent(i);
        this.g.startWatching();
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
            f35629a.e("Error converting JSON to map", e);
            return null;
        }
    }

    private long e() {
        if (this.f35630b) {
            return b() - this.f;
        }
        return 0L;
    }

    protected boolean a() {
        return true;
    }

    protected long b() {
        return 0L;
    }

    protected void c() {
    }

    protected void d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View f() {
        ViewabilityWatcher viewabilityWatcher = this.g;
        if (viewabilityWatcher != null) {
            return viewabilityWatcher.getView();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        ViewabilityWatcher viewabilityWatcher = this.g;
        return viewabilityWatcher != null && viewabilityWatcher.viewable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int h() {
        return this.f35632d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        ViewabilityWatcher viewabilityWatcher = this.g;
        if (viewabilityWatcher != null) {
            viewabilityWatcher.stopWatching();
            this.g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        if (this.f35630b) {
            f35629a.d("Already tracking");
        } else if (!a()) {
            f35629a.d("Tracking criteria not satisifed -- not tracking");
        } else {
            f35629a.d("Starting tracking");
            this.f35630b = true;
            this.f = b();
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        if (this.f35630b) {
            f35629a.d("Stopping tracking");
            this.e = this.f35631c ? 0L : m();
            this.f = 0L;
            this.f35630b = false;
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean l() {
        return this.f35630b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long m() {
        return this.e + e();
    }

    @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
    public void onViewableChanged(boolean z) {
        if (Logger.isLogLevelEnabled(3)) {
            f35629a.d(String.format("onViewableChanged: %s, %s", Boolean.valueOf(z), this));
        }
        if (z) {
            j();
        } else {
            k();
        }
    }

    public void release() {
        f35629a.d("Releasing");
        i();
    }

    public String toString() {
        ViewabilityWatcher viewabilityWatcher = this.g;
        return viewabilityWatcher == null ? "ViewabilityWatcherRule" : String.format("ViewabilityWatcherRule{view: %s, percentage: %d, duration: %d, continuous: %s, time in view: %d}", viewabilityWatcher.getView(), Integer.valueOf(this.g.getMinViewabilityPercent()), Integer.valueOf(this.f35632d), Boolean.valueOf(this.f35631c), Long.valueOf(m()));
    }
}
