package com.appnext.suggestedappswider;

import com.appnext.core.AppnextError;
import kotlin.Metadata;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&¨\u0006\u000b"}, d2 = {"Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;", "", "onAdClicked", "", "packageName", "", "onAdImpressionReceived", "onViewError", "error", "Lcom/appnext/core/AppnextError;", "onViewLoadedSuccessfully", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks.class */
public interface AppnextSuggestedAppsWiderViewCallbacks {
    void onAdClicked(String str);

    void onAdImpressionReceived(String str);

    void onViewError(AppnextError appnextError);

    void onViewLoadedSuccessfully();
}
