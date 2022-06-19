package com.pubmatic.sdk.webrendering.mraid;

import android.webkit.JavascriptInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBLocation;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.webrendering.p021ui.POBWebView;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.n */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/n.class */
public class C2034n {

    /* renamed from: a */
    protected final POBWebView f1145a;

    /* renamed from: e */
    private AbstractC2037o f1149e;

    /* renamed from: d */
    private EnumC2020b f1148d = EnumC2020b.LOADING;

    /* renamed from: c */
    private final Map<EnumC2036b, String> f1147c = new HashMap(5);

    /* renamed from: b */
    private final Map<String, AbstractC2027g> f1146b = new HashMap(4);

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.n$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/n$a.class */
    class RunnableC2035a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f1150a;

        RunnableC2035a(String str) {
            C2034n.this = r4;
            this.f1150a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2034n.this.m538a();
            PMLog.debug("PMMraidBridge", "Received MRAID event : %s", this.f1150a);
            try {
                C2034n.this.m523a(new JSONObject(this.f1150a));
            } catch (JSONException e) {
                PMLog.error("PMMraidBridge", "Failed to parse MRAID event. Error : %s", e.getLocalizedMessage());
                C2034n.this.m524a("Not supported", this.f1150a);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.n$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/n$b.class */
    public enum EnumC2036b {
        CURRENT_POSITION,
        DEFAULT_POSITION,
        SCREEN_SIZE,
        MAX_SIZE,
        STATE,
        VIEWABLE
    }

    public C2034n(POBWebView pOBWebView) {
        this.f1145a = pOBWebView;
        pOBWebView.addJavascriptInterface(this, "nativeBridge");
    }

    /* renamed from: a */
    public void m538a() {
        m525a("mraidService.nativeCallComplete();");
    }

    /* renamed from: a */
    private void m525a(String str) {
        PMLog.debug("PMMraidBridge", "Injecting JS property : %s", str);
        POBWebView pOBWebView = this.f1145a;
        pOBWebView.loadUrl("javascript:" + str);
    }

    /* renamed from: a */
    public void m523a(JSONObject jSONObject) {
        POBError pOBError;
        String optString = jSONObject.optString("name");
        AbstractC2027g abstractC2027g = this.f1146b.get(optString);
        if (abstractC2027g == null) {
            pOBError = new POBError(1009, "Not supported");
        } else if (this.f1149e == null || abstractC2027g.mo440b()) {
            AbstractC2037o abstractC2037o = this.f1149e;
            pOBError = (abstractC2037o == null || !abstractC2037o.isUserInteracted(true)) ? new POBError(1009, "Illegal state of command execution without user interaction") : abstractC2027g.mo441a(jSONObject, this.f1149e, true);
        } else {
            pOBError = abstractC2027g.mo441a(jSONObject, this.f1149e, this.f1149e.isUserInteracted(false));
        }
        if (pOBError != null) {
            m524a(pOBError.getErrorMessage(), optString);
        }
    }

    /* renamed from: a */
    private boolean m531a(EnumC2036b enumC2036b, String str) {
        String str2 = this.f1147c.get(enumC2036b);
        if (str2 == null || !str2.equals(str)) {
            this.f1147c.put(enumC2036b, str);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public void m535a(POBLocation pOBLocation) {
        String str;
        if (pOBLocation != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("lat", pOBLocation.getLatitude());
                jSONObject.put("lon", pOBLocation.getLongitude());
                jSONObject.put("type", String.valueOf(pOBLocation.getSource().getValue()));
                str = String.format(Locale.getDefault(), ".setLocation(%s);", jSONObject);
            } catch (Exception e) {
                PMLog.error("PMMraidBridge", "Not able to inject setLocation property!", new Object[0]);
                str = null;
            }
        } else {
            str = String.format(Locale.getDefault(), ".setLocation(%s);", "{}");
        }
        m525a("mraidService" + str);
    }

    /* renamed from: a */
    public void m534a(EnumC2019a enumC2019a) {
        String format = String.format(Locale.getDefault(), ".fireEvent('%s');", enumC2019a.m562a());
        m525a("mraidService" + format);
    }

    /* renamed from: a */
    public void m533a(EnumC2020b enumC2020b) {
        this.f1148d = enumC2020b;
    }

    /* renamed from: a */
    public void m532a(AbstractC2027g abstractC2027g) {
        this.f1146b.put(abstractC2027g.mo442a(), abstractC2027g);
    }

    /* renamed from: a */
    public void m528a(AbstractC2037o abstractC2037o) {
        this.f1149e = abstractC2037o;
    }

    /* renamed from: a */
    public void m527a(Double d) {
        String format = d != null ? String.format(Locale.getDefault(), ".fireEvent('audioVolumeChange', %.2f);", d) : String.format(Locale.getDefault(), ".fireEvent('audioVolumeChange', %s);", "null");
        m525a("mraidService" + format);
    }

    /* renamed from: a */
    public void m526a(Float f, JSONObject jSONObject) {
        if (f == null || jSONObject == null) {
            return;
        }
        String format = String.format(Locale.getDefault(), ".fireEvent('exposureChange', %.1f, %s, null);", f, jSONObject.toString());
        m525a("mraidService" + format);
    }

    /* renamed from: a */
    public void m524a(String str, String str2) {
        PMLog.debug("PMMraidBridge", "JS called MRAID event without user interaction. Event : %s", str2);
        String format = String.format(Locale.getDefault(), ".fireErrorEvent('%s', '%s');", str, str2);
        m525a("mraidService" + format);
    }

    /* renamed from: a */
    public void m522a(boolean z) {
        if (m531a(EnumC2036b.VIEWABLE, String.valueOf(z))) {
            String format = String.format(Locale.getDefault(), ".setViewable(%b);", Boolean.valueOf(z));
            m525a("mraidService" + format);
        }
    }

    /* renamed from: a */
    public void m521a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sms", z);
            jSONObject.put("tel", z2);
            jSONObject.put("calendar", z3);
            jSONObject.put("storePicture", z4);
            jSONObject.put("inlineVideo", z5);
            jSONObject.put(FirebaseAnalytics.Param.LOCATION, z6);
            jSONObject.put("vpaid", z7);
            String format = String.format(Locale.getDefault(), ".setSupports(%s);", jSONObject);
            m525a("mraidService" + format);
        } catch (JSONException e) {
            PMLog.error("PMMraidBridge", "Not able to inject setSupports property!", new Object[0]);
        }
    }

    /* renamed from: a */
    public boolean m537a(int i, int i2) {
        JSONObject m550a = C2033m.m550a(i, i2);
        if (m531a(EnumC2036b.MAX_SIZE, m550a.toString())) {
            String format = String.format(Locale.getDefault(), ".setMaxSize(%s);", m550a);
            m525a("mraidService" + format);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public boolean m536a(int i, int i2, int i3, int i4) {
        JSONObject m549a = C2033m.m549a(i, i2, i3, i4);
        if (m531a(EnumC2036b.CURRENT_POSITION, m549a.toString())) {
            String format = String.format(Locale.getDefault(), ".setCurrentPosition(%s);", m549a);
            m525a("mraidService" + format);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public EnumC2020b m520b() {
        return this.f1148d;
    }

    /* renamed from: b */
    public void m519b(int i, int i2) {
        JSONObject m550a = C2033m.m550a(i, i2);
        if (m531a(EnumC2036b.SCREEN_SIZE, m550a.toString())) {
            String format = String.format(Locale.getDefault(), ".setScreenSize(%s);", m550a);
            m525a("mraidService" + format);
        }
    }

    /* renamed from: b */
    public void m518b(int i, int i2, int i3, int i4) {
        JSONObject m549a = C2033m.m549a(i, i2, i3, i4);
        if (m531a(EnumC2036b.DEFAULT_POSITION, m549a.toString())) {
            String format = String.format(Locale.getDefault(), ".setDefaultPosition(%s);", m549a);
            m525a("mraidService" + format);
        }
    }

    /* renamed from: b */
    public void m517b(EnumC2020b enumC2020b) {
        if (m531a(EnumC2036b.STATE, enumC2020b.m561a())) {
            String format = String.format(Locale.getDefault(), ".setState('%s');", enumC2020b.m561a());
            m525a("mraidService" + format);
        }
    }

    /* renamed from: b */
    public void m516b(String str) {
        String format = String.format(Locale.getDefault(), ".setPlacementType('%s');", str);
        m525a("mraidService" + format);
    }

    /* renamed from: c */
    public void m515c() {
        this.f1147c.clear();
    }

    /* renamed from: c */
    public void m514c(int i, int i2) {
        String format = String.format(Locale.getDefault(), ".fireEvent('%s', %d, %d);", EnumC2019a.SIZE_CHANGE.m562a(), Integer.valueOf(i), Integer.valueOf(i2));
        m525a("mraidService" + format);
    }

    @JavascriptInterface
    public void error(String str) {
        PMLog.error("PMMraidBridge", "Error message from JS :%s", str);
    }

    @JavascriptInterface
    public void log(String str) {
        PMLog.debug("PMMraidBridge", "Received MRAID log :%s", str);
    }

    @JavascriptInterface
    public void nativeCall(String str) {
        POBUtils.runOnMainThread(new RunnableC2035a(str));
    }
}
