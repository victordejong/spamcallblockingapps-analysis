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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35738a = Logger.getInstance(VerizonNativeComponent.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f35739b = Pattern.compile("\\$\\(([^)]*)\\)");

    /* renamed from: c  reason: collision with root package name */
    private final AdSession f35740c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f35741d;
    private final String e;
    private VerizonNativeComponentBundle f;
    private final String g;
    private Set<RuleComponent> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener.class */
    public static class NativeComponentRuleListener implements RuleComponent.RuleListener {

        /* renamed from: a  reason: collision with root package name */
        final WeakReference<Context> f35742a;

        /* renamed from: b  reason: collision with root package name */
        final WeakReference<VerizonNativeComponent> f35743b;

        NativeComponentRuleListener(Context context, VerizonNativeComponent verizonNativeComponent) {
            this.f35742a = new WeakReference<>(context);
            this.f35743b = new WeakReference<>(verizonNativeComponent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(RuleComponent ruleComponent) {
            Context context = this.f35742a.get();
            VerizonNativeComponent verizonNativeComponent = this.f35743b.get();
            if (verizonNativeComponent != null && context != null) {
                verizonNativeComponent.a(context, ruleComponent);
            }
        }

        @Override // com.verizon.ads.RuleComponent.RuleListener
        public void onRuleFired(final RuleComponent ruleComponent) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$NativeComponentRuleListener$Z9Y1Y_i7APgpubslV_NW6b5lnYk
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonNativeComponent.NativeComponentRuleListener.this.a(ruleComponent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VerizonNativeComponent(AdSession adSession, String str, String str2, JSONObject jSONObject) {
        this.f35740c = adSession;
        this.e = str;
        this.g = str2;
        this.f35741d = jSONObject;
    }

    private VerizonNativeAd a() {
        VerizonNativeComponent verizonNativeComponent = this;
        while (!(verizonNativeComponent instanceof VerizonNativeAd)) {
            verizonNativeComponent = verizonNativeComponent.f;
            if (verizonNativeComponent == null) {
                return null;
            }
        }
        return (VerizonNativeAd) verizonNativeComponent;
    }

    private void a(RuleComponent ruleComponent) {
        if (ruleComponent != null) {
            if (this.h == null) {
                this.h = Collections.synchronizedSet(new HashSet());
            }
            this.h.add(ruleComponent);
        }
    }

    private void a(String str, String str2, Map<String, Object> map) {
        VerizonNativeAd.InteractionListener b2 = b();
        if (b2 != null) {
            str2.hashCode();
            char c2 = 65535;
            switch (str2.hashCode()) {
                case -1145236442:
                    if (str2.equals(AD_LEFT_APPLICATION_EVENT)) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1092806678:
                    if (str2.equals(PEX_AD_LEFT_APPLICATION_EVENT)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 114595:
                    if (str2.equals(TAP_EVENT)) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                case 1:
                    b2.onAdLeftApplication(this);
                    return;
                case 2:
                    b2.onClicked(this);
                    return;
                default:
                    b2.onEvent(str, str2, map);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(JSONArray jSONArray, Map map) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                HttpUtils.getContentFromGetRequest(Macros.replacePattern(f35739b, jSONArray.getString(i), map, ""));
            } catch (JSONException e) {
                f35738a.e("Exception while retrieving tracker url.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(JSONObject jSONObject, Context context, Map map) {
        try {
            String string = jSONObject.getString("type");
            if ("pex".equalsIgnoreCase(string)) {
                final String string2 = jSONObject.getString("id");
                PEXHandler a2 = a(string2);
                if (a2 != null) {
                    a2.execute(context, new PEXHandler.PEXHandlerListener() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$ClR9eXWaw7L_znbcAUqMkhYrkRM
                        @Override // com.verizon.ads.PEXHandler.PEXHandlerListener
                        public final void onEvent(String str, Map map2) {
                            VerizonNativeComponent.this.b(string2, str, map2);
                        }
                    }, jSONObject.optJSONObject("args"));
                } else {
                    f35738a.e(String.format("No loaded experience exists with id <%s>.", string2));
                }
            } else {
                final Map map2 = null;
                if ("trackers".equalsIgnoreCase(string)) {
                    final JSONArray jSONArray = jSONObject.getJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
                    if (map != null) {
                        map2 = (Map) map.get(MACROS_KEY);
                    }
                    if (jSONArray.length() > 0) {
                        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$qufl_lZb_ryDbObAe1eiwngwTe8
                            @Override // java.lang.Runnable
                            public final void run() {
                                VerizonNativeComponent.this.a(jSONArray, map2);
                            }
                        });
                    }
                } else if ("triggerEvent".equalsIgnoreCase(string)) {
                    a(context, jSONObject.getString("eventId"), (Map<String, Object>) null);
                }
            }
        } catch (Exception e) {
            f35738a.e("An exception occurred processing event action json.", e);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        if (jSONObject == null) {
            f35738a.e("Error creating impression rule, json is null");
            return false;
        }
        try {
            jSONObject.getJSONObject("data").put("eventId", "impression");
            b(view, jSONObject);
            return true;
        } catch (JSONException e) {
            f35738a.e("Error adding eventId to rule definition", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return false;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == viewGroup) {
                return true;
            }
        }
        return false;
    }

    private VerizonNativeAd.InteractionListener b() {
        VerizonNativeAd a2 = a();
        if (a2 == null) {
            return null;
        }
        return a2.f35722c;
    }

    private void b(View view, JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("type");
            Component component = ComponentRegistry.getComponent(string, null, jSONObject, view, new NativeComponentRuleListener(view.getContext(), this), a());
            if (!(component instanceof RuleComponent)) {
                f35738a.e(String.format("Component instance is null or not an implementation of RuleComponent for type: %s", string));
            } else {
                a((RuleComponent) component);
            }
        } catch (JSONException e) {
            f35738a.e(String.format("type is missing in rule definition for component: %s", this.e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, String str2, Map map) {
        a(str, "PEX_".concat(String.valueOf(str2)), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        a(view.getContext(), TAP_EVENT, (Map<String, Object>) null);
    }

    PEXHandler a(String str) {
        VerizonNativeAd a2 = a();
        if (a2 == null) {
            return null;
        }
        return a2.a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, String> a(Map<String, Object> map) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public final JSONArray a(VerizonNativeComponentBundle verizonNativeComponentBundle, JSONObject jSONObject, String str) {
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
                        f35738a.e(String.format("No actions specified for event <%s>", str), e);
                    }
                }
            }
            if (verizonNativeComponentBundle == null) {
                return null;
            }
            verizonNativeComponentBundle = verizonNativeComponentBundle.f;
            jSONObject = verizonNativeComponentBundle.getComponentInfo(false);
        }
    }

    final void a(Context context, RuleComponent ruleComponent) {
        String eventId;
        if (context != null && ruleComponent != null && (eventId = ruleComponent.getEventId()) != null) {
            Map<String, Object> hashMap = new HashMap<>();
            Map<String, String> a2 = a(ruleComponent.getEventArgs());
            if (a2 != null && !a2.isEmpty()) {
                hashMap.put(MACROS_KEY, a2);
            }
            if (Logger.isLogLevelEnabled(3)) {
                f35738a.d(String.format("Firing rule event '%s' with args %s", eventId, hashMap));
            }
            a(context, eventId, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Context context, String str, Map<String, Object> map) {
        JSONObject jSONObject;
        VerizonNativeAd a2;
        if (Logger.isLogLevelEnabled(3)) {
            f35738a.d(String.format("onEvent: %s - %s, %s", this.e, str, getAdSession()));
        }
        VerizonNativeComponentBundle verizonNativeComponentBundle = this.f;
        JSONObject jSONObject2 = this.f35741d;
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
            verizonNativeComponentBundle = verizonNativeComponentBundle.f;
            jSONObject2 = verizonNativeComponentBundle.getComponentInfo(false);
        }
        if (jSONObject != null && jSONObject.optBoolean("fireOnce", false)) {
            if (!jSONObject.optBoolean("fired", false)) {
                try {
                    jSONObject.put("fired", true);
                } catch (JSONException e) {
                    f35738a.e("An error occurred adding a property for event.", e);
                }
            } else {
                return;
            }
        }
        a(this.e, str, map);
        if ("impression".equals(str) && (a2 = a()) != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35738a.d(String.format("Ad shown: %s", getAdSession().toStringLongDescription()));
            }
            Events.sendEvent(ImpressionEvent.IMPRESSION_EVENT_ID, new ImpressionEvent(getAdSession()));
            if (a2.f35721b != null) {
                try {
                    a2.f35721b.a();
                    VerizonNativeAd.f35720a.d("Fired OMSDK impression event.");
                } catch (Throwable th) {
                    VerizonNativeAd.f35720a.e("Error occurred firing OMSDK Impression event.", th);
                }
            }
        }
        JSONArray a3 = a(this.f, this.f35741d, str);
        if (a3 == null || a3.length() == 0) {
            f35738a.d(String.format("No actions defined for event: %s", str));
            return;
        }
        for (int i = 0; i < a3.length(); i++) {
            try {
                a(context, (JSONObject) a3.get(i), map);
            } catch (JSONException e2) {
                f35738a.e("An error occurred performing an action for event.", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(final Context context, final JSONObject jSONObject, final Map<String, Object> map) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$tK64cjkvcj1vGxPkTcCkgJxmG5w
            @Override // java.lang.Runnable
            public final void run() {
                VerizonNativeComponent.this.a(jSONObject, context, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(View view) {
        if (view == null) {
            f35738a.e("Cannot register tap listeners for null view");
            return;
        }
        JSONArray a2 = a(this.f, this.f35741d, TAP_EVENT);
        if (a2 == null || a2.length() == 0) {
            f35738a.d("No tap actions defined");
        } else {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.verizonnativecontroller._$$Lambda$VerizonNativeComponent$phOFi95KyG8DtIKAqv3Xl__t_Wg
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    VerizonNativeComponent.this.e(view2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(VerizonNativeComponentBundle verizonNativeComponentBundle) {
        this.f = verizonNativeComponentBundle;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void applyStyle(View view, Map<String, String> map) {
        try {
            if (view == null) {
                f35738a.w("Cannot style a null View reference.");
                return;
            }
            String str = null;
            if (map != null) {
                str = map.get("backgroundColor");
            }
            String str2 = (String) getStyleAttributeValue("backgroundColor", str);
            if (str2 != null) {
                view.setBackgroundColor(Color.parseColor(str2));
            }
        } catch (Throwable th) {
            f35738a.e("Error applying styles.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(View view) {
        if (view == null) {
            f35738a.e("Cannot create rules for a null view");
            return;
        }
        JSONObject jSONObject = this.f35741d;
        if (jSONObject == null) {
            f35738a.e("Cannot create rules with null componentInfo");
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("rules");
        if (optJSONArray != null && optJSONArray.length() != 0) {
            if (this.h == null) {
                int i = 0;
                if (Logger.isLogLevelEnabled(3)) {
                    f35738a.d(String.format("Creating rules for component: %s", this.e));
                    i = 0;
                }
                while (i < optJSONArray.length()) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        b(view, optJSONObject);
                    }
                    i++;
                }
            } else if (Logger.isLogLevelEnabled(3)) {
                f35738a.d(String.format("Rules have already been created for component: %s", this.e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean c(View view) {
        JSONObject jSONObject = this.f35741d;
        if (jSONObject != null) {
            return a(view, jSONObject.optJSONObject("impressionRule"));
        }
        f35738a.e("Cannot create impressionRule with null componentInfo");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(View view) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "rule/verizon-native-impression-v1");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("percentage", Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionViewabilityPercent", -1));
            jSONObject2.put("continuous", true);
            jSONObject2.put(VastIconXmlManager.DURATION, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "minImpressionDuration", 0));
            jSONObject.put("data", jSONObject2);
        } catch (JSONException e) {
            f35738a.e("Error creating impression rule json", e);
        }
        a(view, jSONObject);
    }

    public AdSession getAdSession() {
        return this.f35740c;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public Object getStyleAttributeValue(String str, Object obj) {
        JSONObject optJSONObject;
        Object opt;
        JSONObject jSONObject = this.f35741d;
        if (!(jSONObject == null || (optJSONObject = jSONObject.optJSONObject("style")) == null || (opt = optJSONObject.opt(str)) == null)) {
            return opt;
        }
        return obj;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public String getType() {
        return this.g;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void overrideStyle(View view, Map<String, String> map) {
        try {
            if (view == null) {
                f35738a.w("Cannot style a null View reference.");
                return;
            }
            String str = map.get("backgroundColor");
            if (str != null) {
                view.setBackgroundColor(Color.parseColor(str));
            }
        } catch (Throwable th) {
            f35738a.e("Error overriding style.", th);
        }
    }

    @Override // com.verizon.ads.Component
    public void release() {
        Set<RuleComponent> set = this.h;
        if (set != null && set.size() > 0) {
            f35738a.d("Releasing rules");
            for (RuleComponent ruleComponent : this.h) {
                ruleComponent.release();
            }
            this.h.clear();
        }
        this.f = null;
    }
}
