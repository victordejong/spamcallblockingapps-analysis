package com.taiwanmobile.p055pt.adp.view;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.criteo.Criteo;
import com.criteo.view.CriteoBannerAd;
import com.mopub.nativeads.Utils;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.inread.TWMInReadAdRect;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.C4142e;
import com.taiwanmobile.p055pt.adp.view.p056a.C4147h;
import com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b;
import com.taiwanmobile.p055pt.adp.view.webview.IRBehavior;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientMraid;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidProcessor;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMAdView */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdView.class */
public class TWMAdView extends RelativeLayout implements TWMAd {

    /* renamed from: a */
    public static final String f9654a = TWMAdView.class.getSimpleName();
    public WeakReference<Activity> activityRef;
    public TWMAdViewListener adListener;
    public TWMAdRequest adRequest;
    public TWMAdSize adSize;

    /* renamed from: b */
    public String f9655b;

    /* renamed from: c */
    public CriteoBannerAd f9656c;
    public WeakReference<Context> contextRef;

    /* renamed from: d */
    public RunnableC4079a f9657d;

    /* renamed from: e */
    public RunnableC4081b f9658e;

    /* renamed from: f */
    public C4147h f9659f;

    /* renamed from: g */
    public C4147h.C4150b f9660g;

    /* renamed from: h */
    public final AbstractC4126b f9661h;

    /* renamed from: i */
    public C4082c f9662i;
    public boolean isAdLoading;

    /* renamed from: j */
    public int f9663j;
    public JSWebView jsWebView;

    /* renamed from: k */
    public BroadcastReceiver f9664k;
    public MraidProcessor mProcessor;
    public C4124a omManager;
    public String txId;

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdView$2 */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdView$2.class */
    public static /* synthetic */ class C40702 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9667a = new int[C4147h.AbstractC4151c.EnumC4152a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f9667a[C4147h.AbstractC4151c.EnumC4152a.STATE_TP_READY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9667a[C4147h.AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9667a[C4147h.AbstractC4151c.EnumC4152a.STATE_BLACK_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdView$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdView$a.class */
    public final class RunnableC4079a implements Runnable {
        public RunnableC4079a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C10831c.m10518c(TWMAdView.f9654a, "FireAdRequestTask >>>>>>>>>>>>>>");
            String str = TWMAdView.f9654a;
            C10831c.m10518c(str, "TWMAdActivity.isShowing() ? " + TWMAdActivity.isShowing());
            boolean z = TWMAdView.this.f9659f == null || TWMAdView.this.f9659f.m29532b() == null;
            WeakReference<Context> weakReference = TWMAdView.this.contextRef;
            if (weakReference != null && weakReference.get() != null && !TWMAdActivity.isShowing()) {
                Context context = TWMAdView.this.contextRef.get();
                String str2 = TWMAdView.this.f9655b;
                TWMAdView tWMAdView = TWMAdView.this;
                final C4127a.C4131c cVar = new C4127a.C4131c(context, str2, tWMAdView.adRequest, tWMAdView.adSize.equals(TWMAdSize.SMART_BANNER) ? "SB" : "B");
                cVar.m29626a(TWMAdView.this.adSize);
                cVar.m29625a(TWMAdView.this.f9662i);
                cVar.m29623a(false);
                cVar.m29621b(z);
                TWMAdView tWMAdView2 = TWMAdView.this;
                C4124a aVar = tWMAdView2.omManager;
                if (aVar != null) {
                    C4127a.m29644a(aVar, new C4124a.AbstractC4125a() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.a.1
                        @Override // com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a.AbstractC4125a
                        /* renamed from: a */
                        public void mo29430a() {
                            TWMAdView.this.m29823b();
                            TWMAdView.this.omManager = null;
                            C4127a.m29643a(cVar);
                        }
                    });
                    return;
                }
                tWMAdView2.m29823b();
                C4127a.m29643a(cVar);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdView$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdView$b.class */
    public final class RunnableC4081b implements Runnable {

        /* renamed from: b */
        public int f9687b;

        /* renamed from: c */
        public String f9688c;

        /* renamed from: d */
        public String f9689d;

        /* renamed from: e */
        public String f9690e;

        /* renamed from: f */
        public String f9691f;

        /* renamed from: g */
        public String f9692g;

        /* renamed from: h */
        public boolean f9693h = true;

        public RunnableC4081b(int i, String str, String str2, String str3) {
            this.f9687b = i;
            this.f9688c = str;
            this.f9689d = str2;
            this.f9690e = str3;
        }

        public RunnableC4081b(String str, String str2, String str3, String str4) {
            this.f9692g = str2;
            this.f9690e = str4;
            this.f9689d = str3;
            this.f9691f = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9693h) {
                TWMAdView.this.m29843a(this.f9687b, this.f9688c, this.f9689d, this.f9690e);
            } else {
                TWMAdView.this.m29825a(this.f9691f, this.f9692g, this.f9689d, this.f9690e);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdView$c */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdView$c.class */
    public class C4082c extends AbstractC4140c {
        public C4082c(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            int c;
            super.onResponse(bVar, rVar);
            if (m29565n()) {
                int j = m29569j();
                String str = TWMAdView.f9654a;
                C10831c.m10518c(str, "adType : " + j);
                TWMAdView tWMAdView = TWMAdView.this;
                tWMAdView.isAdLoading = true;
                if (tWMAdView.f9660g == null && (c = m29576c()) != TWMAdView.this.getUsageTime() && TWMAdView.this.getUsageTime() < c) {
                    TWMAdView.this.m29814d();
                    int d = m29575d();
                    if (d != 0) {
                        TWMAdView tWMAdView2 = TWMAdView.this;
                        tWMAdView2.f9657d = new RunnableC4079a();
                        TWMAdView tWMAdView3 = TWMAdView.this;
                        tWMAdView3.postDelayed(tWMAdView3.f9657d, d);
                    }
                }
                TWMAdView.this.txId = m29566m();
                if (TWMAdView.this.txId != null) {
                    C4117a b = C4117a.m29671b();
                    b.getClass();
                    C4117a.C4118a aVar = new C4117a.C4118a(TWMAdView.this.f9655b);
                    aVar.m29658a("_context", this.f9873b.get());
                    aVar.m29658a("adListener", TWMAdView.this.adListener);
                    aVar.m29658a("adRequest", TWMAdView.this.adRequest);
                    aVar.m29658a("targetUrl", m29568k());
                    aVar.m29658a("mediaUrl", m29573f());
                    aVar.m29658a(AdFetch.AD_ADTYPE_KEY, Integer.valueOf(j));
                    aVar.m29658a(IapPlanRealmObject.PLAN_ID, m29567l());
                    aVar.m29658a("cvt", m29570i());
                    aVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMAdView.this);
                    aVar.m29658a("clickUrl", m29574e());
                    aVar.m29658a("videoReportUrl", m29554y());
                    aVar.m29658a("isVideoAd", Boolean.valueOf(m29587A()));
                    aVar.m29658a("isDcmAdServing", Boolean.valueOf(m29585C()));
                    aVar.m29658a("adSize", TWMAdView.this.adSize);
                    aVar.m29658a("userAgent", C10832d.m10513a(this.f9873b.get()));
                    aVar.m29658a("isOpenChrome", Boolean.valueOf(m29563p()));
                    aVar.m29658a("mraidUrl", m29555x());
                    if (j == 8) {
                        aVar.m29658a("subMediaUrl", m29572g());
                    }
                    boolean B = m29586B();
                    aVar.m29658a("isOmProviderExisted", Boolean.valueOf(B));
                    if (B) {
                        aVar.m29658a("OMSDK", m29584D());
                        aVar.m29658a("PartnerName", m29583E());
                        aVar.m29658a("PartnerVersion", m29582F());
                        aVar.m29658a("PartnerCustomData", m29581G());
                    }
                    C4117a.C4118a aVar2 = (C4117a.C4118a) C4117a.m29671b().m29673a(TWMAdView.this.txId);
                    if (aVar2 != null) {
                        aVar.m29658a("_deviceId", aVar2.m29659a("_deviceId"));
                        C4117a.m29671b().m29672a(TWMAdView.this.txId, aVar);
                    }
                }
                TWMAdView.this.popAdReceive("normal banner");
                TWMAdView tWMAdView4 = TWMAdView.this;
                tWMAdView4.f9658e = new RunnableC4081b(j, m29573f(), m29568k(), m29566m());
                TWMAdView tWMAdView5 = TWMAdView.this;
                tWMAdView5.post(tWMAdView5.f9658e);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdView$d */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdView$d.class */
    public class C4083d extends C4142e {
        public C4083d(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.C4142e, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            C4117a.C4118a aVar;
            super.onResponse(bVar, rVar);
            if (isReady() && TWMAdView.this.txId != null) {
                if (C4117a.m29671b().m29670b(TWMAdView.this.txId)) {
                    aVar = (C4117a.C4118a) C4117a.m29671b().m29673a(TWMAdView.this.txId);
                } else {
                    C4117a b = C4117a.m29671b();
                    b.getClass();
                    aVar = new C4117a.C4118a(TWMAdView.this.f9655b);
                }
                aVar.m29658a("_context", this.contextRef.get());
                aVar.m29658a("adListener", TWMAdView.this.adListener);
                aVar.m29658a("adRequest", TWMAdView.this.adRequest);
                aVar.m29658a(AdFetch.AD_ADTYPE_KEY, 4);
                aVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMAdView.this);
                aVar.m29658a("adSize", TWMAdView.this.adSize);
                aVar.m29658a("userAgent", C10832d.m10513a(this.contextRef.get()));
                C4117a.C4118a aVar2 = (C4117a.C4118a) C4117a.m29671b().m29673a(TWMAdView.this.txId);
                if (aVar2 != null) {
                    aVar.m29658a("_deviceId", aVar2.m29659a("_deviceId"));
                    C4117a.m29671b().m29672a(TWMAdView.this.txId, aVar);
                }
                TWMAdView.this.m29824a("12", true);
                TWMAdView tWMAdView = TWMAdView.this;
                tWMAdView.f9658e = new RunnableC4081b((String) null, getHtmlContent(), (String) null, TWMAdView.this.txId);
                TWMAdView tWMAdView2 = TWMAdView.this;
                tWMAdView2.post(tWMAdView2.f9658e);
            }
        }
    }

    public TWMAdView(Activity activity, TWMAdSize tWMAdSize, String str) {
        super(activity);
        C4082c cVar = null;
        this.txId = null;
        this.adListener = null;
        this.adRequest = null;
        this.isAdLoading = false;
        this.mProcessor = null;
        this.omManager = null;
        this.jsWebView = null;
        this.f9656c = null;
        this.contextRef = null;
        this.activityRef = null;
        this.f9659f = null;
        this.f9660g = null;
        this.f9661h = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.1
            @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
            /* renamed from: a */
            public void mo29382a(String str2, TWMAdRequest.ErrorCode errorCode) {
                C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
                if (TWMAdView.this.f9660g == null) {
                    TWMAdView.this.m29840a(errorCode);
                } else if (!C4147h.EnumC4149a.TAMEDIA.m29519a().equals(TWMAdView.this.f9660g.m29515b())) {
                    TWMAdView.this.m29824a("12", false);
                } else if ("21".equals(str2)) {
                    TWMAdView.this.m29840a(errorCode);
                } else {
                    TWMAdView.this.m29808f();
                }
            }
        };
        this.f9662i = !isInEditMode() ? new C4082c(getContext(), this.f9661h) : cVar;
        this.f9663j = 1;
        this.f9664k = new BroadcastReceiver() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.10
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String str2 = TWMAdView.f9654a;
                C10831c.m10518c(str2, "onReceive(" + intent.getAction() + ") invoked!!");
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    TWMAdView tWMAdView = TWMAdView.this;
                    tWMAdView.removeCallbacks(tWMAdView.f9657d);
                    TWMAdView tWMAdView2 = TWMAdView.this;
                    tWMAdView2.removeCallbacks(tWMAdView2.f9658e);
                    context.unregisterReceiver(TWMAdView.this.f9664k);
                    C4117a.m29671b().m29672a("bcr", Boolean.FALSE);
                }
            }
        };
        this.activityRef = new WeakReference<>(activity);
        this.contextRef = new WeakReference<>(activity);
        this.adSize = tWMAdSize;
        this.f9655b = str;
        initialView(tWMAdSize);
    }

    public TWMAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C4082c cVar = null;
        this.txId = null;
        this.adListener = null;
        this.adRequest = null;
        this.isAdLoading = false;
        this.mProcessor = null;
        this.omManager = null;
        this.jsWebView = null;
        this.f9656c = null;
        this.contextRef = null;
        this.activityRef = null;
        this.f9659f = null;
        this.f9660g = null;
        this.f9661h = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.1
            @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
            /* renamed from: a */
            public void mo29382a(String str2, TWMAdRequest.ErrorCode errorCode) {
                C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
                if (TWMAdView.this.f9660g == null) {
                    TWMAdView.this.m29840a(errorCode);
                } else if (!C4147h.EnumC4149a.TAMEDIA.m29519a().equals(TWMAdView.this.f9660g.m29515b())) {
                    TWMAdView.this.m29824a("12", false);
                } else if ("21".equals(str2)) {
                    TWMAdView.this.m29840a(errorCode);
                } else {
                    TWMAdView.this.m29808f();
                }
            }
        };
        this.f9662i = !isInEditMode() ? new C4082c(getContext(), this.f9661h) : cVar;
        this.f9663j = 1;
        this.f9664k = new BroadcastReceiver() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.10
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String str2 = TWMAdView.f9654a;
                C10831c.m10518c(str2, "onReceive(" + intent.getAction() + ") invoked!!");
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    TWMAdView tWMAdView = TWMAdView.this;
                    tWMAdView.removeCallbacks(tWMAdView.f9657d);
                    TWMAdView tWMAdView2 = TWMAdView.this;
                    tWMAdView2.removeCallbacks(tWMAdView2.f9658e);
                    context2.unregisterReceiver(TWMAdView.this.f9664k);
                    C4117a.m29671b().m29672a("bcr", Boolean.FALSE);
                }
            }
        };
        m29842a(context, attributeSet);
    }

    public TWMAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C4082c cVar = null;
        this.txId = null;
        this.adListener = null;
        this.adRequest = null;
        this.isAdLoading = false;
        this.mProcessor = null;
        this.omManager = null;
        this.jsWebView = null;
        this.f9656c = null;
        this.contextRef = null;
        this.activityRef = null;
        this.f9659f = null;
        this.f9660g = null;
        this.f9661h = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.1
            @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
            /* renamed from: a */
            public void mo29382a(String str2, TWMAdRequest.ErrorCode errorCode) {
                C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
                if (TWMAdView.this.f9660g == null) {
                    TWMAdView.this.m29840a(errorCode);
                } else if (!C4147h.EnumC4149a.TAMEDIA.m29519a().equals(TWMAdView.this.f9660g.m29515b())) {
                    TWMAdView.this.m29824a("12", false);
                } else if ("21".equals(str2)) {
                    TWMAdView.this.m29840a(errorCode);
                } else {
                    TWMAdView.this.m29808f();
                }
            }
        };
        this.f9662i = !isInEditMode() ? new C4082c(getContext(), this.f9661h) : cVar;
        this.f9663j = 1;
        this.f9664k = new BroadcastReceiver() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.10
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String str2 = TWMAdView.f9654a;
                C10831c.m10518c(str2, "onReceive(" + intent.getAction() + ") invoked!!");
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    TWMAdView tWMAdView = TWMAdView.this;
                    tWMAdView.removeCallbacks(tWMAdView.f9657d);
                    TWMAdView tWMAdView2 = TWMAdView.this;
                    tWMAdView2.removeCallbacks(tWMAdView2.f9658e);
                    context2.unregisterReceiver(TWMAdView.this.f9664k);
                    C4117a.m29671b().m29672a("bcr", Boolean.FALSE);
                }
            }
        };
        m29842a(context, attributeSet);
    }

    /* renamed from: a */
    private String m29827a(String str, Context context, AttributeSet attributeSet) {
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.taiwanmobile.pt.adp.view", str);
        String str2 = attributeValue;
        if (attributeValue != null) {
            String packageName = context.getPackageName();
            String str3 = attributeValue;
            if (attributeValue.matches("^@([^:]+)\\:(.*)$")) {
                packageName = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                str3 = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
            }
            str2 = str3;
            if (str3.startsWith("@string/")) {
                String substring = str3.substring(8);
                TypedValue typedValue = new TypedValue();
                str2 = str3;
                if (!isInEditMode()) {
                    try {
                        Resources resources = getResources();
                        resources.getValue(packageName + ":string/" + substring, typedValue, true);
                    } catch (Resources.NotFoundException e) {
                        String str4 = f9654a;
                        C10831c.m10521a(str4, "Could not find resource for " + str + ": " + str3, e);
                        throw e;
                    } catch (Exception e2) {
                        String str5 = f9654a;
                        C10831c.m10520b(str5, "getStringAttributeValue Exception: " + e2.getMessage());
                    }
                    CharSequence charSequence = typedValue.string;
                    if (charSequence != null) {
                        str2 = charSequence.toString();
                    } else {
                        String str6 = f9654a;
                        C10831c.m10520b(str6, "Resource " + str + " was not a string: ");
                        throw new Resources.NotFoundException("Resource " + str + " was not a string: ");
                    }
                }
            }
        }
        return str2;
    }

    /* renamed from: a */
    private void m29844a(int i) {
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference != null && weakReference.get() != null) {
            m29806g();
            JSWebView jSWebView = this.jsWebView;
            if (jSWebView != null && jSWebView.getParent() == this) {
                removeView(this.jsWebView);
            }
            Criteo.initialize(this.contextRef.get());
            this.f9656c = new CriteoBannerAd(this.contextRef.get());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(14);
            this.f9656c.setLayoutParams(layoutParams);
            this.f9656c.OnCriteoAdInitialization(this.contextRef.get(), i, new Criteo.OnCriteoAdListener() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.9
                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdClicked(Criteo.ADType aDType) {
                    TWMAdView.this.m29819b("11");
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdClosed(Criteo.ADType aDType) {
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdDisplayNoAd(Criteo.ADType aDType) {
                    TWMAdView.this.m29824a("11", false);
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdDisplayed(Criteo.ADType aDType) {
                    if (TWMAdView.this.f9656c != null && TWMAdView.this.f9656c != null) {
                        if (TWMAdView.this.f9656c.getParent() == null) {
                            TWMAdView tWMAdView = TWMAdView.this;
                            tWMAdView.addView(tWMAdView.f9656c);
                        }
                        TWMAdView.this.m29824a("11", true);
                    }
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdFetched(Criteo.ADType aDType) {
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdRequest(Criteo.ADType aDType) {
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdRequestFailed(Criteo.ADType aDType) {
                }

                @Override // com.criteo.Criteo.OnCriteoAdListener
                public void onAdRequestFiltered(Criteo.ADType aDType) {
                }
            });
            this.f9656c.isTestMode(false);
            this.f9656c.requestAd();
            this.f9656c.displayAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29843a(int i, String str, String str2, final String str3) {
        if (this.jsWebView != null) {
            if (i == 1 || i == 2 || i == 4 || i == 8) {
                if (this.jsWebView.getVisibility() != 0) {
                    this.jsWebView.setVisibility(0);
                }
                this.mProcessor = new MraidProcessor(this.jsWebView, str3);
                final C4117a.C4118a aVar = (C4117a.C4118a) C4117a.m29671b().m29673a(str3);
                if (aVar != null) {
                    aVar.m29658a("kmp", this.mProcessor);
                }
                this.jsWebView.setIRBehavior(new IRBehavior() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.4
                    @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                    public int checkFloatAdPosition() {
                        return 0;
                    }

                    @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                    public void closeWebView(String str4) {
                    }

                    @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                    public void disableCloseButton() {
                        C10831c.m10518c(TWMAdView.f9654a, "disableCloseButton request!!");
                        aVar.m29658a("kcce", Boolean.TRUE);
                        C4117a.m29671b().m29672a(str3, aVar);
                    }
                });
                this.jsWebView.setWebViewClient(new WebViewClientMraid(str3, this.mProcessor) { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.5
                    @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str4) {
                        MraidProcessor mraidProcessor;
                        super.onPageFinished(webView, str4);
                        String str5 = str3;
                        if (str5 != null) {
                            if (MraidProcessor.isMraidAd(str5) && (mraidProcessor = TWMAdView.this.mProcessor) != null) {
                                mraidProcessor.initMRAID(MraidProcessor.MraidPlacementType.INLINE);
                                TWMAdView.this.mProcessor.fireViewableChangeEvent(true);
                            }
                            TWMAdView.this.m29802i();
                            C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str3);
                            if (bVar == null || !((Boolean) bVar.m29659a("isOmProviderExisted")).booleanValue()) {
                                C10831c.m10518c(TWMAdView.f9654a, "Measurement Provider is Empty.");
                                return;
                            }
                            WeakReference<Context> weakReference = TWMAdView.this.contextRef;
                            if (weakReference != null && weakReference.get() != null) {
                                TWMAdView.this.omManager = new C4124a();
                                TWMAdView tWMAdView = TWMAdView.this;
                                C4127a.m29645a(tWMAdView.omManager, tWMAdView.contextRef.get().getApplicationContext(), str3, TWMAdView.this.jsWebView, (View[]) null);
                                if (!((Boolean) bVar.m29659a("isVideoAd")).booleanValue()) {
                                    C4127a.m29646a(TWMAdView.this.omManager);
                                }
                            }
                        }
                    }
                });
                this.jsWebView.loadContent(str, str2, str3);
            }
        }
    }

    /* renamed from: a */
    private void m29842a(Context context, AttributeSet attributeSet) {
        setContentDescription(f9654a);
        if (attributeSet != null) {
            String a = m29827a("adSize", context, attributeSet);
            String str = f9654a;
            C10831c.m10518c(str, "adSize : " + a);
            TWMAdSize[] a2 = m29828a(a);
            if (a2 == null || a2.length == 0) {
                C10831c.m10520b(Utils.AD_NETWORK_SOURCE_NAME_TAMEDIA, "Attribute \"adSize\" invalid : " + a);
                return;
            }
            String str2 = f9654a;
            C10831c.m10518c(str2, "arrayOfAdSize.length : " + a2.length);
            String a3 = m29827a("adunitId", context, attributeSet);
            String str3 = f9654a;
            C10831c.m10518c(str3, "adunitId : " + a3);
            if (a3 == null) {
                C10831c.m10520b(Utils.AD_NETWORK_SOURCE_NAME_TAMEDIA, "Required XML attribute \"adUnitId\" missing");
            } else if (!isInEditMode()) {
                this.contextRef = new WeakReference<>(context);
                this.adSize = a2[0];
                this.f9655b = a3;
                setBackgroundColor(0);
                try {
                    m29839a(this.adSize);
                } catch (Exception e) {
                    String str4 = f9654a;
                    C10831c.m10520b(str4, "Build webview failed. " + e.getMessage());
                }
            } else if (a2 == null || a2.length == 0) {
                m29841a(getContext(), "Ads by TAMedia", -1, TWMAdSize.BANNER, attributeSet);
            } else {
                m29841a(getContext(), "Ads by TAMedia", -1, a2[0], attributeSet);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.widget.LinearLayout, android.view.View, int] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m29841a(android.content.Context r7, java.lang.String r8, int r9, com.taiwanmobile.p055pt.adp.view.TWMAdSize r10, android.util.AttributeSet r11) {
        /*
            r6 = this;
            r0 = r10
            r12 = r0
            r0 = r10
            if (r0 != 0) goto L_0x000e
            com.taiwanmobile.pt.adp.view.TWMAdSize r0 = com.taiwanmobile.p055pt.adp.view.TWMAdSize.BANNER
            r12 = r0
        L_0x000e:
            r0 = r6
            int r0 = r0.getChildCount()
            if (r0 != 0) goto L_0x00bf
            android.widget.TextView r0 = new android.widget.TextView
            r10 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0028
            r0 = r10
            r1 = r7
            r0.<init>(r1)
            goto L_0x0030
        L_0x0028:
            r0 = r10
            r1 = r7
            r2 = r11
            r0.<init>(r1, r2)
        L_0x0030:
            r0 = r10
            r1 = 17
            r0.setGravity(r1)
            r0 = r10
            r1 = r8
            r0.setText(r1)
            r0 = r10
            r1 = r9
            r0.setTextColor(r1)
            r0 = r10
            r1 = -12303292(0xffffffffff444444, float:-2.6088314E38)
            r0.setBackgroundColor(r1)
            android.widget.LinearLayout r0 = new android.widget.LinearLayout
            r13 = r0
            r0 = r11
            if (r0 != 0) goto L_0x005e
            r0 = r13
            r1 = r7
            r0.<init>(r1)
            goto L_0x0066
        L_0x005e:
            r0 = r13
            r1 = r7
            r2 = r11
            r0.<init>(r1, r2)
        L_0x0066:
            r0 = r13
            r1 = 17
            r0.setGravity(r1)
            r0 = r11
            if (r0 != 0) goto L_0x007e
            android.widget.LinearLayout r0 = new android.widget.LinearLayout
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
            goto L_0x0089
        L_0x007e:
            android.widget.LinearLayout r0 = new android.widget.LinearLayout
            r1 = r0
            r2 = r7
            r3 = r11
            r1.<init>(r2, r3)
            r8 = r0
        L_0x0089:
            r0 = r8
            r1 = 17
            r0.setGravity(r1)
            r0 = r8
            r1 = r9
            r0.setBackgroundColor(r1)
            r0 = r12
            r1 = r7
            int r0 = r0.getWidthInPixels(r1)
            r14 = r0
            r0 = r12
            r1 = r7
            int r0 = r0.getHeightInPixels(r1)
            r9 = r0
            r0 = r13
            r1 = r10
            r2 = r14
            r3 = 2
            int r2 = r2 - r3
            r3 = r9
            r4 = 2
            int r3 = r3 - r4
            r0.addView(r1, r2, r3)
            r0 = r8
            r1 = r13
            r0.addView(r1)
            r0 = r6
            r1 = r8
            r2 = r14
            r3 = r9
            r0.addView(r1, r2, r3)
        L_0x00bf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.TWMAdView.m29841a(android.content.Context, java.lang.String, int, com.taiwanmobile.pt.adp.view.TWMAdSize, android.util.AttributeSet):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29840a(TWMAdRequest.ErrorCode errorCode) {
        TWMAdViewListener tWMAdViewListener = this.adListener;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onFailedToReceiveAd(this, errorCode);
        }
    }

    /* renamed from: a */
    private void m29839a(TWMAdSize tWMAdSize) {
        ViewGroup.LayoutParams b = m29822b(tWMAdSize);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b.width, b.height);
        layoutParams.addRule(13);
        WeakReference<Context> weakReference = this.contextRef;
        if (!(weakReference == null || weakReference.get() == null)) {
            this.jsWebView = new JSWebView(this.contextRef.get());
        }
        this.jsWebView.setLayoutParams(layoutParams);
        addView(this.jsWebView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29829a(C4147h.AbstractC4151c.EnumC4152a aVar) {
        int i = C40702.f9667a[aVar.ordinal()];
        if (i == 1) {
            this.txId = this.f9659f.m29529c();
            m29826a(this.f9655b, this.txId);
            m29808f();
        } else if (i == 2 || i == 3) {
            this.txId = null;
            m29804h();
        }
    }

    /* renamed from: a */
    private void m29826a(String str, String str2) {
        C4117a b = C4117a.m29671b();
        b.getClass();
        C4117a.C4118a aVar = new C4117a.C4118a(str);
        aVar.m29658a("adRequest", this.adRequest);
        aVar.m29658a("adunitId", str);
        aVar.m29658a(AdFetch.AD_ADTYPE_KEY, 4);
        C4117a.m29671b().m29672a(str2, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29825a(String str, String str2, String str3, final String str4) {
        JSWebView jSWebView = this.jsWebView;
        if (jSWebView != null) {
            this.mProcessor = new MraidProcessor(jSWebView, str4);
            C4117a.C4118a aVar = (C4117a.C4118a) C4117a.m29671b().m29673a(str4);
            if (aVar != null) {
                aVar.m29658a("kmp", this.mProcessor);
            }
            this.jsWebView.setWebViewClient(new WebViewClientMraid(str4, this.mProcessor) { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.6
                @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str5) {
                    MraidProcessor mraidProcessor;
                    super.onPageFinished(webView, str5);
                    String str6 = str4;
                    if (str6 != null && MraidProcessor.isMraidAd(str6) && (mraidProcessor = TWMAdView.this.mProcessor) != null) {
                        mraidProcessor.initMRAID(MraidProcessor.MraidPlacementType.INLINE);
                        TWMAdView.this.mProcessor.fireViewableChangeEvent(true);
                    }
                }
            });
            this.jsWebView.loadHTMLWithBaseUrl(str, str2, str3, str4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29824a(final String str, final boolean z) {
        C4147h.C4150b bVar;
        C4147h hVar = this.f9659f;
        if (hVar == null || (bVar = this.f9660g) == null) {
            m29818b(str, z);
        } else {
            hVar.m29536a(bVar, str, z, new C4133b.AbstractC4138c() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.8
                @Override // com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b.AbstractC4138c
                /* renamed from: a */
                public void mo29589a() {
                    TWMAdView.this.m29818b(str, z);
                }
            });
        }
    }

    /* renamed from: b */
    private ViewGroup.LayoutParams m29822b(TWMAdSize tWMAdSize) {
        C10831c.m10518c(f9654a, "getAdjustmentParams invoked!!");
        return new ViewGroup.LayoutParams(tWMAdSize.getWidthInPixels(this.contextRef.get()), tWMAdSize.getHeightInPixels(this.contextRef.get()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29823b() {
        this.f9660g = null;
        if (!(this.txId == null || C4117a.m29671b().m29673a(this.txId) == null)) {
            String str = f9654a;
            C10831c.m10518c(str, "Remove ad info in hashmap, key = " + this.txId);
            C4117a.m29671b().m29669c(this.txId);
        }
        this.txId = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29819b(String str) {
        C4147h.C4150b bVar;
        C4147h hVar = this.f9659f;
        if (hVar != null && (bVar = this.f9660g) != null) {
            hVar.m29537a(bVar, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29818b(String str, boolean z) {
        JSWebView jSWebView;
        if (z) {
            this.isAdLoading = true;
            popAdReceive("normal banner");
            return;
        }
        if ("11".equals(str) && (jSWebView = this.jsWebView) != null && jSWebView.getParent() == null) {
            addView(this.jsWebView);
        }
        m29808f();
    }

    /* renamed from: c */
    private ViewGroup.LayoutParams m29816c(TWMAdSize tWMAdSize) {
        C10831c.m10518c(f9654a, "getAdjustParamsByAdSize invoked!!");
        int width = tWMAdSize.getWidth();
        int height = tWMAdSize.getHeight();
        int l = C10832d.m10467l(this.contextRef.get());
        int i = width;
        if (width != -1) {
            i = width;
            if (width != -2) {
                i = (width * l) / 160;
            }
        }
        int i2 = height;
        if (height != -1) {
            i2 = height;
            if (height != -2) {
                i2 = (height * l) / 160;
            }
        }
        String str = f9654a;
        C10831c.m10518c(str, "width : " + i);
        String str2 = f9654a;
        C10831c.m10518c(str2, "height : " + i2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(i, i2);
        } else {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m29817c() {
        JSWebView jSWebView = this.jsWebView;
        if (jSWebView != null) {
            jSWebView.clearWebView();
            this.jsWebView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m29814d() {
        String str = f9654a;
        C10831c.m10518c(str, "currentUsageTime(before) : " + this.f9663j);
        this.f9663j = this.f9663j + 1;
        String str2 = f9654a;
        C10831c.m10518c(str2, "currentUsageTime(after) : " + this.f9663j);
    }

    /* renamed from: d */
    private void m29813d(TWMAdSize tWMAdSize) {
        C10831c.m10518c(f9654a, "adjustAdView invoked!!");
        setLayoutParams(m29816c(tWMAdSize));
        C10831c.m10518c(f9654a, "adjustAdView end!!");
    }

    /* renamed from: e */
    private void m29811e() {
        TextView textView = new TextView(this.contextRef.get());
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        textView.setTextSize(1, 12.0f);
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText("you must have INTERNET ,ACCESS_NETWORK_STATE,READ_PHONE_STATE and ACCESS_WIFI_STATE permission in AndroidManifest.xml");
        addView(textView);
    }

    /* renamed from: e */
    private void m29810e(TWMAdSize tWMAdSize) {
        ViewGroup.LayoutParams b = m29822b(tWMAdSize);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b.width, b.height);
        layoutParams.addRule(13);
        WeakReference<Activity> weakReference = this.activityRef;
        if (weakReference == null || weakReference.get() == null) {
            this.jsWebView = new JSWebView(this.contextRef.get());
        } else {
            this.jsWebView = new JSWebView(this.activityRef.get());
        }
        this.jsWebView.setLayoutParams(layoutParams);
        addView(this.jsWebView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m29808f() {
        C4147h hVar = this.f9659f;
        if (hVar != null) {
            this.f9660g = hVar.m29539a();
            if (this.f9660g != null) {
                if (this.txId != null) {
                    C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.txId);
                    bVar.m29658a("tpInfo", this.f9660g);
                    bVar.m29658a("isOpenChrome", Boolean.valueOf(this.f9660g.m29506h()));
                    C4117a.m29671b().m29672a(this.txId, bVar);
                }
                if (C4147h.EnumC4149a.CRITEO.m29519a().equals(this.f9660g.m29515b())) {
                    m29844a(Integer.parseInt(this.f9660g.m29513c()));
                } else if (C4147h.EnumC4149a.TAMEDIA.m29519a().equals(this.f9660g.m29515b())) {
                    m29804h();
                } else if (C4147h.EnumC4149a.UCFUNNEL.m29519a().equals(this.f9660g.m29515b())) {
                    m29800j();
                } else {
                    m29808f();
                }
            } else {
                m29840a(TWMAdRequest.ErrorCode.NO_FILL);
            }
        } else {
            m29840a(TWMAdRequest.ErrorCode.NO_FILL);
        }
    }

    /* renamed from: g */
    private void m29806g() {
        CriteoBannerAd criteoBannerAd = this.f9656c;
        if (criteoBannerAd != null) {
            if (criteoBannerAd.getParent() != null) {
                removeView(this.f9656c);
            }
            this.f9656c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getUsageTime() {
        return this.f9663j;
    }

    /* renamed from: h */
    private void m29804h() {
        C4147h hVar = this.f9659f;
        boolean z = hVar == null || hVar.m29532b() == null;
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference == null || weakReference.get() == null) {
            m29808f();
            return;
        }
        C4127a.C4131c cVar = new C4127a.C4131c(this.contextRef.get(), this.f9655b, this.adRequest, this.adSize.equals(TWMAdSize.SMART_BANNER) ? "SB" : "B");
        cVar.m29626a(this.adSize);
        cVar.m29625a(this.f9662i);
        cVar.m29621b(z);
        String str = this.txId;
        if (str != null && !"".equals(str)) {
            cVar.m29624a(this.txId);
        }
        C4127a.m29643a(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m29802i() {
        WeakReference<Activity> weakReference;
        C10831c.m10518c(f9654a, "showTAMediaAd invoke !");
        if (this.txId != null && isAdLoading() && (weakReference = this.activityRef) != null && weakReference.get() != null) {
            C4127a.m29653a(this.activityRef.get(), this.txId);
        }
    }

    /* renamed from: j */
    private void m29800j() {
        WeakReference<Context> weakReference;
        if (this.f9660g == null || (weakReference = this.contextRef) == null || weakReference.get() == null) {
            m29818b("12", false);
            return;
        }
        String d = this.f9660g.m29511d();
        if (d != null && !"".equals(d)) {
            C4133b.m29608a(this.contextRef.get(), d, this.txId, new C4083d(this.contextRef.get(), this.f9661h));
        }
    }

    /* renamed from: a */
    public TWMAdSize[] m29828a(String str) {
        TWMAdSize tWMAdSize;
        String[] split = str.split(",");
        TWMAdSize[] tWMAdSizeArr = new TWMAdSize[split.length];
        for (int i = 0; i < split.length; i++) {
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    tWMAdSize = new TWMAdSize("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? -2 : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    String str2 = f9654a;
                    C10831c.m10520b(str2, "convertStringToAdSizeArray NumberFormatException: " + e.getMessage());
                    return null;
                } catch (Exception e2) {
                    String str3 = f9654a;
                    C10831c.m10520b(str3, "convertStringToAdSizeArray Exception: " + e2.getMessage());
                    return null;
                }
            } else {
                tWMAdSize = "IAB_WIDE_SKYSCRAPER".equals(trim) ? TWMAdSize.IAB_WIDE_SKYSCRAPER : "IAB_LEADERBOARD".equals(trim) ? TWMAdSize.IAB_LEADERBOARD : "IAB_BANNER".equals(trim) ? TWMAdSize.IAB_BANNER : "IAB_MRECT".equals(trim) ? TWMAdSize.IAB_MRECT : "SMART_BANNER".equals(trim) ? TWMAdSize.SMART_BANNER : "BANNER".equals(trim) ? TWMAdSize.BANNER : null;
            }
            if (tWMAdSize == null) {
                return null;
            }
            tWMAdSizeArr[i] = tWMAdSize;
        }
        return tWMAdSizeArr;
    }

    public void destroy() {
        WeakReference<Context> weakReference = this.contextRef;
        if (!(weakReference == null || weakReference.get() == null || this.f9664k == null || !C4117a.m29671b().m29674a())) {
            try {
                this.contextRef.get().unregisterReceiver(this.f9664k);
                C4117a.m29671b().m29672a("bcr", Boolean.FALSE);
            } catch (Exception e) {
                String str = f9654a;
                C10831c.m10520b(str, "destroy Exception: " + e.getMessage());
            }
        }
        C4147h hVar = this.f9659f;
        if (hVar != null) {
            hVar.m29527d();
        }
        removeCallbacks(this.f9657d);
        removeCallbacks(this.f9658e);
        m29823b();
        m29806g();
        this.f9657d = null;
        this.f9658e = null;
        this.f9662i = null;
        this.f9655b = null;
        this.adListener = null;
        this.contextRef = null;
        C4124a aVar = this.omManager;
        if (aVar != null) {
            C4127a.m29644a(aVar, new C4124a.AbstractC4125a() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.3
                @Override // com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a.AbstractC4125a
                /* renamed from: a */
                public void mo29430a() {
                    TWMAdView.this.m29817c();
                    TWMAdView.this.omManager = null;
                }
            });
        } else {
            m29817c();
        }
    }

    public TWMAdViewListener getAdListener() {
        return this.adListener;
    }

    public String getAdUnitId() {
        return this.f9655b;
    }

    public void initialView(TWMAdSize tWMAdSize) {
        C10831c.m10518c(f9654a, "initialView invoked!!");
        setContentDescription(f9654a);
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference != null && weakReference.get() != null) {
            m29813d(tWMAdSize);
            if (!C10832d.m10483f(this.contextRef.get())) {
                m29811e();
                C10831c.m10520b(f9654a, "Permissions must be declared in AndroidManifest.xml.");
                return;
            }
            setBackgroundColor(0);
            try {
                m29810e(tWMAdSize);
            } catch (Exception e) {
                String str = f9654a;
                C10831c.m10520b(str, "Build webview failed. " + e.getMessage());
            }
        }
    }

    public boolean isAdLoading() {
        return this.isAdLoading;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    @Deprecated
    public boolean isReady() {
        return this.jsWebView != null;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void loadAd(TWMAdRequest tWMAdRequest) {
        C10831c.m10518c(f9654a, "loadAd invoked!!");
        this.adRequest = tWMAdRequest;
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference == null || weakReference.get() == null || this.jsWebView == null || !C10832d.m10483f(this.contextRef.get())) {
            TWMAdViewListener tWMAdViewListener = this.adListener;
            if (tWMAdViewListener != null) {
                tWMAdViewListener.onFailedToReceiveAd(this, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            }
        } else if (C4127a.m29638b(this.contextRef.get())) {
            String str = f9654a;
            C10831c.m10518c(str, "isAdLoading ? " + isAdLoading());
            String str2 = f9654a;
            C10831c.m10518c(str2, "TWMAdActivity.isShowing() ? " + TWMAdActivity.isShowing());
            if (!isAdLoading() && !TWMAdActivity.isShowing()) {
                this.f9659f = new C4147h(this.contextRef.get(), this.f9655b, tWMAdRequest, this.adSize);
                this.f9659f.m29535a(new C4147h.AbstractC4151c() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.7
                    @Override // com.taiwanmobile.p055pt.adp.view.p056a.C4147h.AbstractC4151c
                    /* renamed from: a */
                    public void mo29505a(final C4147h.AbstractC4151c.EnumC4152a aVar) {
                        C10831c.m10518c(TWMAdView.f9654a, aVar.name());
                        TWMAdView tWMAdView = TWMAdView.this;
                        C4124a aVar2 = tWMAdView.omManager;
                        if (aVar2 != null) {
                            C4127a.m29644a(aVar2, new C4124a.AbstractC4125a() { // from class: com.taiwanmobile.pt.adp.view.TWMAdView.7.1
                                @Override // com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a.AbstractC4125a
                                /* renamed from: a */
                                public void mo29430a() {
                                    TWMAdView.this.m29823b();
                                    TWMAdView.this.m29829a(aVar);
                                    TWMAdView.this.omManager = null;
                                }
                            });
                            return;
                        }
                        tWMAdView.m29823b();
                        TWMAdView.this.m29829a(aVar);
                    }
                });
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        MraidProcessor mraidProcessor;
        String str = f9654a;
        C10831c.m10518c(str, "onWindowFocusChanged(" + z + ") invoked!!");
        super.onWindowFocusChanged(z);
        if (!isInEditMode() && !(this instanceof TWMInReadAdRect)) {
            String str2 = this.txId;
            if (!(str2 == null || !MraidProcessor.isMraidAd(str2) || (mraidProcessor = this.mProcessor) == null)) {
                mraidProcessor.fireViewableChangeEvent(z);
            }
            String str3 = f9654a;
            StringBuilder sb = new StringBuilder();
            sb.append("txId is null ? ");
            boolean z2 = false;
            sb.append(this.txId == null);
            C10831c.m10518c(str3, sb.toString());
            String str4 = f9654a;
            C10831c.m10518c(str4, "isAdLoading ? " + isAdLoading());
            if (this.txId != null && isAdLoading() && z) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.txId);
                String str5 = f9654a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("adunit is null ? ");
                if (bVar == null) {
                    z2 = true;
                }
                sb2.append(z2);
                C10831c.m10518c(str5, sb2.toString());
                if (bVar != null) {
                    int intValue = ((Integer) bVar.m29659a(AdFetch.AD_ADTYPE_KEY)).intValue();
                    Boolean bool = (Boolean) bVar.m29659a("lam");
                    if (bool != null && bool.booleanValue()) {
                        if (intValue == 1 || intValue == 2 || intValue == 4) {
                            bVar.m29660a();
                            C4117a.m29671b().m29672a(this.txId, bVar);
                            String str6 = f9654a;
                            C10831c.m10518c(str6, intValue + " onDismissScreen!!");
                            this.adListener.onDismissScreen(this);
                        }
                    }
                }
            }
        }
    }

    public void pause() {
        WeakReference<Context> weakReference = this.contextRef;
        if (!(weakReference == null || weakReference.get() == null || this.f9664k == null || !C4117a.m29671b().m29674a())) {
            try {
                this.contextRef.get().unregisterReceiver(this.f9664k);
                C4117a.m29671b().m29672a("bcr", Boolean.FALSE);
            } catch (Exception e) {
                String str = f9654a;
                C10831c.m10522a(str, "pause Exception: " + e.getMessage());
            }
        }
        removeCallbacks(this.f9657d);
        removeCallbacks(this.f9658e);
    }

    public void popAdReceive(String str) {
        String str2 = f9654a;
        C10831c.m10518c(str2, "popAdReceive(" + str + ")");
        TWMAdViewListener tWMAdViewListener = this.adListener;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onReceiveAd(this);
        }
    }

    public void resume() {
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void setAdListener(TWMAdViewListener tWMAdViewListener) {
        this.adListener = tWMAdViewListener;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void stopLoading() {
        pause();
    }
}
