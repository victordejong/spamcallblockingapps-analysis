package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ArticleResponse.class */
class ArticleResponse {
    private Article article;
    private List<User> users;

    ArticleResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Article getArticle() {
        return this.article;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<User> getUsers() {
        return CollectionUtils.copyOf(this.users);
    }
}
