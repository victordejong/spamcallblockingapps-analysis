package zendesk.support;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SearchArticle.class */
public class SearchArticle implements Serializable {
    private final Article mArticle;
    private final Category mCategory;
    private final Section mSection;

    public SearchArticle(Article article, Section section, Category category) {
        this.mArticle = article;
        this.mSection = section;
        this.mCategory = category;
    }

    public Article getArticle() {
        return this.mArticle;
    }

    public Category getCategory() {
        return this.mCategory;
    }

    public Section getSection() {
        return this.mSection;
    }
}
