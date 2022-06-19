package com.verizon.ads.support;

import android.content.Context;
import android.view.View;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.Logger;
import com.verizon.ads.RuleComponent;
import com.verizon.ads.utils.ThreadUtils;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/StaticViewabilityRuleComponent.class */
public class StaticViewabilityRuleComponent extends ViewabilityWatcherRule implements RuleComponent {

    /* renamed from: a */
    private static final Logger f61671a = Logger.getInstance(StaticViewabilityRuleComponent.class);

    /* renamed from: b */
    private final Map<String, Object> f61672b;

    /* renamed from: c */
    private final String f61673c;

    /* renamed from: d */
    private boolean f61674d = false;

    /* renamed from: e */
    private RuleComponent.RuleListener f61675e;

    /* renamed from: f */
    private volatile ThreadUtils.ScheduledRunnable f61676f;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/StaticViewabilityRuleComponent$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (Logger.isLogLevelEnabled(3)) {
                StaticViewabilityRuleComponent.f61671a.m5567d(String.format("Creating StaticViewabilityRuleComponent with ruleInfo: %s", jSONObject));
            }
            if (jSONObject == null) {
                StaticViewabilityRuleComponent.f61671a.m5565e("ruleInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof View) || !(objArr[1] instanceof RuleComponent.RuleListener)) {
                StaticViewabilityRuleComponent.f61671a.m5565e("Call to newInstance requires View and RuleListener");
                return null;
            } else {
                View view = (View) objArr[0];
                RuleComponent.RuleListener ruleListener = (RuleComponent.RuleListener) objArr[1];
                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                if (optJSONObject == null) {
                    StaticViewabilityRuleComponent.f61671a.m5565e("data in ruleInfo is either missing or not a dictionary");
                    return null;
                }
                try {
                    String string = optJSONObject.getString("eventId");
                    int i = optJSONObject.getInt("percentage");
                    int i2 = optJSONObject.getInt(VastIconXmlManager.DURATION);
                    boolean z = optJSONObject.getBoolean("continuous");
                    if (i < 0 || i > 100) {
                        throw new Exception("Percentage must be >= 0 and <= 100");
                    }
                    if (i2 < 0 || i2 > 15000) {
                        throw new Exception("Duration must be >= 0 and <= 15000");
                    }
                    StaticViewabilityRuleComponent staticViewabilityRuleComponent = new StaticViewabilityRuleComponent(view, ruleListener, i, i2, z, string, optJSONObject.has("eventArgs") ? ViewabilityWatcherRule.convertJSONToMap(optJSONObject.getJSONObject("eventArgs")) : null);
                    if (Logger.isLogLevelEnabled(3)) {
                        StaticViewabilityRuleComponent.f61671a.m5567d(String.format("Rule created %s", staticViewabilityRuleComponent));
                    }
                    return staticViewabilityRuleComponent;
                } catch (Exception e) {
                    StaticViewabilityRuleComponent.f61671a.m5564e(String.format("Error creating StaticViewabilityRuleComponent with ruleInfo: %s", jSONObject), e);
                    return null;
                }
            }
        }
    }

    public StaticViewabilityRuleComponent(View view, RuleComponent.RuleListener ruleListener, int i, int i2, boolean z, String str, Map<String, Object> map) {
        super(view, i, i2, z);
        this.f61675e = ruleListener;
        this.f61673c = str;
        this.f61672b = map;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    /* renamed from: a */
    protected final boolean mo5332a() {
        return true;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    /* renamed from: b */
    protected final long mo5331b() {
        return System.currentTimeMillis();
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    /* renamed from: c */
    protected final void mo5330c() {
        long max = Math.max(m5325h() - m5320m(), 0L);
        if (Logger.isLogLevelEnabled(3)) {
            f61671a.m5567d(String.format("Starting rule timer with delay: %d, %s", Long.valueOf(max), this));
        }
        this.f61676f = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$WzxyVz7HRgOSKd5_lSmlGrLu_l8
            @Override // java.lang.Runnable
            public final void run() {
                StaticViewabilityRuleComponent.this.fire();
            }
        }, max);
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    /* renamed from: d */
    protected final void mo5329d() {
        if (this.f61676f != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61671a.m5567d(String.format("Stopping rule timer: %s", this));
            }
            this.f61676f.cancel();
            this.f61676f = null;
        }
    }

    @Override // com.verizon.ads.RuleComponent
    public void fire() {
        if (!ThreadUtils.isUiThread()) {
            f61671a.m5565e("Must be on the UI thread to fire rule");
        } else if (this.f61674d) {
            f61671a.m5567d("Rule has already fired");
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f61671a.m5567d(String.format("Firing rule: %s", this));
            }
            this.f61674d = true;
            m5322k();
            m5324i();
            RuleComponent.RuleListener ruleListener = this.f61675e;
            if (ruleListener == null) {
                return;
            }
            ruleListener.onRuleFired(this);
        }
    }

    @Override // com.verizon.ads.RuleComponent
    public Map<String, Object> getEventArgs() {
        return this.f61672b;
    }

    @Override // com.verizon.ads.RuleComponent
    public String getEventId() {
        return this.f61673c;
    }

    @Override // com.verizon.ads.RuleComponent
    public boolean hasFired() {
        return this.f61674d;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule, com.verizon.ads.RuleComponent, com.verizon.ads.Component
    public void release() {
        f61671a.m5567d("Releasing");
        m5322k();
        this.f61675e = null;
        super.release();
    }

    @Override // com.verizon.ads.RuleComponent
    public void reset() {
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    public String toString() {
        return String.format("StaticViewabilityRuleComponent{eventId: %s, %s}", this.f61673c, super.toString());
    }
}
