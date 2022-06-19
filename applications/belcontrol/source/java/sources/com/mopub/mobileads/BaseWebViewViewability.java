package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.ViewabilityManager;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability.class */
public class BaseWebViewViewability extends BaseWebView {

    /* renamed from: f */
    public State f4649f = State.INIT;

    /* renamed from: j */
    public boolean f4652j = true;

    /* renamed from: k */
    public boolean f4653k = false;

    /* renamed from: l */
    public boolean f4654l = false;

    /* renamed from: h */
    public boolean f4651h = ViewabilityManager.isViewabilityEnabled();

    /* renamed from: g */
    public ExternalViewabilitySessionManager f4650g = ExternalViewabilitySessionManager.create();

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability$State.class */
    public enum State {
        INIT,
        STARTED,
        IMPRESSED,
        STOPPED
    }

    /* renamed from: com.mopub.mobileads.BaseWebViewViewability$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability$a.class */
    public static /* synthetic */ class C1073a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4656a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f4656a = iArr;
            try {
                iArr[State.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4656a[State.IMPRESSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4656a[State.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public BaseWebViewViewability(Context context) {
        super(context);
        if (this.f4651h) {
            this.f4648c = true;
        }
        m3692g("BaseWebViewViewability() " + this);
    }

    public void disableAutomaticImpression() {
        this.f4652j = false;
    }

    public void disableTracking() {
        this.f4651h = false;
    }

    public void enableTracking() {
        this.f4651h = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3693f(com.mopub.mobileads.BaseWebViewViewability.State r4) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.BaseWebViewViewability.m3693f(com.mopub.mobileads.BaseWebViewViewability$State):void");
    }

    /* renamed from: g */
    public final void m3692g(String str) {
        if (ViewabilityManager.isViewabilityEnabled()) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "OMSDK " + str);
        }
    }

    public void notifyImpression() {
        m3693f(State.IMPRESSED);
    }

    @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3692g("onAttachedToWindow() " + this);
        if (this.f4653k) {
            m3693f(State.STARTED);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        m3693f(State.STOPPED);
        super.onDetachedFromWindow();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        m3692g("onVisibilityChanged: " + i + " " + this);
        this.f4654l = i == 0;
        if (this.f4652j) {
            m3693f(State.IMPRESSED);
        }
    }

    public void setMockExternalTracker(ExternalViewabilitySessionManager externalViewabilitySessionManager) {
        this.f4650g = externalViewabilitySessionManager;
    }

    public void setPageLoaded() {
        m3692g("setPageLoaded() " + this);
        this.f4653k = true;
        m3693f(State.STARTED);
        if (this.f4652j) {
            m3693f(State.IMPRESSED);
        }
    }
}
