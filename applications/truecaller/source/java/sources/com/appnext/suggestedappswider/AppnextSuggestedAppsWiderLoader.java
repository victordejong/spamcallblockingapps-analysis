package com.appnext.suggestedappswider;

import android.content.Context;
import com.appnext.base.C0472a;
import com.appnext.core.AppnextError;
import com.appnext.core.C0551g;
import com.appnext.core.SettingsManager;
import com.appnext.suggestedappswider.p023b.C0685c;
import com.appnext.suggestedappswider.p023b.C0688d;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J,\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¨\u0006\r"}, d2 = {"Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader;", "", "()V", "getAds", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "placementID", "", "postback", "appnextSuggestedAppsWiderLoaderCallbacks", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;", "loadAds", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoader.class */
public final class AppnextSuggestedAppsWiderLoader {
    public static final AppnextSuggestedAppsWiderLoader INSTANCE = new AppnextSuggestedAppsWiderLoader();

    private AppnextSuggestedAppsWiderLoader() {
    }

    public final void getAds(Context context, String str, String str2, final AppnextSuggestedAppsWiderLoaderCallbacks appnextSuggestedAppsWiderLoaderCallbacks) {
        try {
            C0685c c0685c = C0685c.f2131hq;
            C0685c.m42111a(context, str, str2, new C0685c.AbstractC0686a() { // from class: com.appnext.suggestedappswider.AppnextSuggestedAppsWiderLoader$getAds$1
                @Override // com.appnext.suggestedappswider.p023b.C0685c.AbstractC0686a
                public final void onAdsLoadedSuccessfully(AppnextSuggestedAppsWiderDataContainer appnextSuggestedAppsWiderDataContainer) {
                    l.e(appnextSuggestedAppsWiderDataContainer, "appnextSuggestedAppsWiderDataContainer");
                    AppnextSuggestedAppsWiderLoaderCallbacks appnextSuggestedAppsWiderLoaderCallbacks2 = AppnextSuggestedAppsWiderLoaderCallbacks.this;
                    if (appnextSuggestedAppsWiderLoaderCallbacks2 != null) {
                        appnextSuggestedAppsWiderLoaderCallbacks2.onAdsLoadedSuccessfully(appnextSuggestedAppsWiderDataContainer);
                    }
                }

                @Override // com.appnext.suggestedappswider.p023b.C0685c.AbstractC0686a
                public final void onError(AppnextError appnextError) {
                    l.e(appnextError, "error");
                    AppnextSuggestedAppsWiderLoaderCallbacks appnextSuggestedAppsWiderLoaderCallbacks2 = AppnextSuggestedAppsWiderLoaderCallbacks.this;
                    if (appnextSuggestedAppsWiderLoaderCallbacks2 != null) {
                        appnextSuggestedAppsWiderLoaderCallbacks2.onAdsLoadedError(appnextError);
                    }
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("AppnextSuggestedAppsWiderLoader$getAds", th);
            if (appnextSuggestedAppsWiderLoaderCallbacks == null) {
                return;
            }
            appnextSuggestedAppsWiderLoaderCallbacks.onAdsLoadedError(new AppnextError(AppnextError.NO_ADS));
        }
    }

    public static final void loadAds(final Context context, final String str, final String str2, final AppnextSuggestedAppsWiderLoaderCallbacks appnextSuggestedAppsWiderLoaderCallbacks) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "placementID");
        try {
            if (C0551g.m42368k(context)) {
                C0688d.m42108bs().m42483a(context, str, new SettingsManager.ConfigCallback() { // from class: com.appnext.suggestedappswider.AppnextSuggestedAppsWiderLoader$loadAds$1
                    @Override // com.appnext.core.SettingsManager.ConfigCallback
                    public final void error(String str3) {
                        AppnextSuggestedAppsWiderLoader.INSTANCE.getAds(context, str, str2, appnextSuggestedAppsWiderLoaderCallbacks);
                    }

                    @Override // com.appnext.core.SettingsManager.ConfigCallback
                    public final void loaded(HashMap<String, Object> hashMap) {
                        AppnextSuggestedAppsWiderLoader.INSTANCE.getAds(context, str, str2, appnextSuggestedAppsWiderLoaderCallbacks);
                    }
                });
            } else if (appnextSuggestedAppsWiderLoaderCallbacks == null) {
            } else {
                appnextSuggestedAppsWiderLoaderCallbacks.onAdsLoadedError(new AppnextError(AppnextError.CONNECTION_ERROR));
            }
        } catch (Throwable th) {
            C0472a.m42577a("AppnextSuggestedAppsWiderLoader$loadAds", th);
            INSTANCE.getAds(context, str, str2, appnextSuggestedAppsWiderLoaderCallbacks);
        }
    }
}
