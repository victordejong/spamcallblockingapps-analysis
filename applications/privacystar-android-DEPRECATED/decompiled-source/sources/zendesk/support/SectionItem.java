package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SectionItem.class */
public class SectionItem implements HelpItem {
    private List<ArticleItem> articles;
    @SerializedName("category_id")
    private Long categoryId;
    @SerializedName("name")
    private String name;
    @SerializedName("id")
    private Long sectionId;
    @SerializedName("article_count")
    private int totalArticlesCount;

    public void addArticle(@NonNull ArticleItem articleItem) {
        if (this.articles == null) {
            this.articles = new ArrayList();
        }
        this.articles.add(articleItem);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SectionItem sectionItem = (SectionItem) obj;
        if (this.sectionId != null) {
            if (!this.sectionId.equals(sectionItem.sectionId)) {
                return false;
            }
        } else if (sectionItem.sectionId != null) {
            return false;
        }
        if (this.categoryId != null) {
            z = this.categoryId.equals(sectionItem.categoryId);
        } else if (sectionItem.categoryId != null) {
            z = false;
        }
        return z;
    }

    @NonNull
    public List<HelpItem> getChildren() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.articles);
        if (this.articles.size() < this.totalArticlesCount) {
            arrayList.add(new SeeAllArticlesItem(this));
        }
        return arrayList;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getId() {
        return this.sectionId;
    }

    @Override // zendesk.support.HelpItem
    @NonNull
    public String getName() {
        return this.name == null ? "" : this.name;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getParentId() {
        return this.categoryId;
    }

    public int getTotalArticlesCount() {
        return this.totalArticlesCount;
    }

    @Override // zendesk.support.HelpItem
    public int getViewType() {
        return 2;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.sectionId != null ? this.sectionId.hashCode() : 0;
        if (this.categoryId != null) {
            i = this.categoryId.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
