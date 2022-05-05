package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterProvider.class */
public interface HelpCenterProvider {
    void deleteVote(@NonNull Long l, @Nullable ZendeskCallback<Void> zendeskCallback);

    void downvoteArticle(@NonNull Long l, @Nullable ZendeskCallback<ArticleVote> zendeskCallback);

    void getArticle(@NonNull Long l, @Nullable ZendeskCallback<Article> zendeskCallback);

    void getArticles(@NonNull Long l, @Nullable ZendeskCallback<List<Article>> zendeskCallback);

    void getArticles(@NonNull Long l, @Nullable String str, @Nullable ZendeskCallback<List<Article>> zendeskCallback);

    void getAttachments(@NonNull Long l, @NonNull AttachmentType attachmentType, @Nullable ZendeskCallback<List<HelpCenterAttachment>> zendeskCallback);

    void getCategories(@Nullable ZendeskCallback<List<Category>> zendeskCallback);

    void getCategory(@NonNull Long l, @Nullable ZendeskCallback<Category> zendeskCallback);

    void getHelp(@NonNull HelpRequest helpRequest, @Nullable ZendeskCallback<List<HelpItem>> zendeskCallback);

    void getSection(@NonNull Long l, @Nullable ZendeskCallback<Section> zendeskCallback);

    void getSections(@NonNull Long l, @Nullable ZendeskCallback<List<Section>> zendeskCallback);

    void getSuggestedArticles(@NonNull SuggestedArticleSearch suggestedArticleSearch, @Nullable ZendeskCallback<SuggestedArticleResponse> zendeskCallback);

    void listArticles(@NonNull ListArticleQuery listArticleQuery, @Nullable ZendeskCallback<List<SearchArticle>> zendeskCallback);

    void listArticlesFlat(@NonNull ListArticleQuery listArticleQuery, @Nullable ZendeskCallback<List<FlatArticle>> zendeskCallback);

    void searchArticles(@NonNull HelpCenterSearch helpCenterSearch, @Nullable ZendeskCallback<List<SearchArticle>> zendeskCallback);

    void submitRecordArticleView(@NonNull Article article, @NonNull Locale locale, @Nullable ZendeskCallback<Void> zendeskCallback);

    void upvoteArticle(@NonNull Long l, @Nullable ZendeskCallback<ArticleVote> zendeskCallback);
}
