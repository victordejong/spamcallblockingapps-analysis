package com.flurry.sdk;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.Window;
/* renamed from: com.flurry.sdk.eg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/eg.class */
public final class C3020eg {
    @TargetApi(11)
    /* renamed from: a */
    public static void m33277a(Window window) {
        if (window != null && Build.VERSION.SDK_INT >= 11) {
            window.setFlags(16777216, 16777216);
        }
    }
}
