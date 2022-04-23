package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.ViewabilityManager;
import com.mopub.common.logging.MoPubLog;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability.class */
public class BaseWebViewViewability extends BaseWebView {

    /* renamed from: c  reason: collision with root package name */
    protected State f34054c = State.INIT;
    protected boolean f = true;
    protected boolean g = false;
    protected boolean h = false;
    protected boolean e = ViewabilityManager.isViewabilityEnabled();

    /* renamed from: d  reason: collision with root package name */
    protected ExternalViewabilitySessionManager f34055d = ExternalViewabilitySessionManager.create();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.BaseWebViewViewability$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34056a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f34056a = iArr;
            try {
                iArr[State.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34056a[State.IMPRESSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34056a[State.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebViewViewability$State.class */
    public enum State {
        INIT,
        STARTED,
        IMPRESSED,
        STOPPED
    }

    public BaseWebViewViewability(Context context) {
        super(context);
        if (this.e) {
            this.f34052b = true;
        }
        a("BaseWebViewViewability() ".concat(String.valueOf(this)));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mopub.mobileads.BaseWebViewViewability.State r5) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.e
            if (r0 != 0) goto L_0x0008
            return
        L_0x0008:
            r0 = 0
            r6 = r0
            int[] r0 = com.mopub.mobileads.BaseWebViewViewability.AnonymousClass1.f34056a
            r1 = r5
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x0068
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x0049
            r0 = r7
            r1 = 3
            if (r0 == r1) goto L_0x0027
            r0 = r6
            r7 = r0
            goto L_0x008e
        L_0x0027:
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f34054c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.INIT
            if (r0 == r1) goto L_0x008e
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f34054c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.STOPPED
            if (r0 == r1) goto L_0x008e
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f34055d
            r0.endSession()
            goto L_0x008c
        L_0x0049:
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f34054c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.STARTED
            if (r0 != r1) goto L_0x008e
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.h
            if (r0 == 0) goto L_0x008e
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f34055d
            r0.trackImpression()
            goto L_0x008c
        L_0x0068:
            r0 = r6
            r7 = r0
            r0 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r0 = r0.f34054c
            com.mopub.mobileads.BaseWebViewViewability$State r1 = com.mopub.mobileads.BaseWebViewViewability.State.INIT
            if (r0 != r1) goto L_0x008e
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.g
            if (r0 == 0) goto L_0x008e
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f34055d
            r1 = r4
            r0.createWebViewSession(r1)
            r0 = r4
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f34055d
            r0.startSession()
        L_0x008c:
            r0 = 1
            r7 = r0
        L_0x008e:
            r0 = r7
            if (r0 == 0) goto L_0x0098
            r0 = r4
            r1 = r5
            r0.f34054c = r1
            return
        L_0x0098:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Skip state transition "
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            r1 = r4
            com.mopub.mobileads.BaseWebViewViewability$State r1 = r1.f34054c
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " to "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.BaseWebViewViewability.a(com.mopub.mobileads.BaseWebViewViewability$State):void");
    }

    private static void a(String str) {
        if (ViewabilityManager.isViewabilityEnabled()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK ".concat(String.valueOf(str)));
        }
    }

    public void disableAutomaticImpression() {
        this.f = false;
    }

    public void disableTracking() {
        this.e = false;
    }

    public void enableTracking() {
        this.e = true;
    }

    public void notifyImpression() {
        a(State.IMPRESSED);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a("onAttachedToWindow() ".concat(String.valueOf(this)));
        if (this.g) {
            a(State.STARTED);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        a(State.STOPPED);
        super.onDetachedFromWindow();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a("onVisibilityChanged: " + i + StringUtils.SPACE + this);
        this.h = i == 0;
        if (this.f) {
            a(State.IMPRESSED);
        }
    }

    public void setPageLoaded() {
        a("setPageLoaded() ".concat(String.valueOf(this)));
        this.g = true;
        a(State.STARTED);
        if (this.f) {
            a(State.IMPRESSED);
        }
    }
}
