package com.appsflyer.internal;

import android.content.SharedPreferences;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appsflyer.internal.bc */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bc.class */
public final class C0765bc implements AbstractC0763ba {
    private final SharedPreferences values;

    public C0765bc(SharedPreferences sharedPreferences) {
        this.values = sharedPreferences;
    }

    @Override // com.appsflyer.internal.AbstractC0763ba
    public final boolean AFInAppEventType(String str) {
        return this.values.getBoolean(str, false);
    }

    @Override // com.appsflyer.internal.AbstractC0763ba
    public final void AFKeystoreWrapper(String str) {
        C22128a.m8577r0(this.values, str, true);
    }
}
