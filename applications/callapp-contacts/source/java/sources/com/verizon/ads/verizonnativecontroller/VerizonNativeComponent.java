package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Configuration;
import com.verizon.ads.Logger;
import com.verizon.ads.PEXHandler;
import com.verizon.ads.RuleComponent;
import com.verizon.ads.events.Events;
import com.verizon.ads.nativeplacement.BuildConfig;
import com.verizon.ads.support.ImpressionEvent;
import com.verizon.ads.support.utils.Macros;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.verizonnativecontroller.VerizonNativeAd;
import com.verizon.ads.verizonnativecontroller.VerizonNativeComponent;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeComponent.class */
public abstract class VerizonNativeComponent implements NativeComponent {
    public static final String AD_LEFT_APPLICATION_EVENT = "adLeftApplication";
    public static final String IMPRESSION_EVENT = "impression";
    public static final String MACROS_KEY = "macros";
    public static final String PEX_AD_LEFT_APPLICATION_EVENT = "PEX_adLeftApplication";
    public static final String TAP_EVENT = "tap";

    /* renamed from: a */
    private static final Logger f61911a = Logger.getInstance(VerizonNativeComponent.class);

    /* renamed from: b */
    private static final Pattern f61912b = Pattern.compile("\\$\\(([^)]*)\\)");

    /* renamed from: c */
    private final AdSession f61913c;

    /* renamed from: d */
    protected final JSONObject f61914d;

    /* renamed from: e */
    private final String f61915e;

    /* renamed from: f */
    private VerizonNativeComponentBundle f61916f;

    /* renamed from: g */
    private final String f61917g;

    /* renamed from: h */
    private Set<RuleComponent> f61918h;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener.class */
    public static class NativeComponentRuleListener implements RuleComponent.RuleListener {

        /* renamed from: a */
        final WeakReference<Context> f61919a;

        /* renamed from: b */
        final WeakReference<VerizonNativeComponent> f61920b;

        NativeComponentRuleListener(Context context, VerizonNativeComponent verizonNativeComponent) {
            this.f61919a = new WeakReference<>(context);
            this.f61920b = new WeakReference<>(verizonNativeComponent);
        }

        /* renamed from: a */
        public /* synthetic */ void m5142a(RuleComponent ruleComponent) {
            Context context = this.f61919a.get();
            VerizonNativeComponent verizonNativeComponent = this.f61920b.get();
            if (verizonNativeComponent == null || context == null) {
                return;
            }
            verizonNativeComponent.m5162a(context, ruleComponent);
        }

        @Override // com.verizon.ads.RuleComponent.RuleListener
        public void onRuleFired(final RuleComponent ruleComponent) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$NativeComponentRuleListener$Z9Y1Y_i7APgpubslV_NW6b5lnYk
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeComponent.NativeComponentRuleListener.this.m5142a(ruleComponent);
                }
            });
        }
    }

    public VerizonNativeComponent(AdSession adSession, String str, String str2, JSONObject jSONObject) {
        this.f61913c = adSession;
        this.f61915e = str;
        this.f61917g = str2;
        this.f61914d = jSONObject;
    }

    /* renamed from: a */
    private VerizonNativeAd m5163a() {
        VerizonNativeComponentBundle verizonNativeComponentBundle = this;
        while (!(verizonNativeComponentBundle instanceof VerizonNativeAd)) {
            verizonNativeComponentBundle = verizonNativeComponentBundle.f61916f;
            if (verizonNativeComponentBundle == null) {
                return null;
            }
        }
        return (VerizonNativeAd) verizonNativeComponentBundle;
    }

    /* renamed from: a */
    private void m5156a(RuleComponent ruleComponent) {
        if (ruleComponent == null) {
            return;
        }
        if (this.f61918h == null) {
            this.f61918h = Collections.synchronizedSet(new HashSet());
        }
        this.f61918h.add(ruleComponent);
    }

    /* renamed from: a */
    private void m5152a(String str, String str2, Map<String, Object> map) {
        VerizonNativeAd.InteractionListener m5149b = m5149b();
        if (m5149b != null) {
            str2.hashCode();
            boolean z = true;
            switch (str2.hashCode()) {
                case -1145236442:
                    if (str2.equals(AD_LEFT_APPLICATION_EVENT)) {
                        z = false;
                        break;
                    }
                    break;
                case -1092806678:
                    if (str2.equals(PEX_AD_LEFT_APPLICATION_EVENT)) {
                        z = true;
                        break;
                    }
                    break;
                case 114595:
                    if (str2.equals(TAP_EVENT)) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                case true:
                    m5149b.onAdLeftApplication(this);
                    return;
                case true:
                    m5149b.onClicked(this);
                    return;
                default:
                    m5149b.onEvent(str, str2, map);
                    return;
            }
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5151a(JSONArray jSONArray, Map map) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                HttpUtils.getContentFromGetRequest(Macros.replacePattern(f61912b, jSONArray.getString(i), map, ""));
            } catch (JSONException e) {
                f61911a.m5564e("Exception while retrieving tracker url.", e);
            }
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5150a(JSONObject jSONObject, Context context, Map map) {
        try {
            String string = jSONObject.getString("type");
            if ("pex".equalsIgnoreCase(string)) {
                final String string2 = jSONObject.getString("id");
                PEXHandler mo5153a = mo5153a(string2);
                if (mo5153a != null) {
                    mo5153a.execute(context, new PEXHandler.PEXHandlerListener() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$ClR9eXWaw7L_znbcAUqMkhYrkRM
                        @Override // com.verizon.ads.PEXHandler.PEXHandlerListener
                        public final void onEvent(String str, Map map2) {
                            VerizonNativeComponent.this.m5146b(string2, str, map2);
                        }
                    }, jSONObject.optJSONObject("args"));
                } else {
                    f61911a.m5565e(String.format("No loaded experience exists with id <%s>.", string2));
                }
            } else if (!"trackers".equalsIgnoreCase(string)) {
                if (!"triggerEvent".equalsIgnoreCase(string)) {
                    return;
                }
                m5161a(context, jSONObject.getString("eventId"), (Map<String, Object>) null);
            } else {
                final JSONArray jSONArray = jSONObject.getJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
                Map map2 = null;
                if (map != null) {
                    map2 = (Map) map.get(MACROS_KEY);
                }
                if (jSONArray.length() <= 0) {
                    return;
                }
                final Map map3 = map2;
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$qufl_lZb_ryDbObAe1eiwngwTe8
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonNativeComponent.this.m5151a(jSONArray, map3);
                    }
                });
            }
        } catch (Exception e) {
            f61911a.m5564e("An exception occurred processing event action json.", e);
        }
    }

    /* renamed from: a */
    private boolean m5158a(View view, JSONObject jSONObject) {
        if (jSONObject == null) {
            f61911a.m5565e("Error creating impression rule, json is null");
            return false;
        }
        try {
            jSONObject.getJSONObject("data").put("eventId", "impression");
            m5147b(view, jSONObject);
            return true;
        } catch (JSONException e) {
            f61911a.m5564e("Error adding eventId to rule definition", e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m5157a(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == null) {
                return false;
            }
            if (viewParent == viewGroup) {
                return true;
            }
            parent = viewParent.getParent();
        }
    }

    /* renamed from: b */
    private VerizonNativeAd.InteractionListener m5149b() {
        VerizonNativeAd m5163a = m5163a();
        if (m5163a == null) {
            return null;
        }
        return m5163a.f61884c;
    }

    /* renamed from: b */
    private void m5147b(View view, JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("type");
            Component component = ComponentRegistry.getComponent(string, null, jSONObject, view, new NativeComponentRuleListener(view.getContext(), this), m5163a());
            if (!(component instanceof RuleComponent)) {
                f61911a.m5565e(String.format("Component instance is null or not an implementation of RuleComponent for type: %s", string));
            } else {
                m5156a((RuleComponent) component);
            }
        } catch (JSONException e) {
            f61911a.m5565e(String.format("type is missing in rule definition for component: %s", this.f61915e));
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5146b(String str, String str2, Map map) {
        m5152a(str, "PEX_".concat(String.valueOf(str2)), map);
    }

    /* renamed from: e */
    public /* synthetic */ void m5143e(View view) {
        m5161a(view.getContext(), TAP_EVENT, (Map<String, Object>) null);
    }

    /* renamed from: a */
    PEXHandler mo5153a(String str) {
        VerizonNativeAd m5163a = m5163a();
        if (m5163a == null) {
            return null;
        }
        return m5163a.mo5153a(str);
    }

    /* renamed from: a */
    public Map<String, String> mo5126a(Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if (entry.getValue() instanceof String) {
                    hashMap.put(entry.getKey(), (String) entry.getValue());
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final JSONArray m5154a(VerizonNativeComponentBundle verizonNativeComponentBundle, JSONObject jSONObject, String str) {
        JSONObject jSONObject2;
        while (true) {
            if (jSONObject != null) {
                jSONObject2 = jSONObject.optJSONObject(verizonNativeComponentBundle != null ? Constants.VIDEO_TRACKING_EVENTS_KEY : "defaultEvents");
            } else {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                if (jSONObject2.length() == 0) {
                    return null;
                }
                JSONObject optJSONObject = jSONObject2.optJSONObject(str);
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("actions");
                        if (jSONArray.length() > 0) {
                            return jSONArray;
                        }
                    } catch (JSONException e) {
                        f61911a.m5564e(String.format("No actions specified for event <%s>", str), e);
                    }
                }
            }
            if (verizonNativeComponentBundle != null) {
                VerizonNativeComponentBundle verizonNativeComponentBundle2 = verizonNativeComponentBundle.f61916f;
                jSONObject = verizonNativeComponentBundle.getComponentInfo(false);
                verizonNativeComponentBundle = verizonNativeComponentBundle2;
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    final void m5162a(Context context, RuleComponent ruleComponent) {
        String eventId;
        if (context == null || ruleComponent == null || (eventId = ruleComponent.getEventId()) == null) {
            return;
        }
        Map<String, Object> hashMap = new HashMap<>();
        Map<String, String> mo5126a = mo5126a(ruleComponent.getEventArgs());
        if (mo5126a != null && !mo5126a.isEmpty()) {
            hashMap.put(MACROS_KEY, mo5126a);
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61911a.m5567d(String.format("Firing rule event '%s' with args %s", eventId, hashMap));
        }
        m5161a(context, eventId, hashMap);
    }

    /* renamed from: a */
    public final void m5161a(Context context, String str, Map<String, Object> map) {
        JSONObject jSONObject;
        VerizonNativeAd m5163a;
        if (Logger.isLogLevelEnabled(3)) {
            f61911a.m5567d(String.format("onEvent: %s - %s, %s", this.f61915e, str, getAdSession()));
        }
        VerizonNativeComponentBundle verizonNativeComponentBundle = this.f61916f;
        JSONObject jSONObject2 = this.f61914d;
        while (true) {
            JSONObject optJSONObject = jSONObject2 != null ? jSONObject2.optJSONObject(verizonNativeComponentBundle != null ? Constants.VIDEO_TRACKING_EVENTS_KEY : "defaultEvents") : null;
            if (optJSONObject != null) {
                jSONObject = null;
                if (optJSONObject.length() == 0) {
                    break;
                }
                jSONObject = optJSONObject.optJSONObject(str);
                if (jSONObject != null) {
                    break;
                }
            }
            jSONObject = null;
            if (verizonNativeComponentBundle == null) {
                break;
            }
            VerizonNativeComponentBundle verizonNativeComponentBundle2 = verizonNativeComponentBundle.f61916f;
            jSONObject2 = verizonNativeComponentBundle.getComponentInfo(false);
            verizonNativeComponentBundle = verizonNativeComponentBundle2;
        }
        if (jSONObject != null && jSONObject.optBoolean("fireOnce", false)) {
            if (jSONObject.optBoolean("fired", false)) {
                return;
            }
            try {
                jSONObject.put("fired", true);
            } catch (JSONException e) {
                f61911a.m5564e("An error occurred adding a property for event.", e);
            }
        }
        m5152a(this.f61915e, str, map);
        if ("impression".equals(str) && (m5163a = m5163a()) != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61911a.m5567d(String.format("Ad shown: %s", getAdSession().toStringLongDescription()));
            }
            Events.sendEvent(ImpressionEvent.IMPRESSION_EVENT_ID, new ImpressionEvent(getAdSession()));
            if (m5163a.f61883b != null) {
                try {
                    m5163a.f61883b.m7175a();
                    VerizonNativeAd.f61881a.m5567d("Fired OMSDK impression event.");
                } catch (Throwable th) {
                    VerizonNativeAd.f61881a.m5564e("Error occurred firing OMSDK Impression event.", th);
                }
            }
        }
        JSONArray m5154a = m5154a(this.f61916f, this.f61914d, str);
        if (m5154a == null || m5154a.length() == 0) {
            f61911a.m5567d(String.format("No actions defined for event: %s", str));
            return;
        }
        for (int i = 0; i < m5154a.length(); i++) {
            try {
                m5160a(context, (JSONObject) m5154a.get(i), map);
            } catch (JSONException e2) {
                f61911a.m5564e("An error occurred performing an action for event.", e2);
            }
        }
    }

    /* renamed from: a */
    public final void m5160a(final Context context, final JSONObject jSONObject, final Map<String, Object> map) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$tK64cjkvcj1vGxPkTcCkgJxmG5w
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeComponent.this.m5150a(jSONObject, context, map);
            }
        });
    }

    /* renamed from: a */
    public final void m5159a(View view) {
        if (view == null) {
            f61911a.m5565e("Cannot register tap listeners for null view");
            return;
        }
        JSONArray m5154a = m5154a(this.f61916f, this.f61914d, TAP_EVENT);
        if (m5154a == null || m5154a.length() == 0) {
            f61911a.m5567d("No tap actions defined");
        } else {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$phOFi95KyG8DtIKAqv3Xl__t_Wg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    VerizonNativeComponent.this.m5143e(view2);
                }
            });
        }
    }

    /* renamed from: a */
    public final void m5155a(VerizonNativeComponentBundle verizonNativeComponentBundle) {
        this.f61916f = verizonNativeComponentBundle;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void applyStyle(View view, Map<String, String> map) {
        try {
            if (view == null) {
                f61911a.m5559w("Cannot style a null View reference.");
                return;
            }
            String str = null;
            if (map != null) {
                str = map.get("backgroundColor");
            }
            String str2 = (String) getStyleAttributeValue("backgroundColor", str);
            if (str2 == null) {
                return;
            }
            view.setBackgroundColor(Color.parseColor(str2));
        } catch (Throwable th) {
            f61911a.m5564e("Error applying styles.", th);
        }
    }

    /* renamed from: b */
    public final void m5148b(View view) {
        if (view == null) {
            f61911a.m5565e("Cannot create rules for a null view");
            return;
        }
        JSONObject jSONObject = this.f61914d;
        if (jSONObject == null) {
            f61911a.m5565e("Cannot create rules with null componentInfo");
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("rules");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            return;
        }
        if (this.f61918h != null) {
            if (!Logger.isLogLevelEnabled(3)) {
                return;
            }
            f61911a.m5567d(String.format("Rules have already been created for component: %s", this.f61915e));
            return;
        }
        int i = 0;
        if (Logger.isLogLevelEnabled(3)) {
            f61911a.m5567d(String.format("Creating rules for component: %s", this.f61915e));
            i = 0;
        }
        while (i < optJSONArray.length()) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                m5147b(view, optJSONObject);
            }
            i++;
        }
    }

    /* renamed from: c */
    public final boolean m5145c(View view) {
        JSONObject jSONObject = this.f61914d;
        if (jSONObject == null) {
            f61911a.m5565e("Cannot create impressionRule with null componentInfo");
            return false;
        }
        return m5158a(view, jSONObject.optJSONObject("impressionRule"));
    }

    /* renamed from: d */
    public final void m5144d(View view) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "rule/verizon-native-impression-v1");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("percentage", Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionViewabilityPercent", -1));
            jSONObject2.put("continuous", true);
            jSONObject2.put(VastIconXmlManager.DURATION, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionDuration", 0));
            jSONObject.put("data", jSONObject2);
        } catch (JSONException e) {
            f61911a.m5564e("Error creating impression rule json", e);
        }
        m5158a(view, jSONObject);
    }

    public AdSession getAdSession() {
        return this.f61913c;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public Object getStyleAttributeValue(String str, Object obj) {
        JSONObject optJSONObject;
        Object opt;
        JSONObject jSONObject = this.f61914d;
        if (jSONObject != null && (optJSONObject = jSONObject.optJSONObject("style")) != null && (opt = optJSONObject.opt(str)) != null) {
            return opt;
        }
        return obj;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public String getType() {
        return this.f61917g;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void overrideStyle(View view, Map<String, String> map) {
        try {
            if (view == null) {
                f61911a.m5559w("Cannot style a null View reference.");
                return;
            }
            String str = map.get("backgroundColor");
            if (str == null) {
                return;
            }
            view.setBackgroundColor(Color.parseColor(str));
        } catch (Throwable th) {
            f61911a.m5564e("Error overriding style.", th);
        }
    }

    @Override // com.verizon.ads.Component
    public void release() {
        Set<RuleComponent> set = this.f61918h;
        if (set != null && set.size() > 0) {
            f61911a.m5567d("Releasing rules");
            for (RuleComponent ruleComponent : this.f61918h) {
                ruleComponent.release();
            }
            this.f61918h.clear();
        }
        this.f61916f = null;
    }
}
