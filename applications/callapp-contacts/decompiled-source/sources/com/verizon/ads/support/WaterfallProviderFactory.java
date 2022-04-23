package com.verizon.ads.support;

import android.content.Context;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Configuration;
import com.verizon.ads.Logger;
import com.verizon.ads.WaterfallProvider;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/WaterfallProviderFactory.class */
public class WaterfallProviderFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35633a = Logger.getInstance(WaterfallProviderFactory.class);

    private static WaterfallProvider a(Context context, String str) {
        WaterfallProvider waterfallProvider;
        try {
            if (Logger.isLogLevelEnabled(3)) {
                f35633a.d(String.format("Creating WaterfallProvider instance for class: %s", str));
            }
            waterfallProvider = (WaterfallProvider) Class.forName(str).asSubclass(WaterfallProvider.class).getDeclaredConstructor(Context.class).newInstance(context);
        } catch (Throwable th) {
            f35633a.e(String.format("Error creating WaterfallProvider instance for class: %s", str), th);
            waterfallProvider = null;
        }
        return waterfallProvider;
    }

    public static WaterfallProvider getInstance(Context context, String str) {
        return a(context, Configuration.getString(BuildConfig.LIBRARY_PACKAGE_NAME, "waterfallProviderClass", str));
    }
}
