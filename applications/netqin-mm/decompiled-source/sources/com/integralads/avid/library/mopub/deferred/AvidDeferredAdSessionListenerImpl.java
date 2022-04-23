package com.integralads.avid.library.mopub.deferred;

import com.integralads.avid.library.mopub.base.AvidBaseListenerImpl;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidBridgeManager;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl.class */
public class AvidDeferredAdSessionListenerImpl extends AvidBaseListenerImpl implements AvidDeferredAdSessionListener {
    public AvidDeferredAdSessionListenerImpl(InternalAvidAdSession internalAvidAdSession, AvidBridgeManager avidBridgeManager) {
        super(internalAvidAdSession, avidBridgeManager);
    }

    public void recordReadyEvent() {
        m5397a();
        if (!m5396b().isReady()) {
            m5395c().publishReadyEventForDeferredAdSession();
            m5396b().onReady();
            return;
        }
        throw new IllegalStateException("The AVID ad session is already ready. Please ensure you are only calling recordReadyEvent once for the deferred AVID ad session.");
    }
}
