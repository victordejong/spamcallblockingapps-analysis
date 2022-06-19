package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.ViewabilityManager;
import com.mopub.common.logging.MoPubLog;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability.class */
public class BaseWebViewViewability extends BaseWebView {

    /* renamed from: c */
    protected State f59133c = State.INIT;

    /* renamed from: f */
    protected boolean f59136f = true;

    /* renamed from: g */
    protected boolean f59137g = false;

    /* renamed from: h */
    protected boolean f59138h = false;

    /* renamed from: e */
    protected boolean f59135e = ViewabilityManager.isViewabilityEnabled();

    /* renamed from: d */
    protected ExternalViewabilitySessionManager f59134d = ExternalViewabilitySessionManager.create();

    /* renamed from: com.mopub.mobileads.BaseWebViewViewability$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability$1.class */
    public static final /* synthetic */ class C167621 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59139a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f59139a = iArr;
            try {
                iArr[State.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59139a[State.IMPRESSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59139a[State.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability$State.class */
    public enum State {
        INIT,
        STARTED,
        IMPRESSED,
        STOPPED
    }

    public BaseWebViewViewability(Context context) {
        super(context);
        if (this.f59135e) {
            this.f59131b = true;
        }
        m6548a("BaseWebViewViewability() ".concat(String.valueOf(this)));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6549a(com.mopub.mobileads.BaseWebViewViewability.State r5) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f59135e
            if (r0 != 0) goto L8
            return
        L8:
            r0 = 0
            r6 = r0
            int[] r0 = com.mopub.mobileads.BaseWebViewViewability.C167621.f59139a
            r1 = r5
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L68
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L49
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L27
            r0 = r6
            r7 = r0
            goto L8e
        L27:
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f59133c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.INIT
            if (r0 == r1) goto L8e
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f59133c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.STOPPED
            if (r0 == r1) goto L8e
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f59134d
            r0.endSession()
            goto L8c
        L49:
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f59133c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.STARTED
            if (r0 != r1) goto L8e
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f59138h
            if (r0 == 0) goto L8e
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f59134d
            r0.trackImpression()
            goto L8c
        L68:
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f59133c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.INIT
            if (r0 != r1) goto L8e
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f59137g
            if (r0 == 0) goto L8e
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f59134d
            r1 = r4
            r0.createWebViewSession(r1)
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f59134d
            r0.startSession()
        L8c:
            r0 = 1
            r7 = r0
        L8e:
            r0 = r7
            if (r0 == 0) goto L98
            r0 = r4
            r1 = r5
            r0.f59133c = r1
            return
        L98:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Skip state transition "
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            r1 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r1 = r1.f59133c
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " to "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            m6548a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.BaseWebViewViewability.m6549a(com.mopub.mobileads.BaseWebViewViewability$State):void");
    }

    /* renamed from: a */
    private static void m6548a(String str) {
        if (ViewabilityManager.isViewabilityEnabled()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK ".concat(String.valueOf(str)));
        }
    }

    public void disableAutomaticImpression() {
        this.f59136f = false;
    }

    public void disableTracking() {
        this.f59135e = false;
    }

    public void enableTracking() {
        this.f59135e = true;
    }

    public void notifyImpression() {
        m6549a(State.IMPRESSED);
    }

    @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m6548a("onAttachedToWindow() ".concat(String.valueOf(this)));
        if (this.f59137g) {
            m6549a(State.STARTED);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        m6549a(State.STOPPED);
        super.onDetachedFromWindow();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        m6548a("onVisibilityChanged: " + i + StringUtils.SPACE + this);
        this.f59138h = i == 0;
        if (this.f59136f) {
            m6549a(State.IMPRESSED);
        }
    }

    public void setPageLoaded() {
        m6548a("setPageLoaded() ".concat(String.valueOf(this)));
        this.f59137g = true;
        m6549a(State.STARTED);
        if (this.f59136f) {
            m6549a(State.IMPRESSED);
        }
    }
}
