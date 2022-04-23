package zendesk.support.guide;

import android.support.annotation.NonNull;
import java.io.Serializable;
import java.util.Date;
import zendesk.support.Article;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ArticleViewModel.class */
public class ArticleViewModel implements Serializable {
    private final String authorName;
    private final String body;
    private final Date createdAt;

    /* renamed from: id */
    private final long f1859id;
    private final String title;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArticleViewModel(@NonNull Article article) {
        this.f1859id = article.getId().longValue();
        this.title = article.getTitle();
        this.body = article.getBody();
        this.createdAt = article.getCreatedAt();
        this.authorName = article.getAuthor() == null ? null : article.getAuthor().getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAuthorName() {
        return this.authorName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getBody() {
        return this.body;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Date getCreatedAt() {
        return this.createdAt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1859id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getTitle() {
        return this.title;
    }
}
