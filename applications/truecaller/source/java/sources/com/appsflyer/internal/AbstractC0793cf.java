package com.appsflyer.internal;

import android.content.Context;
import java.util.Map;
/* renamed from: com.appsflyer.internal.cf */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cf.class */
public abstract class AbstractC0793cf extends AbstractC0797cl {
    public AbstractC0793cf(String str, Runnable runnable) {
        super(str, runnable);
    }

    public final void valueOf(Context context, AbstractC0759ax<Map<String, Object>> abstractC0759ax) {
        C0726ai.valueOf();
        if (C0726ai.AFInAppEventParameterName(C0726ai.values(context), "appsFlyerCount", false) > 0 || !abstractC0759ax.AFInAppEventParameterName()) {
            return;
        }
        new Thread(abstractC0759ax.valueOf).start();
        AFInAppEventType();
    }
}
