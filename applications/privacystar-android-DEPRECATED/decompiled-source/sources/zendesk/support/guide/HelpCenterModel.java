package zendesk.support.guide;

import com.zendesk.service.ZendeskCallback;
import java.util.List;
import zendesk.support.HelpCenterProvider;
import zendesk.support.HelpCenterSearch;
import zendesk.support.SearchArticle;
import zendesk.support.SupportSdkSettings;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.guide.HelpCenterMvp;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterModel.class */
class HelpCenterModel implements HelpCenterMvp.Model {
    private final HelpCenterProvider provider;
    private final SupportSettingsProvider settingsProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HelpCenterModel(HelpCenterProvider helpCenterProvider, SupportSettingsProvider supportSettingsProvider) {
        this.provider = helpCenterProvider;
        this.settingsProvider = supportSettingsProvider;
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Model
    public void getSettings(ZendeskCallback<SupportSdkSettings> zendeskCallback) {
        this.settingsProvider.getSettings(zendeskCallback);
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Model
    public void search(List<Long> list, List<Long> list2, String str, String[] strArr, ZendeskCallback<List<SearchArticle>> zendeskCallback) {
        this.provider.searchArticles(new HelpCenterSearch.Builder().withQuery(str).withCategoryIds(list).withSectionIds(list2).withLabelNames(strArr).build(), zendeskCallback);
    }
}
