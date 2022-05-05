package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ArticlesSearchResponse.class */
class ArticlesSearchResponse implements ArticlesResponse {
    private List<Category> categories;
    private String nextPage;
    private String previousPage;
    private List<Article> results;
    private List<Section> sections;
    private List<User> users;

    ArticlesSearchResponse() {
    }

    @Override // zendesk.support.ArticlesResponse
    @NonNull
    public List<Article> getArticles() {
        return CollectionUtils.copyOf(this.results);
    }

    @Override // zendesk.support.ArticlesResponse
    @NonNull
    public List<Category> getCategories() {
        return CollectionUtils.copyOf(this.categories);
    }

    @Nullable
    public String getNextPage() {
        return this.nextPage;
    }

    @Nullable
    public String getPreviousPage() {
        return this.previousPage;
    }

    @Override // zendesk.support.ArticlesResponse
    @NonNull
    public List<Section> getSections() {
        return CollectionUtils.copyOf(this.sections);
    }

    @Override // zendesk.support.ArticlesResponse
    @NonNull
    public List<User> getUsers() {
        return CollectionUtils.copyOf(this.users);
    }
}
