package com.integralads.avid.library.mopub.base;

import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidBridgeManager;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/base/AvidBaseListenerImpl.class */
public abstract class AvidBaseListenerImpl {

    /* renamed from: a */
    public InternalAvidAdSession f33041a;

    /* renamed from: b */
    public AvidBridgeManager f33042b;

    public AvidBaseListenerImpl(InternalAvidAdSession internalAvidAdSession, AvidBridgeManager avidBridgeManager) {
        this.f33041a = internalAvidAdSession;
        this.f33042b = avidBridgeManager;
    }

    /* renamed from: a */
    public void m5397a() {
        if (this.f33041a == null) {
            throw new IllegalStateException("The AVID ad session is ended. Please ensure you are not recording events after the session has ended.");
        }
    }

    /* renamed from: b */
    public InternalAvidAdSession m5396b() {
        return this.f33041a;
    }

    /* renamed from: c */
    public AvidBridgeManager m5395c() {
        return this.f33042b;
    }

    public void destroy() {
        this.f33041a = null;
        this.f33042b = null;
    }
}
