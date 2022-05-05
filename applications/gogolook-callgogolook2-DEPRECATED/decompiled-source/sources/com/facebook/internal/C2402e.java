package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsIntent;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.e */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/e.class */
public class C2402e {

    /* renamed from: a */
    public Uri f2990a;

    public C2402e(String str, Bundle bundle) {
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        String b = C2401d0.m34897b();
        this.f2990a = C2408g0.m34851a(b, C6135n.m23735p() + "/dialog/" + str, bundle2);
    }

    /* renamed from: a */
    public void m34894a(Activity activity, String str) {
        CustomTabsIntent build = new CustomTabsIntent.Builder().build();
        build.intent.setPackage(str);
        build.intent.addFlags(1073741824);
        build.launchUrl(activity, this.f2990a);
    }
}
