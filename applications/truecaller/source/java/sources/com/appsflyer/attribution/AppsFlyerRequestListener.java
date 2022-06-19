package com.appsflyer.attribution;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/appsflyer/attribution/AppsFlyerRequestListener.class */
public interface AppsFlyerRequestListener {
    void onError(int i, @NonNull String str);

    void onSuccess();
}
