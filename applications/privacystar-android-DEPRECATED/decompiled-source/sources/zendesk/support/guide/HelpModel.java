package zendesk.support.guide;

import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import zendesk.support.Article;
import zendesk.support.ArticleItem;
import zendesk.support.HelpCenterProvider;
import zendesk.support.HelpItem;
import zendesk.support.HelpRequest;
import zendesk.support.SectionItem;
import zendesk.support.guide.HelpMvp;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpModel.class */
public class HelpModel implements HelpMvp.Model {
    private HelpCenterProvider provider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HelpModel(HelpCenterProvider helpCenterProvider) {
        this.provider = helpCenterProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArticleItem convertArticle(Article article) {
        return new ArticleItem(article.getId(), article.getSectionId(), article.getTitle());
    }

    @Override // zendesk.support.guide.HelpMvp.Model
    public void getArticles(List<Long> list, List<Long> list2, String[] strArr, ZendeskCallback<List<HelpItem>> zendeskCallback) {
        this.provider.getHelp(new HelpRequest.Builder().withCategoryIds(list).withSectionIds(list2).withLabelNames(strArr).includeCategories().includeSections().build(), zendeskCallback);
    }

    @Override // zendesk.support.guide.HelpMvp.Model
    public void getArticlesForSection(SectionItem sectionItem, String[] strArr, final ZendeskCallback<List<ArticleItem>> zendeskCallback) {
        if (sectionItem == null || sectionItem.getId() == null) {
            zendeskCallback.onError(new ErrorResponseAdapter("SectionItem or its ID was null, cannot load more articles."));
        } else {
            this.provider.getArticles(sectionItem.getId(), StringUtils.toCsvString(strArr), new ZendeskCallback<List<Article>>() { // from class: zendesk.support.guide.HelpModel.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    if (zendeskCallback != null) {
                        zendeskCallback.onError(errorResponse);
                    }
                }

                public void onSuccess(List<Article> list) {
                    ArrayList arrayList = new ArrayList(list.size());
                    for (Article article : list) {
                        arrayList.add(HelpModel.this.convertArticle(article));
                    }
                    if (zendeskCallback != null) {
                        zendeskCallback.onSuccess(arrayList);
                    }
                }
            });
        }
    }
}
