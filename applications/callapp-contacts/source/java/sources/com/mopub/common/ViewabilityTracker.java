package com.mopub.common;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.AbstractC16351b;
import com.iab.omid.library.mopub.adsession.AdSessionConfiguration;
import com.iab.omid.library.mopub.adsession.C16345a;
import com.iab.omid.library.mopub.adsession.C16352c;
import com.iab.omid.library.mopub.adsession.C16358i;
import com.iab.omid.library.mopub.adsession.C16359j;
import com.iab.omid.library.mopub.adsession.EnumC16353d;
import com.iab.omid.library.mopub.adsession.EnumC16354e;
import com.iab.omid.library.mopub.adsession.EnumC16356g;
import com.iab.omid.library.mopub.adsession.EnumC16357h;
import com.iab.omid.library.mopub.p432d.C16382d;
import com.mopub.common.logging.MoPubLog;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityTracker.class */
public class ViewabilityTracker {

    /* renamed from: g */
    private static AtomicInteger f58812g = new AtomicInteger(0);

    /* renamed from: a */
    boolean f58813a = false;

    /* renamed from: b */
    protected boolean f58814b = false;

    /* renamed from: c */
    protected STATE f58815c = STATE.INIT;

    /* renamed from: d */
    int f58816d = f58812g.incrementAndGet();

    /* renamed from: e */
    private AbstractC16351b f58817e;

    /* renamed from: f */
    private C16345a f58818f;

    /* renamed from: com.mopub.common.ViewabilityTracker$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityTracker$1.class */
    public static final /* synthetic */ class C167091 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58819a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[STATE.values().length];
            f58819a = iArr;
            try {
                iArr[STATE.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f58819a[STATE.STARTED_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f58819a[STATE.IMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f58819a[STATE.STOPPED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityTracker$STATE.class */
    public enum STATE {
        INIT,
        STARTED,
        STARTED_VIDEO,
        IMPRESSED,
        STOPPED
    }

    public ViewabilityTracker(AbstractC16351b abstractC16351b, C16345a c16345a, View view) {
        Preconditions.checkNotNull(abstractC16351b);
        Preconditions.checkNotNull(c16345a);
        Preconditions.checkNotNull(view);
        this.f58817e = abstractC16351b;
        this.f58818f = c16345a;
        m6700a(view);
    }

    /* renamed from: a */
    public static AbstractC16351b m6696a(EnumC16354e enumC16354e, Set<ViewabilityVendor> set, EnumC16357h enumC16357h) {
        Preconditions.checkNotNull(enumC16354e);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(enumC16357h);
        List<C16359j> m6692a = m6692a(set);
        if (!m6692a.isEmpty()) {
            C16358i m6704e = ViewabilityManager.m6704e();
            if (m6704e == null) {
                throw new IllegalArgumentException("Parameter 'partner' may not be null.");
            }
            return AbstractC16351b.m7376a(AdSessionConfiguration.createAdSessionConfiguration(enumC16354e, EnumC16356g.BEGIN_TO_RENDER, EnumC16357h.NATIVE, enumC16357h, false), C16352c.m7375a(m6704e, ViewabilityManager.m6705d(), m6692a, "", ""));
        }
        throw new IllegalArgumentException("verificationScriptResources is empty");
    }

    /* renamed from: a */
    public static ViewabilityTracker m6698a(View view, Set<ViewabilityVendor> set) throws IllegalArgumentException {
        if (set.size() != 0) {
            AbstractC16351b m6696a = m6696a(EnumC16354e.NATIVE_DISPLAY, set, EnumC16357h.NONE);
            return new ViewabilityTracker(m6696a, C16345a.m7380a(m6696a), view);
        }
        throw new IllegalArgumentException("Empty viewability vendors list.");
    }

    /* renamed from: a */
    public static ViewabilityTracker m6697a(WebView webView) throws IllegalArgumentException {
        C16358i m6704e = ViewabilityManager.m6704e();
        if (m6704e != null) {
            C16382d.m7325a(m6704e, "Partner is null");
            C16382d.m7325a(webView, "WebView is null");
            C16382d.m7322b("", "CustomReferenceData is greater than 256 characters");
            AbstractC16351b m7376a = AbstractC16351b.m7376a(AdSessionConfiguration.createAdSessionConfiguration(EnumC16354e.HTML_DISPLAY, EnumC16356g.BEGIN_TO_RENDER, EnumC16357h.NATIVE, EnumC16357h.NONE, false), new C16352c(m6704e, webView, null, null, "", "", EnumC16353d.HTML));
            return new ViewabilityTracker(m7376a, C16345a.m7380a(m7376a), webView);
        }
        throw new IllegalArgumentException("Parameter 'partner' may not be null.");
    }

    /* renamed from: a */
    private static List<C16359j> m6692a(Set<ViewabilityVendor> set) {
        ArrayList arrayList = new ArrayList();
        for (ViewabilityVendor viewabilityVendor : set) {
            if (!TextUtils.isEmpty(viewabilityVendor.getVendorKey()) && !TextUtils.isEmpty(viewabilityVendor.getVerificationParameters())) {
                String vendorKey = viewabilityVendor.getVendorKey();
                URL javascriptResourceUrl = viewabilityVendor.getJavascriptResourceUrl();
                String verificationParameters = viewabilityVendor.getVerificationParameters();
                C16382d.m7324a(vendorKey, "VendorKey is null or empty");
                C16382d.m7325a(javascriptResourceUrl, "ResourceURL is null");
                C16382d.m7324a(verificationParameters, "VerificationParameters is null or empty");
                arrayList.add(new C16359j(vendorKey, javascriptResourceUrl, verificationParameters));
            }
            URL javascriptResourceUrl2 = viewabilityVendor.getJavascriptResourceUrl();
            C16382d.m7325a(javascriptResourceUrl2, "ResourceURL is null");
            arrayList.add(new C16359j(null, javascriptResourceUrl2, null));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m6693a(String str) {
        if (ViewabilityManager.isViewabilityEnabled()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: a */
    public final void m6700a(View view) {
        this.f58817e.mo7373a(view);
    }

    /* renamed from: a */
    public final void m6699a(View view, ViewabilityObstruction viewabilityObstruction) {
        m6693a("registerFriendlyObstruction(): " + this.f58816d);
        this.f58817e.mo7372a(view, viewabilityObstruction.value, StringUtils.SPACE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
        if (r8.f58815c == com.mopub.common.ViewabilityTracker.STATE.STARTED_VIDEO) goto L24;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6695a(com.mopub.common.ViewabilityTracker.STATE r9) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.ViewabilityTracker.m6695a(com.mopub.common.ViewabilityTracker$STATE):void");
    }

    /* renamed from: a */
    public final void m6694a(Iterable<Pair<View, ViewabilityObstruction>> iterable) {
        for (Pair<View, ViewabilityObstruction> pair : iterable) {
            try {
                m6699a((View) pair.first, (ViewabilityObstruction) pair.second);
            } catch (IllegalArgumentException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "registerFriendlyObstructions() " + e.getLocalizedMessage());
            }
        }
    }

    /* renamed from: a */
    public final boolean m6701a() {
        return this.f58814b;
    }

    public void startTracking() {
        m6693a("startTracking(): " + this.f58816d);
        m6695a(STATE.STARTED);
    }

    public void trackImpression() {
        m6693a("trackImpression(): " + this.f58816d);
        m6695a(STATE.IMPRESSED);
    }

    public void trackVideo(VideoEvent videoEvent) {
    }

    public void videoPrepared(float f) {
    }
}
