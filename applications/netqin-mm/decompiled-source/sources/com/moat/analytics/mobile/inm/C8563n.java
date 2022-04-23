package com.moat.analytics.mobile.inm;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.inm.AbstractC8580v;
import com.moat.analytics.mobile.inm.C8596x;
import com.moat.analytics.mobile.inm.p519a.p521b.C8534a;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.inm.n */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/n.class */
public class C8563n extends MoatFactory {
    public C8563n() {
        if (!m5132a()) {
            C8571p.m5101a("[ERROR] ", 3, "Factory", this, "Failed to initialize MoatFactory, SDK was not started");
            throw new C8562m("Failed to initialize MoatFactory");
        }
    }

    /* renamed from: a */
    private NativeDisplayTracker m5131a(View view, final Map<String, String> map) {
        final WeakReference weakReference = new WeakReference(view);
        return (NativeDisplayTracker) C8596x.m5049a(new C8596x.AbstractC8598a<NativeDisplayTracker>() { // from class: com.moat.analytics.mobile.inm.n.3
            @Override // com.moat.analytics.mobile.inm.C8596x.AbstractC8598a
            /* renamed from: a */
            public C8534a<NativeDisplayTracker> mo5040a() {
                View view2 = (View) weakReference.get();
                C8571p.m5101a("[INFO] ", 3, "Factory", this, "Attempting to create NativeDisplayTracker for " + C8571p.m5103a(view2));
                return C8534a.m5242a(new C8578t(view2, map));
            }
        }, NativeDisplayTracker.class);
    }

    /* renamed from: a */
    private NativeVideoTracker m5127a(final String str) {
        return (NativeVideoTracker) C8596x.m5049a(new C8596x.AbstractC8598a<NativeVideoTracker>() { // from class: com.moat.analytics.mobile.inm.n.4
            @Override // com.moat.analytics.mobile.inm.C8596x.AbstractC8598a
            /* renamed from: a */
            public C8534a<NativeVideoTracker> mo5040a() {
                C8571p.m5101a("[INFO] ", 3, "Factory", this, "Attempting to create NativeVideoTracker");
                return C8534a.m5242a(new C8579u(str));
            }
        }, NativeVideoTracker.class);
    }

    /* renamed from: a */
    private WebAdTracker m5130a(ViewGroup viewGroup) {
        final WeakReference weakReference = new WeakReference(viewGroup);
        return (WebAdTracker) C8596x.m5049a(new C8596x.AbstractC8598a<WebAdTracker>() { // from class: com.moat.analytics.mobile.inm.n.2
            @Override // com.moat.analytics.mobile.inm.C8596x.AbstractC8598a
            /* renamed from: a */
            public C8534a<WebAdTracker> mo5040a() {
                ViewGroup viewGroup2 = (ViewGroup) weakReference.get();
                C8571p.m5101a("[INFO] ", 3, "Factory", this, "Attempting to create WebAdTracker for adContainer " + C8571p.m5103a(viewGroup2));
                return C8534a.m5242a(new C8535aa(viewGroup2));
            }
        }, WebAdTracker.class);
    }

    /* renamed from: a */
    private WebAdTracker m5129a(WebView webView) {
        final WeakReference weakReference = new WeakReference(webView);
        return (WebAdTracker) C8596x.m5049a(new C8596x.AbstractC8598a<WebAdTracker>() { // from class: com.moat.analytics.mobile.inm.n.1
            @Override // com.moat.analytics.mobile.inm.C8596x.AbstractC8598a
            /* renamed from: a */
            public C8534a<WebAdTracker> mo5040a() {
                WebView webView2 = (WebView) weakReference.get();
                C8571p.m5101a("[INFO] ", 3, "Factory", this, "Attempting to create WebAdTracker for " + C8571p.m5103a(webView2));
                return C8534a.m5242a(new C8535aa(webView2));
            }
        }, WebAdTracker.class);
    }

    /* renamed from: a */
    private <T> T m5128a(MoatPlugin<T> moatPlugin) {
        return moatPlugin.mo5258a();
    }

    /* renamed from: a */
    private boolean m5132a() {
        return ((C8560k) MoatAnalytics.getInstance()).m5149a();
    }

    @Override // com.moat.analytics.mobile.inm.MoatFactory
    public <T> T createCustomTracker(MoatPlugin<T> moatPlugin) {
        try {
            return (T) m5128a(moatPlugin);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return moatPlugin.mo5256b();
        }
    }

    @Override // com.moat.analytics.mobile.inm.MoatFactory
    public NativeDisplayTracker createNativeDisplayTracker(View view, Map<String, String> map) {
        try {
            return m5131a(view, map);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return new AbstractC8580v.C8583c();
        }
    }

    @Override // com.moat.analytics.mobile.inm.MoatFactory
    public NativeVideoTracker createNativeVideoTracker(String str) {
        try {
            return m5127a(str);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return new AbstractC8580v.C8584d();
        }
    }

    @Override // com.moat.analytics.mobile.inm.MoatFactory
    public WebAdTracker createWebAdTracker(ViewGroup viewGroup) {
        try {
            return m5130a(viewGroup);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return new AbstractC8580v.C8585e();
        }
    }

    @Override // com.moat.analytics.mobile.inm.MoatFactory
    public WebAdTracker createWebAdTracker(WebView webView) {
        try {
            return m5129a(webView);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return new AbstractC8580v.C8585e();
        }
    }
}
