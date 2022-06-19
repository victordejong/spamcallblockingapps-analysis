package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.bd */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bd.class */
public final class C0766bd {
    private C0715ad AFInAppEventParameterName;
    private boolean values;

    public final boolean AFInAppEventType() {
        return this.values;
    }

    public final C0715ad valueOf() {
        C0715ad c0715ad;
        synchronized (this) {
            c0715ad = this.AFInAppEventParameterName;
        }
        return c0715ad;
    }

    public final void valueOf(C0715ad c0715ad) {
        synchronized (this) {
            this.AFInAppEventParameterName = c0715ad;
            this.values = true;
        }
    }
}
