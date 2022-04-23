package com.mopub.common;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.iab.omid.library.mopub.adsession.AdSessionConfiguration;
import com.iab.omid.library.mopub.adsession.a;
import com.iab.omid.library.mopub.adsession.b;
import com.iab.omid.library.mopub.adsession.c;
import com.iab.omid.library.mopub.adsession.e;
import com.iab.omid.library.mopub.adsession.g;
import com.iab.omid.library.mopub.adsession.h;
import com.iab.omid.library.mopub.adsession.i;
import com.iab.omid.library.mopub.adsession.j;
import com.iab.omid.library.mopub.d.d;
import com.mopub.common.logging.MoPubLog;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityTracker.class */
public class ViewabilityTracker {
    private static AtomicInteger g = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    boolean f33879a = false;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f33880b = false;

    /* renamed from: c  reason: collision with root package name */
    protected STATE f33881c = STATE.INIT;

    /* renamed from: d  reason: collision with root package name */
    int f33882d = g.incrementAndGet();
    private b e;
    private a f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.common.ViewabilityTracker$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityTracker$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33883a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[STATE.values().length];
            f33883a = iArr;
            try {
                iArr[STATE.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33883a[STATE.STARTED_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33883a[STATE.IMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33883a[STATE.STOPPED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityTracker$STATE.class */
    public enum STATE {
        INIT,
        STARTED,
        STARTED_VIDEO,
        IMPRESSED,
        STOPPED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewabilityTracker(b bVar, a aVar, View view) {
        Preconditions.checkNotNull(bVar);
        Preconditions.checkNotNull(aVar);
        Preconditions.checkNotNull(view);
        this.e = bVar;
        this.f = aVar;
        a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(e eVar, Set<ViewabilityVendor> set, h hVar) {
        Preconditions.checkNotNull(eVar);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(hVar);
        List<j> a2 = a(set);
        if (!a2.isEmpty()) {
            i e = ViewabilityManager.e();
            if (e != null) {
                return b.a(AdSessionConfiguration.createAdSessionConfiguration(eVar, g.BEGIN_TO_RENDER, h.NATIVE, hVar, false), c.a(e, ViewabilityManager.d(), a2, "", ""));
            }
            throw new IllegalArgumentException("Parameter 'partner' may not be null.");
        }
        throw new IllegalArgumentException("verificationScriptResources is empty");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewabilityTracker a(View view, Set<ViewabilityVendor> set) throws IllegalArgumentException {
        if (set.size() != 0) {
            b a2 = a(e.NATIVE_DISPLAY, set, h.NONE);
            return new ViewabilityTracker(a2, a.a(a2), view);
        }
        throw new IllegalArgumentException("Empty viewability vendors list.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewabilityTracker a(WebView webView) throws IllegalArgumentException {
        i e = ViewabilityManager.e();
        if (e != null) {
            d.a(e, "Partner is null");
            d.a(webView, "WebView is null");
            d.b("", "CustomReferenceData is greater than 256 characters");
            b a2 = b.a(AdSessionConfiguration.createAdSessionConfiguration(e.HTML_DISPLAY, g.BEGIN_TO_RENDER, h.NATIVE, h.NONE, false), new c(e, webView, null, null, "", "", com.iab.omid.library.mopub.adsession.d.HTML));
            return new ViewabilityTracker(a2, a.a(a2), webView);
        }
        throw new IllegalArgumentException("Parameter 'partner' may not be null.");
    }

    private static List<j> a(Set<ViewabilityVendor> set) {
        ArrayList arrayList = new ArrayList();
        for (ViewabilityVendor viewabilityVendor : set) {
            if (!TextUtils.isEmpty(viewabilityVendor.getVendorKey()) && !TextUtils.isEmpty(viewabilityVendor.getVerificationParameters())) {
                String vendorKey = viewabilityVendor.getVendorKey();
                URL javascriptResourceUrl = viewabilityVendor.getJavascriptResourceUrl();
                String verificationParameters = viewabilityVendor.getVerificationParameters();
                d.a(vendorKey, "VendorKey is null or empty");
                d.a(javascriptResourceUrl, "ResourceURL is null");
                d.a(verificationParameters, "VerificationParameters is null or empty");
                arrayList.add(new j(vendorKey, javascriptResourceUrl, verificationParameters));
            }
            URL javascriptResourceUrl2 = viewabilityVendor.getJavascriptResourceUrl();
            d.a(javascriptResourceUrl2, "ResourceURL is null");
            arrayList.add(new j(null, javascriptResourceUrl2, null));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        if (ViewabilityManager.isViewabilityEnabled()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK ".concat(String.valueOf(str)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view) {
        this.e.a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(View view, ViewabilityObstruction viewabilityObstruction) {
        a("registerFriendlyObstruction(): " + this.f33882d);
        this.e.a(view, viewabilityObstruction.value, StringUtils.SPACE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
        if (r8.f33881c == com.mopub.common.ViewabilityTracker.STATE.STARTED_VIDEO) goto L_0x007f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.mopub.common.ViewabilityTracker.STATE r9) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.ViewabilityTracker.a(com.mopub.common.ViewabilityTracker$STATE):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Iterable<Pair<View, ViewabilityObstruction>> iterable) {
        for (Pair<View, ViewabilityObstruction> pair : iterable) {
            try {
                a((View) pair.first, (ViewabilityObstruction) pair.second);
            } catch (IllegalArgumentException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "registerFriendlyObstructions() " + e.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.f33880b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startTracking() {
        a("startTracking(): " + this.f33882d);
        a(STATE.STARTED);
    }

    public void trackImpression() {
        a("trackImpression(): " + this.f33882d);
        a(STATE.IMPRESSED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void trackVideo(VideoEvent videoEvent) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void videoPrepared(float f) {
    }
}
