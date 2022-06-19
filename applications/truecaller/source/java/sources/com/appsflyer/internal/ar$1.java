package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.Observable;
import java.util.Observer;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ar$1.class */
public final class ar$1 implements Observer {
    private /* synthetic */ AbstractC0797cl AFKeystoreWrapper;
    private /* synthetic */ ar valueOf;

    public ar$1(ar arVar, AbstractC0797cl abstractC0797cl) {
        this.valueOf = arVar;
        this.AFKeystoreWrapper = abstractC0797cl;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        StringBuilder sb = new StringBuilder("[DDL] ");
        sb.append(this.AFKeystoreWrapper.values.get("source"));
        sb.append(" referrer collected via observer");
        AFLogger.AFInAppEventType(sb.toString());
        ar.AFInAppEventType(this.valueOf, (AbstractC0797cl) observable);
    }
}
