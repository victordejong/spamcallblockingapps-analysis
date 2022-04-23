package com.integralads.avid.library.mopub.session.internal.jsbridge;

import android.os.Handler;
import android.webkit.JavascriptInterface;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface.class */
public class AvidJavascriptInterface {
    public static final String AVID_OBJECT = "avid";

    /* renamed from: a */
    public final InternalAvidAdSessionContext f33083a;

    /* renamed from: b */
    public final Handler f33084b = new Handler();

    /* renamed from: c */
    public AvidJavascriptInterfaceCallback f33085c;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback.class */
    public interface AvidJavascriptInterfaceCallback {
        void onAvidAdSessionContextInvoked();
    }

    /* renamed from: com.integralads.avid.library.mopub.session.internal.jsbridge.AvidJavascriptInterface$a */
    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface$a.class */
    public class RunnableC8505a implements Runnable {
        public RunnableC8505a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AvidJavascriptInterface.this.f33085c != null) {
                AvidJavascriptInterface.this.f33085c.onAvidAdSessionContextInvoked();
                AvidJavascriptInterface.this.f33085c = null;
            }
        }
    }

    public AvidJavascriptInterface(InternalAvidAdSessionContext internalAvidAdSessionContext) {
        this.f33083a = internalAvidAdSessionContext;
    }

    @JavascriptInterface
    public String getAvidAdSessionContext() {
        this.f33084b.post(new RunnableC8505a());
        return this.f33083a.getStubContext().toString();
    }

    public AvidJavascriptInterfaceCallback getCallback() {
        return this.f33085c;
    }

    public void setCallback(AvidJavascriptInterfaceCallback avidJavascriptInterfaceCallback) {
        this.f33085c = avidJavascriptInterfaceCallback;
    }
}
