package com.mopub.common;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import com.mopub.common.logging.MoPubLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityTracker.class */
public class ViewabilityTracker {

    /* renamed from: g */
    public static AtomicInteger f4334g = new AtomicInteger(0);

    /* renamed from: a */
    public v31 f4335a;

    /* renamed from: b */
    public u31 f4336b;

    /* renamed from: c */
    public boolean f4337c = false;

    /* renamed from: d */
    public boolean f4338d = false;

    /* renamed from: e */
    public STATE f4339e = STATE.INIT;

    /* renamed from: f */
    public int f4340f = f4334g.incrementAndGet();

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityTracker$STATE.class */
    public enum STATE {
        INIT,
        STARTED,
        STARTED_VIDEO,
        IMPRESSED,
        STOPPED
    }

    /* renamed from: com.mopub.common.ViewabilityTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityTracker$a.class */
    public static /* synthetic */ class C1036a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4342a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[STATE.values().length];
            f4342a = iArr;
            try {
                iArr[STATE.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4342a[STATE.STARTED_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4342a[STATE.IMPRESSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4342a[STATE.STOPPED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public ViewabilityTracker(v31 v31Var, u31 u31Var, View view) {
        Preconditions.checkNotNull(v31Var);
        Preconditions.checkNotNull(u31Var);
        Preconditions.checkNotNull(view);
        this.f4335a = v31Var;
        this.f4336b = u31Var;
        m3886k(view);
    }

    /* renamed from: b */
    public static v31 m3895b(z31 z31Var, Set<ViewabilityVendor> set, c41 c41Var) {
        Preconditions.checkNotNull(z31Var);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(c41Var);
        List<e41> m3893d = m3893d(set);
        if (!m3893d.isEmpty()) {
            d41 m3902e = ViewabilityManager.m3902e();
            if (m3902e == null) {
                throw new IllegalArgumentException("Parameter 'partner' may not be null.");
            }
            return v31.b(w31.a(z31Var, b41.BEGIN_TO_RENDER, c41.NATIVE, c41Var, false), x31.b(m3902e, ViewabilityManager.m3904c(), m3893d, "", ""));
        }
        throw new IllegalArgumentException("verificationScriptResources is empty");
    }

    /* renamed from: c */
    public static ViewabilityTracker m3894c(View view, Set<ViewabilityVendor> set) {
        if (set.size() != 0) {
            v31 m3895b = m3895b(z31.d, set, c41.NONE);
            return new ViewabilityTracker(m3895b, u31.a(m3895b), view);
        }
        throw new IllegalArgumentException("Empty viewability vendors list.");
    }

    /* renamed from: d */
    public static List<e41> m3893d(Set<ViewabilityVendor> set) {
        e41 m2245b;
        ArrayList arrayList = new ArrayList();
        for (ViewabilityVendor viewabilityVendor : set) {
            if (!TextUtils.isEmpty(viewabilityVendor.getVendorKey()) && !TextUtils.isEmpty(viewabilityVendor.getVerificationParameters())) {
                m2245b = e41.m2246a(viewabilityVendor.getVendorKey(), viewabilityVendor.getJavascriptResourceUrl(), viewabilityVendor.getVerificationParameters());
                arrayList.add(m2245b);
            }
            m2245b = e41.m2245b(viewabilityVendor.getJavascriptResourceUrl());
            arrayList.add(m2245b);
        }
        return arrayList;
    }

    /* renamed from: e */
    public static ViewabilityTracker m3892e(WebView webView) {
        d41 m3902e = ViewabilityManager.m3902e();
        if (m3902e != null) {
            v31 b = v31.b(w31.a(z31.c, b41.BEGIN_TO_RENDER, c41.NATIVE, c41.NONE, false), x31.a(m3902e, webView, "", ""));
            return new ViewabilityTracker(b, u31.a(b), webView);
        }
        throw new IllegalArgumentException("Parameter 'partner' may not be null.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
        if (r0 == com.mopub.common.ViewabilityTracker.STATE.STARTED_VIDEO) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3896a(com.mopub.common.ViewabilityTracker.STATE r4) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.ViewabilityTracker.m3896a(com.mopub.common.ViewabilityTracker$STATE):void");
    }

    /* renamed from: f */
    public boolean m3891f() {
        return this.f4337c;
    }

    /* renamed from: g */
    public boolean m3890g() {
        return this.f4338d;
    }

    /* renamed from: h */
    public void m3889h(String str) {
        if (ViewabilityManager.isViewabilityEnabled()) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "OMSDK " + str);
        }
    }

    /* renamed from: i */
    public void m3888i(View view, ViewabilityObstruction viewabilityObstruction) {
        m3889h("registerFriendlyObstruction(): " + this.f4340f);
        this.f4335a.a(view, viewabilityObstruction.f4333a, " ");
    }

    /* renamed from: j */
    public void m3887j(Iterable<Pair<View, ViewabilityObstruction>> iterable) {
        for (Pair<View, ViewabilityObstruction> pair : iterable) {
            try {
                m3888i((View) pair.first, (ViewabilityObstruction) pair.second);
            } catch (IllegalArgumentException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "registerFriendlyObstructions() " + e.getLocalizedMessage());
            }
        }
    }

    /* renamed from: k */
    public void m3886k(View view) {
        this.f4335a.d(view);
    }

    /* renamed from: l */
    public void m3885l() {
        m3889h("stopTracking(): " + this.f4340f);
        m3896a(STATE.STOPPED);
    }

    public void startTracking() {
        m3889h("startTracking(): " + this.f4340f);
        m3896a(STATE.STARTED);
    }

    public void trackImpression() {
        m3889h("trackImpression(): " + this.f4340f);
        m3896a(STATE.IMPRESSED);
    }

    public void trackVideo(VideoEvent videoEvent) {
    }

    public void videoPrepared(float f) {
    }
}
