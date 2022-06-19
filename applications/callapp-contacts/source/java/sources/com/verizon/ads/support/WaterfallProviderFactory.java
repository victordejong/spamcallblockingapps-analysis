package com.verizon.ads.support;

import android.content.Context;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Configuration;
import com.verizon.ads.Logger;
import com.verizon.ads.WaterfallProvider;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/WaterfallProviderFactory.class */
public class WaterfallProviderFactory {

    /* renamed from: a */
    private static final Logger f61719a = Logger.getInstance(WaterfallProviderFactory.class);

    /* renamed from: a */
    private static WaterfallProvider m5319a(Context context, String str) {
        WaterfallProvider waterfallProvider;
        try {
            if (Logger.isLogLevelEnabled(3)) {
                f61719a.m5567d(String.format("Creating WaterfallProvider instance for class: %s", str));
            }
            waterfallProvider = (WaterfallProvider) Class.forName(str).asSubclass(WaterfallProvider.class).getDeclaredConstructor(Context.class).newInstance(context);
        } catch (Throwable th) {
            f61719a.m5564e(String.format("Error creating WaterfallProvider instance for class: %s", str), th);
            waterfallProvider = null;
        }
        return waterfallProvider;
    }

    public static WaterfallProvider getInstance(Context context, String str) {
        return m5319a(context, Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderClass", str));
    }
}
