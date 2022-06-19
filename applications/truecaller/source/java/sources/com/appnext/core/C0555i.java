package com.appnext.core;

import android.content.Context;
import android.widget.ImageView;
import com.appnext.core.C0557j;
/* renamed from: com.appnext.core.i */
/* loaded from: classes-dex2jar.jar:com/appnext/core/i.class */
public final class C0555i {
    /* renamed from: a */
    public static void m42364a(Context context, final ImageView imageView) {
        C0557j.m42359ax().m42360a(context, imageView, "https://cdn.appnext.com/tools/sdk/adchoices/adchoices_big.png", new C0557j.AbstractC0559a() { // from class: com.appnext.core.i.1
            @Override // com.appnext.core.C0557j.AbstractC0559a
            /* renamed from: aw */
            public final void mo42356aw() {
                imageView.setImageResource(C0511R.C0512drawable.apnxt_adchoices);
            }
        });
    }

    /* renamed from: a */
    public static boolean m42363a(AppnextAd appnextAd, SettingsManager settingsManager) {
        return appnextAd.isGdpr() && Boolean.parseBoolean(settingsManager.m42476y("gdpr"));
    }
}
