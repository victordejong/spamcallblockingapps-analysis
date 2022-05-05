package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.RetrofitZendeskCallbackAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskHelpCenterService.class */
public class ZendeskHelpCenterService {
    private static final String LOG_TAG = "ZendeskHelpCenterService";
    private static final int NUMBER_PER_PAGE = 1000;
    private final HelpCenterService helpCenterService;
    private final HelpCenterLocaleConverter localeConverter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskHelpCenterService(HelpCenterService helpCenterService, HelpCenterLocaleConverter helpCenterLocaleConverter) {
        this.helpCenterService = helpCenterService;
        this.localeConverter = helpCenterLocaleConverter;
    }

    public void deleteVote(Long l, ZendeskCallback<Void> zendeskCallback) {
        if (l == null) {
            Logger.m295e(LOG_TAG, "The vote id was null, can not delete the vote", new Object[0]);
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("The vote id was null, can not delete the vote"));
                return;
            }
            return;
        }
        this.helpCenterService.deleteVote(l).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    public void downvoteArticle(Long l, String str, ZendeskCallback<ArticleVoteResponse> zendeskCallback) {
        if (l == null) {
            Logger.m295e(LOG_TAG, "The article id was null, can not create down vote", new Object[0]);
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("The article id was null, can not create down vote"));
                return;
            }
            return;
        }
        this.helpCenterService.downvoteArticle(l, str).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    public void getArticle(Long l, Locale locale, String str, ZendeskCallback<Article> zendeskCallback) {
        this.helpCenterService.getArticle(this.localeConverter.toHelpCenterLocaleString(locale), l, str).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<ArticleResponse, Article>() { // from class: zendesk.support.ZendeskHelpCenterService.4
            public Article extract(ArticleResponse articleResponse) {
                return ZendeskHelpCenterService.this.matchArticleWithUsers(articleResponse.getArticle(), CollectionUtils.ensureEmpty(articleResponse.getUsers()));
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getArticlesForSection(Long l, Locale locale, String str, String str2, ZendeskCallback<List<Article>> zendeskCallback) {
        this.helpCenterService.getArticles(this.localeConverter.toHelpCenterLocaleString(locale), l, str2, str, 1000).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<ArticlesListResponse, List<Article>>() { // from class: zendesk.support.ZendeskHelpCenterService.3
            public List<Article> extract(ArticlesListResponse articlesListResponse) {
                return ZendeskHelpCenterService.this.matchArticlesWithUsers(articlesListResponse.getUsers(), articlesListResponse.getArticles());
            }
        }));
    }

    public void getAttachments(Locale locale, Long l, AttachmentType attachmentType, ZendeskCallback<List<HelpCenterAttachment>> zendeskCallback) {
        if (attachmentType == null) {
            Logger.m295e(LOG_TAG, "getAttachments() was called with null attachment type", new Object[0]);
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("getAttachments() was called with null attachment type"));
                return;
            }
            return;
        }
        this.helpCenterService.getAttachments(this.localeConverter.toHelpCenterLocaleString(locale), l, attachmentType.getAttachmentType()).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<AttachmentResponse, List<HelpCenterAttachment>>() { // from class: zendesk.support.ZendeskHelpCenterService.7
            public List<HelpCenterAttachment> extract(AttachmentResponse attachmentResponse) {
                return attachmentResponse.getArticleAttachments();
            }
        }));
    }

    public void getCategories(Locale locale, ZendeskCallback<List<Category>> zendeskCallback) {
        this.helpCenterService.getCategories(this.localeConverter.toHelpCenterLocaleString(locale)).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<CategoriesResponse, List<Category>>() { // from class: zendesk.support.ZendeskHelpCenterService.1
            public List<Category> extract(CategoriesResponse categoriesResponse) {
                return categoriesResponse.getCategories();
            }
        }));
    }

    public void getCategoryById(Long l, Locale locale, ZendeskCallback<Category> zendeskCallback) {
        this.helpCenterService.getCategoryById(this.localeConverter.toHelpCenterLocaleString(locale), l).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<CategoryResponse, Category>() { // from class: zendesk.support.ZendeskHelpCenterService.6
            public Category extract(CategoryResponse categoryResponse) {
                return categoryResponse.getCategory();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getHelp(Locale locale, String str, String str2, String str3, int i, String str4, ZendeskCallback<HelpResponse> zendeskCallback) {
        this.helpCenterService.getHelp(this.localeConverter.toHelpCenterLocaleString(locale), str, str2, str3, i, str4, 1000, SortBy.CREATED_AT.getApiValue(), SortOrder.DESCENDING.getApiValue()).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    public void getSectionById(Long l, Locale locale, ZendeskCallback<Section> zendeskCallback) {
        this.helpCenterService.getSectionById(this.localeConverter.toHelpCenterLocaleString(locale), l).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<SectionResponse, Section>() { // from class: zendesk.support.ZendeskHelpCenterService.5
            public Section extract(SectionResponse sectionResponse) {
                return sectionResponse.getSection();
            }
        }));
    }

    public void getSectionsForCategory(Long l, Locale locale, ZendeskCallback<List<Section>> zendeskCallback) {
        this.helpCenterService.getSections(this.localeConverter.toHelpCenterLocaleString(locale), l, 1000).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback, new RetrofitZendeskCallbackAdapter.RequestExtractor<SectionsResponse, List<Section>>() { // from class: zendesk.support.ZendeskHelpCenterService.2
            public List<Section> extract(SectionsResponse sectionsResponse) {
                return sectionsResponse.getSections();
            }
        }));
    }

    public void getSuggestedArticles(String str, Locale locale, String str2, Long l, Long l2, ZendeskCallback<SuggestedArticleResponse> zendeskCallback) {
        this.helpCenterService.getSuggestedArticles(str, this.localeConverter.toHelpCenterLocaleString(locale), str2, l, l2).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    public void listArticles(String str, Locale locale, String str2, String str3, String str4, Integer num, Integer num2, ZendeskCallback<ArticlesListResponse> zendeskCallback) {
        this.helpCenterService.listArticles(this.localeConverter.toHelpCenterLocaleString(locale), str, str2, str3, str4, num, num2).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    @NonNull
    Article matchArticleWithUsers(@Nullable Article article, @NonNull List<User> list) {
        if (article == null) {
            return new Article();
        }
        Iterator<User> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            User next = it.next();
            if (next.getId() != null && next.getId().equals(article.getAuthorId())) {
                article.setAuthor(next);
                break;
            }
        }
        return article;
    }

    List<Article> matchArticlesWithUsers(List<User> list, List<Article> list2) {
        HashMap hashMap = new HashMap();
        for (User user : list) {
            hashMap.put(user.getId(), user);
        }
        ArrayList arrayList = new ArrayList();
        for (Article article : list2) {
            User user2 = (User) hashMap.get(article.getAuthorId());
            if (user2 != null) {
                article.setAuthor(user2);
            }
            arrayList.add(article);
        }
        return arrayList;
    }

    public void searchArticles(String str, Locale locale, String str2, String str3, String str4, String str5, Integer num, Integer num2, ZendeskCallback<ArticlesSearchResponse> zendeskCallback) {
        this.helpCenterService.searchArticles(str, this.localeConverter.toHelpCenterLocaleString(locale), str2, str3, str4, str5, num, num2).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    public void submitRecordArticleView(Long l, Locale locale, RecordArticleViewRequest recordArticleViewRequest, @Nullable ZendeskCallback<Void> zendeskCallback) {
        this.helpCenterService.submitRecordArticleView(l, this.localeConverter.toHelpCenterLocaleString(locale), recordArticleViewRequest).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }

    public void upvoteArticle(Long l, String str, ZendeskCallback<ArticleVoteResponse> zendeskCallback) {
        if (l == null) {
            Logger.m295e(LOG_TAG, "The article id was null, can not create up vote", new Object[0]);
            if (zendeskCallback != null) {
                zendeskCallback.onError(new ErrorResponseAdapter("The article id was null, can not create up vote"));
                return;
            }
            return;
        }
        this.helpCenterService.upvoteArticle(l, str).enqueue(new RetrofitZendeskCallbackAdapter(zendeskCallback));
    }
}
