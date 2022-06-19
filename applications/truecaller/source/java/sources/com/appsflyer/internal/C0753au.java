package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.appsflyer.internal.au */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/au.class */
public final class C0753au {
    public final Map<String, Object> AFKeystoreWrapper = new ConcurrentHashMap();
    public final Application valueOf;
    public final SharedPreferences values;

    public C0753au(Context context) {
        Application application = (Application) context.getApplicationContext();
        this.valueOf = application;
        this.values = C0726ai.values(application);
    }

    public final boolean valueOf() {
        C0726ai.valueOf();
        return C0726ai.AFInAppEventParameterName(this.values, "appsFlyerCount", false) == 0;
    }
}
