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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35603a = Logger.getInstance(StaticViewabilityRuleComponent.class);

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f35604b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35605c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f35606d = false;
    private RuleComponent.RuleListener e;
    private volatile ThreadUtils.ScheduledRunnable f;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/StaticViewabilityRuleComponent$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (Logger.isLogLevelEnabled(3)) {
                StaticViewabilityRuleComponent.f35603a.d(String.format("Creating StaticViewabilityRuleComponent with ruleInfo: %s", jSONObject));
            }
            if (jSONObject == null) {
                StaticViewabilityRuleComponent.f35603a.e("ruleInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof View) || !(objArr[1] instanceof RuleComponent.RuleListener)) {
                StaticViewabilityRuleComponent.f35603a.e("Call to newInstance requires View and RuleListener");
                return null;
            } else {
                View view = (View) objArr[0];
                RuleComponent.RuleListener ruleListener = (RuleComponent.RuleListener) objArr[1];
                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                if (optJSONObject == null) {
                    StaticViewabilityRuleComponent.f35603a.e("data in ruleInfo is either missing or not a dictionary");
                    return null;
                }
                try {
                    String string = optJSONObject.getString("eventId");
                    int i = optJSONObject.getInt("percentage");
                    int i2 = optJSONObject.getInt(VastIconXmlManager.DURATION);
                    boolean z = optJSONObject.getBoolean("continuous");
                    if (i < 0 || i > 100) {
                        throw new Exception("Percentage must be >= 0 and <= 100");
                    } else if (i2 < 0 || i2 > 15000) {
                        throw new Exception("Duration must be >= 0 and <= 15000");
                    } else {
                        StaticViewabilityRuleComponent staticViewabilityRuleComponent = new StaticViewabilityRuleComponent(view, ruleListener, i, i2, z, string, optJSONObject.has("eventArgs") ? ViewabilityWatcherRule.convertJSONToMap(optJSONObject.getJSONObject("eventArgs")) : null);
                        if (Logger.isLogLevelEnabled(3)) {
                            StaticViewabilityRuleComponent.f35603a.d(String.format("Rule created %s", staticViewabilityRuleComponent));
                        }
                        return staticViewabilityRuleComponent;
                    }
                } catch (Exception e) {
                    StaticViewabilityRuleComponent.f35603a.e(String.format("Error creating StaticViewabilityRuleComponent with ruleInfo: %s", jSONObject), e);
                    return null;
                }
            }
        }
    }

    public StaticViewabilityRuleComponent(View view, RuleComponent.RuleListener ruleListener, int i, int i2, boolean z, String str, Map<String, Object> map) {
        super(view, i, i2, z);
        this.e = ruleListener;
        this.f35605c = str;
        this.f35604b = map;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    protected final boolean a() {
        return true;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    protected final long b() {
        return System.currentTimeMillis();
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    protected final void c() {
        long max = Math.max(h() - m(), 0L);
        if (Logger.isLogLevelEnabled(3)) {
            f35603a.d(String.format("Starting rule timer with delay: %d, %s", Long.valueOf(max), this));
        }
        this.f = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.verizon.ads.support._$$Lambda$WzxyVz7HRgOSKd5_lSmlGrLu_l8
            @Override // java.lang.Runnable
            public final void run() {
                StaticViewabilityRuleComponent.this.fire();
            }
        }, max);
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    protected final void d() {
        if (this.f != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35603a.d(String.format("Stopping rule timer: %s", this));
            }
            this.f.cancel();
            this.f = null;
        }
    }

    @Override // com.verizon.ads.RuleComponent
    public void fire() {
        if (!ThreadUtils.isUiThread()) {
            f35603a.e("Must be on the UI thread to fire rule");
        } else if (this.f35606d) {
            f35603a.d("Rule has already fired");
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f35603a.d(String.format("Firing rule: %s", this));
            }
            this.f35606d = true;
            k();
            i();
            RuleComponent.RuleListener ruleListener = this.e;
            if (ruleListener != null) {
                ruleListener.onRuleFired(this);
            }
        }
    }

    @Override // com.verizon.ads.RuleComponent
    public Map<String, Object> getEventArgs() {
        return this.f35604b;
    }

    @Override // com.verizon.ads.RuleComponent
    public String getEventId() {
        return this.f35605c;
    }

    @Override // com.verizon.ads.RuleComponent
    public boolean hasFired() {
        return this.f35606d;
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule, com.verizon.ads.RuleComponent, com.verizon.ads.Component
    public void release() {
        f35603a.d("Releasing");
        k();
        this.e = null;
        super.release();
    }

    @Override // com.verizon.ads.RuleComponent
    public void reset() {
    }

    @Override // com.verizon.ads.support.ViewabilityWatcherRule
    public String toString() {
        return String.format("StaticViewabilityRuleComponent{eventId: %s, %s}", this.f35605c, super.toString());
    }
}
