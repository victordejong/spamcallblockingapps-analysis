package com.moat.analytics.mobile.mpub;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.mpub.AbstractC8661v;
import com.moat.analytics.mobile.mpub.C8677x;
import com.moat.analytics.mobile.mpub.p522a.p524b.C8615a;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.mpub.n */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/n.class */
public class C8644n extends MoatFactory {
    public C8644n() {
        if (!m4876a()) {
            C8652p.m4845a("[ERROR] ", 3, "Factory", this, "Failed to initialize MoatFactory, SDK was not started");
            throw new C8643m("Failed to initialize MoatFactory");
        }
    }

    /* renamed from: a */
    private NativeDisplayTracker m4875a(View view, final Map<String, String> map) {
        final WeakReference weakReference = new WeakReference(view);
        return (NativeDisplayTracker) C8677x.m4793a(new C8677x.AbstractC8679a<NativeDisplayTracker>() { // from class: com.moat.analytics.mobile.mpub.n.3
            @Override // com.moat.analytics.mobile.mpub.C8677x.AbstractC8679a
            /* renamed from: a */
            public C8615a<NativeDisplayTracker> mo4784a() {
                View view2 = (View) weakReference.get();
                C8652p.m4845a("[INFO] ", 3, "Factory", this, "Attempting to create NativeDisplayTracker for " + C8652p.m4847a(view2));
                return C8615a.m4986a(new C8659t(view2, map));
            }
        }, NativeDisplayTracker.class);
    }

    /* renamed from: a */
    private NativeVideoTracker m4871a(final String str) {
        return (NativeVideoTracker) C8677x.m4793a(new C8677x.AbstractC8679a<NativeVideoTracker>() { // from class: com.moat.analytics.mobile.mpub.n.4
            @Override // com.moat.analytics.mobile.mpub.C8677x.AbstractC8679a
            /* renamed from: a */
            public C8615a<NativeVideoTracker> mo4784a() {
                C8652p.m4845a("[INFO] ", 3, "Factory", this, "Attempting to create NativeVideoTracker");
                return C8615a.m4986a(new C8660u(str));
            }
        }, NativeVideoTracker.class);
    }

    /* renamed from: a */
    private WebAdTracker m4874a(ViewGroup viewGroup) {
        final WeakReference weakReference = new WeakReference(viewGroup);
        return (WebAdTracker) C8677x.m4793a(new C8677x.AbstractC8679a<WebAdTracker>() { // from class: com.moat.analytics.mobile.mpub.n.2
            @Override // com.moat.analytics.mobile.mpub.C8677x.AbstractC8679a
            /* renamed from: a */
            public C8615a<WebAdTracker> mo4784a() {
                ViewGroup viewGroup2 = (ViewGroup) weakReference.get();
                C8652p.m4845a("[INFO] ", 3, "Factory", this, "Attempting to create WebAdTracker for adContainer " + C8652p.m4847a(viewGroup2));
                return C8615a.m4986a(new C8616aa(viewGroup2));
            }
        }, WebAdTracker.class);
    }

    /* renamed from: a */
    private WebAdTracker m4873a(WebView webView) {
        final WeakReference weakReference = new WeakReference(webView);
        return (WebAdTracker) C8677x.m4793a(new C8677x.AbstractC8679a<WebAdTracker>() { // from class: com.moat.analytics.mobile.mpub.n.1
            @Override // com.moat.analytics.mobile.mpub.C8677x.AbstractC8679a
            /* renamed from: a */
            public C8615a<WebAdTracker> mo4784a() {
                WebView webView2 = (WebView) weakReference.get();
                C8652p.m4845a("[INFO] ", 3, "Factory", this, "Attempting to create WebAdTracker for " + C8652p.m4847a(webView2));
                return C8615a.m4986a(new C8616aa(webView2));
            }
        }, WebAdTracker.class);
    }

    /* renamed from: a */
    private <T> T m4872a(MoatPlugin<T> moatPlugin) {
        return moatPlugin.mo5002a();
    }

    /* renamed from: a */
    private boolean m4876a() {
        return ((C8641k) MoatAnalytics.getInstance()).m4893a();
    }

    @Override // com.moat.analytics.mobile.mpub.MoatFactory
    public <T> T createCustomTracker(MoatPlugin<T> moatPlugin) {
        try {
            return (T) m4872a(moatPlugin);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return moatPlugin.mo5000b();
        }
    }

    @Override // com.moat.analytics.mobile.mpub.MoatFactory
    public NativeDisplayTracker createNativeDisplayTracker(View view, Map<String, String> map) {
        try {
            return m4875a(view, map);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return new AbstractC8661v.C8664c();
        }
    }

    @Override // com.moat.analytics.mobile.mpub.MoatFactory
    public NativeVideoTracker createNativeVideoTracker(String str) {
        try {
            return m4871a(str);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return new AbstractC8661v.C8665d();
        }
    }

    @Override // com.moat.analytics.mobile.mpub.MoatFactory
    public WebAdTracker createWebAdTracker(ViewGroup viewGroup) {
        try {
            return m4874a(viewGroup);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return new AbstractC8661v.C8666e();
        }
    }

    @Override // com.moat.analytics.mobile.mpub.MoatFactory
    public WebAdTracker createWebAdTracker(WebView webView) {
        try {
            return m4873a(webView);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return new AbstractC8661v.C8666e();
        }
    }
}
