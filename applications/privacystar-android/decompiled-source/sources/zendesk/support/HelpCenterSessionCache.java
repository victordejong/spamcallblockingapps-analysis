package zendesk.support;

import android.support.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterSessionCache.class */
public interface HelpCenterSessionCache {
    @NonNull
    LastSearch getLastSearch();

    boolean isUniqueSearchResultClick();

    void setLastSearch(String str, int i);

    void unsetUniqueSearchResultClick();
}
