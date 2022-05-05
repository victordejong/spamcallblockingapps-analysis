package zendesk.support;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskHelpCenterSessionCache.class */
class ZendeskHelpCenterSessionCache implements HelpCenterSessionCache {
    public static final LastSearch DEFAULT_SEARCH = new LastSearch("", 0);
    private LastSearch lastSearch;
    private boolean uniqueSearchResultClick = false;

    @Override // zendesk.support.HelpCenterSessionCache
    @NonNull
    public LastSearch getLastSearch() {
        return this.lastSearch != null ? this.lastSearch : DEFAULT_SEARCH;
    }

    @Override // zendesk.support.HelpCenterSessionCache
    public boolean isUniqueSearchResultClick() {
        return this.uniqueSearchResultClick;
    }

    @Override // zendesk.support.HelpCenterSessionCache
    public void setLastSearch(String str, int i) {
        this.lastSearch = new LastSearch(str, i);
        this.uniqueSearchResultClick = true;
    }

    @Override // zendesk.support.HelpCenterSessionCache
    public void unsetUniqueSearchResultClick() {
        this.uniqueSearchResultClick = false;
    }
}
