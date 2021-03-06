package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.Logger;
import com.verizon.ads.RuleComponent;
import com.verizon.ads.support.StaticViewabilityRuleComponent;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent.class */
public class VerizonNativeImpressionRuleComponent extends StaticViewabilityRuleComponent {

    /* renamed from: a */
    private static final Logger f61938a = Logger.getInstance(VerizonNativeImpressionRuleComponent.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeImpressionRuleComponent$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (Logger.isLogLevelEnabled(3)) {
                VerizonNativeImpressionRuleComponent.f61938a.m5567d(String.format("Creating VerizonNativeImpressionViewabilityRuleComponent with ruleInfo: %s", jSONObject));
            }
            if (jSONObject == null) {
                VerizonNativeImpressionRuleComponent.f61938a.m5565e("ruleInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 3 || !(objArr[0] instanceof ViewGroup) || !(objArr[1] instanceof RuleComponent.RuleListener) || !(objArr[2] instanceof VerizonNativeAd)) {
                VerizonNativeImpressionRuleComponent.f61938a.m5565e("Call to newInstance requires ViewGroup, RuleListener, and VerizonNativeAd");
                return null;
            } else {
                ViewGroup viewGroup = (ViewGroup) objArr[0];
                RuleComponent.RuleListener ruleListener = (RuleComponent.RuleListener) objArr[1];
                if (!VerizonNativeImpressionRuleComponent.m5135a(viewGroup, (VerizonNativeAd) objArr[2])) {
                    VerizonNativeImpressionRuleComponent.f61938a.m5565e("Not all required components are attached");
                    return null;
                }
                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                if (optJSONObject == null) {
                    VerizonNativeImpressionRuleComponent.f61938a.m5565e("data in ruleInfo is either missing or not a dictionary");
                    return null;
                }
                try {
                    String string = optJSONObject.getString("eventId");
                    int i = optJSONObject.getInt("percentage");
                    int i2 = optJSONObject.getInt(VastIconXmlManager.DURATION);
                    boolean z = optJSONObject.getBoolean("continuous");
                    if ((i < 0 || i > 100) && i != -1) {
                        throw new Exception("Percentage must be >= 0 and <= 100 or == -1");
                    }
                    if (i2 < 0 || i2 > 15000) {
                        throw new Exception("Duration must be >= 0 and <= 15000");
                    }
                    VerizonNativeImpressionRuleComponent verizonNativeImpressionRuleComponent = new VerizonNativeImpressionRuleComponent(viewGroup, ruleListener, i, i2, z, string, optJSONObject.has("eventArgs") ? VerizonNativeImpressionRuleComponent.convertJSONToMap(optJSONObject.getJSONObject("eventArgs")) : null);
                    if (Logger.isLogLevelEnabled(3)) {
                        VerizonNativeImpressionRuleComponent.f61938a.m5567d(String.format("Rule created %s", verizonNativeImpressionRuleComponent));
                    }
                    return verizonNativeImpressionRuleComponent;
                } catch (Exception e) {
                    VerizonNativeImpressionRuleComponent.f61938a.m5564e(String.format("Error creating VerizonNativeImpressionViewabilityRuleComponent with ruleInfo: %s", jSONObject), e);
                    return null;
                }
            }
        }
    }

    protected VerizonNativeImpressionRuleComponent(View view, RuleComponent.RuleListener ruleListener, int i, int i2, boolean z, String str, Map<String, Object> map) {
        super(view, ruleListener, i, i2, z, str, map);
    }

    /* renamed from: a */
    static /* synthetic */ boolean m5135a(ViewGroup viewGroup, VerizonNativeAd verizonNativeAd) {
        Set<String> requiredComponentIds = verizonNativeAd.getRequiredComponentIds();
        if (Logger.isLogLevelEnabled(3)) {
            f61938a.m5567d(String.format("Required component ids for display: %s", requiredComponentIds));
        }
        if (requiredComponentIds == null) {
            f61938a.m5565e("No required component ids are defined");
            return false;
        }
        for (String str : requiredComponentIds) {
            Component component = verizonNativeAd.getComponent(str);
            if (!(component instanceof NativeViewComponent)) {
                f61938a.m5565e(String.format("Required component '%s' is not a native view component", str));
                return false;
            } else if (!((NativeViewComponent) component).isDescendantOf(viewGroup)) {
                f61938a.m5565e(String.format("Component '%s' is not attached to container", str));
                return false;
            }
        }
        return true;
    }
}
