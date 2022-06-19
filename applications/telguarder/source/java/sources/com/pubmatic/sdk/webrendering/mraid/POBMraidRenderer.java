package com.pubmatic.sdk.webrendering.mraid;

import android.content.Context;
import android.view.View;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBDeviceInfo;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener;
import com.pubmatic.sdk.common.utility.POBUrlHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.common.viewability.POBHTMLMeasurementProvider;
import com.pubmatic.sdk.common.viewability.POBMeasurementProvider;
import com.pubmatic.sdk.webrendering.p021ui.POBAdVisibilityListener;
import com.pubmatic.sdk.webrendering.p021ui.POBHTMLRenderer;
import com.pubmatic.sdk.webrendering.p021ui.POBWebView;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer.class */
public class POBMraidRenderer implements AbstractC2050q, POBBannerRendering, POBHtmlRendererListener {

    /* renamed from: a */
    private final String f1092a;

    /* renamed from: b */
    private C2038p f1093b;

    /* renamed from: c */
    private C2034n f1094c;

    /* renamed from: d */
    private POBHTMLRenderer f1095d;

    /* renamed from: e */
    private POBAdRendererListener f1096e;

    /* renamed from: f */
    private boolean f1097f;

    /* renamed from: g */
    private View.OnLayoutChangeListener f1098g;

    /* renamed from: h */
    private POBAdVisibilityListener f1099h;

    /* renamed from: i */
    private POBHTMLMeasurementProvider f1100i;

    /* renamed from: j */
    private String f1101j;

    /* renamed from: k */
    private Context f1102k;

    /* renamed from: l */
    private POBWebView f1103l;

    /* renamed from: m */
    private POBAdDescriptor f1104m;

    /* renamed from: n */
    private POBUrlHandler f1105n;

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$a.class */
    public class C2011a implements POBWebView.OnFocusChangedListener {
        C2011a() {
            POBMraidRenderer.this = r4;
        }

        @Override // com.pubmatic.sdk.webrendering.p021ui.POBWebView.OnFocusChangedListener
        public void onFocusChanged(boolean z) {
            if (POBMraidRenderer.this.f1099h != null) {
                POBMraidRenderer.this.f1099h.onVisibilityChange(z);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b.class */
    class C2012b implements POBMeasurementProvider.POBScriptListener {

        /* renamed from: a */
        final /* synthetic */ String f1107a;

        C2012b(String str) {
            POBMraidRenderer.this = r4;
            this.f1107a = str;
        }

        @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider.POBScriptListener
        public void onMeasurementScriptReceived(String str) {
            POBMraidRenderer.this.f1095d.loadHTML("<script>" + str + "</script>" + this.f1107a, POBMraidRenderer.this.f1101j);
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c.class */
    public class RunnableC2013c implements Runnable {
        RunnableC2013c() {
            POBMraidRenderer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBMraidRenderer.this.f1097f) {
                POBMraidRenderer.this.f1094c.m533a(EnumC2020b.DEFAULT);
            }
            POBMraidRenderer.this.f1093b.m491b(POBMraidRenderer.this.f1094c, POBMraidRenderer.this.f1097f);
            POBMraidRenderer.this.f1097f = false;
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$d.class */
    public class View$OnLayoutChangeListenerC2014d implements View.OnLayoutChangeListener {
        View$OnLayoutChangeListenerC2014d() {
            POBMraidRenderer.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            POBMraidRenderer.this.m576c();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e.class */
    public class C2015e implements POBUrlHandler.UrlHandlerListener {
        C2015e() {
            POBMraidRenderer.this = r4;
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onErrorOpenUrl(String str) {
            PMLog.warn("PMMraidRenderer", "Error opening url %s", str);
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onInternalBrowserClose(String str) {
            POBMraidRenderer.this.onAdInteractionStopped();
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onInternalBrowserOpen(String str) {
            POBMraidRenderer.this.onAdInteractionStarted();
        }

        @Override // com.pubmatic.sdk.common.utility.POBUrlHandler.UrlHandlerListener
        public void onLeaveApp(String str) {
            POBMraidRenderer.this.onLeavingApplication();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBMraidRenderer$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f.class */
    public class RunnableC2016f implements Runnable {
        RunnableC2016f() {
            POBMraidRenderer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBMraidRenderer.this.f1100i != null) {
                POBMraidRenderer.this.f1100i.signalAdEvent(POBHTMLMeasurementProvider.POBHTMLAdEventType.IMPRESSION);
            }
        }
    }

    protected POBMraidRenderer(Context context, String str, POBWebView pOBWebView, int i) {
        this.f1102k = context;
        this.f1092a = str;
        this.f1103l = pOBWebView;
        pOBWebView.getSettings().setJavaScriptEnabled(true);
        pOBWebView.getSettings().setCacheMode(2);
        pOBWebView.setScrollBarStyle(0);
        POBHTMLRenderer pOBHTMLRenderer = new POBHTMLRenderer(pOBWebView, new C2051r());
        this.f1095d = pOBHTMLRenderer;
        pOBHTMLRenderer.setRendererViewListener(this);
        C2034n c2034n = new C2034n(pOBWebView);
        this.f1094c = c2034n;
        C2038p c2038p = new C2038p(this.f1102k, c2034n, str, i);
        this.f1093b = c2038p;
        c2038p.m501a(this);
        this.f1093b.m506a(this.f1094c, false);
        this.f1093b.m507a(pOBWebView);
        m579b();
        m581a(this.f1093b);
    }

    /* renamed from: a */
    private void m585a() {
        if (this.f1098g != null) {
            PMLog.debug("PMMraidRenderer", "layoutChangeListener null", new Object[0]);
            return;
        }
        View$OnLayoutChangeListenerC2014d view$OnLayoutChangeListenerC2014d = new View$OnLayoutChangeListenerC2014d();
        this.f1098g = view$OnLayoutChangeListenerC2014d;
        this.f1103l.addOnLayoutChangeListener(view$OnLayoutChangeListenerC2014d);
    }

    /* renamed from: a */
    private void m584a(Context context) {
        this.f1105n = new POBUrlHandler(context, new C2015e());
    }

    /* renamed from: a */
    private void m581a(POBAdVisibilityListener pOBAdVisibilityListener) {
        this.f1099h = pOBAdVisibilityListener;
    }

    /* renamed from: a */
    private void m580a(String str) {
        m577b(str);
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onRenderAdClick();
        }
    }

    /* renamed from: b */
    private void m579b() {
        this.f1103l.setOnfocusChangedListener(new C2011a());
    }

    /* renamed from: b */
    private void m577b(String str) {
        if (this.f1105n == null || POBUtils.isNullOrEmpty(str)) {
            PMLog.warn("PMMraidRenderer", "Click url is missing.", new Object[0]);
        } else {
            this.f1105n.open(str);
        }
    }

    /* renamed from: c */
    public void m576c() {
        this.f1103l.post(new RunnableC2013c());
    }

    public static POBMraidRenderer createInstance(Context context, String str, int i) {
        POBWebView createInstance = POBWebView.createInstance(context);
        if (createInstance != null) {
            return new POBMraidRenderer(context, str, createInstance, i);
        }
        return null;
    }

    /* renamed from: d */
    private void m574d() {
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider = this.f1100i;
        if (pOBHTMLMeasurementProvider != null) {
            pOBHTMLMeasurementProvider.startAdSession(this.f1103l);
            this.f1100i.signalAdEvent(POBHTMLMeasurementProvider.POBHTMLAdEventType.LOADED);
            if (!this.f1092a.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
                return;
            }
            signalImpressionEvent();
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void destroy() {
        this.f1095d.destroy();
        this.f1093b.m472i();
        this.f1103l.removeOnLayoutChangeListener(this.f1098g);
        this.f1103l.setOnfocusChangedListener(null);
        this.f1098g = null;
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider = this.f1100i;
        if (pOBHTMLMeasurementProvider != null) {
            pOBHTMLMeasurementProvider.finishAdSession();
            this.f1100i = null;
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void invalidateExpiration() {
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public boolean isUserInteracted(boolean z) {
        boolean isUserInteracted = this.f1095d.isUserInteracted();
        if (z) {
            this.f1095d.setUserInteracted(false);
        }
        return isUserInteracted;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onAdInteractionStarted() {
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdInteractionStarted();
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onAdInteractionStopped() {
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdInteractionStopped();
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onAdUnload() {
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdUnload();
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onAdViewChanged(View view) {
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider = this.f1100i;
        if (pOBHTMLMeasurementProvider != null) {
            pOBHTMLMeasurementProvider.setTrackView(view);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onLeavingApplication() {
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onLeavingApplication();
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onMRAIDAdClick() {
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onRenderAdClick();
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onObstructionAdded(View view) {
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider = this.f1100i;
        if (pOBHTMLMeasurementProvider != null) {
            pOBHTMLMeasurementProvider.addFriendlyObstructions(view, POBMeasurementProvider.POBFriendlyObstructionPurpose.CLOSE_AD);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onObstructionRemoved(View view) {
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider = this.f1100i;
        if (pOBHTMLMeasurementProvider != null) {
            pOBHTMLMeasurementProvider.removeFriendlyObstructions(view);
        }
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2050q
    public void onOpen(String str) {
        m580a(str);
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewClicked(String str) {
        m580a(str);
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewRendered(View view) {
        if (this.f1092a.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
            this.f1093b.mo513a();
        }
        this.f1094c.m515c();
        this.f1097f = true;
        if (this.f1092a.equals(POBCommonConstants.BANNER_PLACEMENT_TYPE)) {
            m576c();
        }
        m585a();
        m574d();
        if (this.f1096e != null) {
            m584a(this.f1102k);
            this.f1096e.onAdRender(view, this.f1104m);
            int i = 0;
            POBAdDescriptor pOBAdDescriptor = this.f1104m;
            if (pOBAdDescriptor != null) {
                i = pOBAdDescriptor.getRefreshInterval();
            }
            this.f1096e.onAdReadyToRefresh(i);
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewRenderingFailed(POBError pOBError) {
        POBAdRendererListener pOBAdRendererListener = this.f1096e;
        if (pOBAdRendererListener != null) {
            pOBAdRendererListener.onAdRenderingFailed(pOBError);
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void prepareToDetach() {
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void renderAd(POBAdDescriptor pOBAdDescriptor) {
        this.f1104m = pOBAdDescriptor;
        Context applicationContext = this.f1102k.getApplicationContext();
        POBDeviceInfo deviceInfo = POBInstanceProvider.getDeviceInfo(applicationContext);
        String str = C2033m.m544a(POBInstanceProvider.getAppInfo(applicationContext).getPackageName(), deviceInfo.getAdvertisingID(), deviceInfo.getLmtEnabled(), POBInstanceProvider.getSdkConfig().isCoppa()) + pOBAdDescriptor.getRenderableContent();
        POBHTMLMeasurementProvider pOBHTMLMeasurementProvider = this.f1100i;
        if (pOBHTMLMeasurementProvider != null) {
            pOBHTMLMeasurementProvider.omidJsServiceScript(this.f1102k.getApplicationContext(), new C2012b(str));
        } else {
            this.f1095d.loadHTML(str, this.f1101j);
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBBannerRendering
    public void setAdRendererListener(POBAdRendererListener pOBAdRendererListener) {
        this.f1096e = pOBAdRendererListener;
    }

    public void setBaseURL(String str) {
        this.f1101j = str;
    }

    public void setHTMLMeasurementListener(POBHTMLMeasurementProvider pOBHTMLMeasurementProvider) {
        this.f1100i = pOBHTMLMeasurementProvider;
    }

    public void setRenderingTimeout(int i) {
        this.f1095d.setRenderingTimeout(i);
    }

    public void signalImpressionEvent() {
        if (this.f1100i != null) {
            this.f1103l.postDelayed(new RunnableC2016f(), 1000L);
        }
    }
}
