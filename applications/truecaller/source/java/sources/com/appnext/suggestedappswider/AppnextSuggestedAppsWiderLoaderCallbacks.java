package com.appnext.suggestedappswider;

import com.appnext.core.AppnextError;
import kotlin.Metadata;
@Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks;", "", "onAdsLoadedError", "", "error", "Lcom/appnext/core/AppnextError;", "onAdsLoadedSuccessfully", "appnextSuggestedAppsWiderDataContainer", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/AppnextSuggestedAppsWiderLoaderCallbacks.class */
public interface AppnextSuggestedAppsWiderLoaderCallbacks {
    void onAdsLoadedError(AppnextError appnextError);

    void onAdsLoadedSuccessfully(AppnextSuggestedAppsWiderDataContainer appnextSuggestedAppsWiderDataContainer);
}
