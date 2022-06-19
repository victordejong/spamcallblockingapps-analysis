package com.appsflyer.internal;

import android.app.Activity;
import android.net.Uri;
import android.support.annotation.Nullable;
/* renamed from: com.appsflyer.internal.aq */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aq.class */
public final class C0750aq {
    @Nullable
    public static Uri AFInAppEventParameterName(Activity activity) {
        return activity.getReferrer();
    }
}
