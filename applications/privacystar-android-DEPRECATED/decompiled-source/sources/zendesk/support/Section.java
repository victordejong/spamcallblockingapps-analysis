package zendesk.support;

import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Section.class */
public class Section implements Serializable {
    @SerializedName("article_count")
    private int articlesCount;
    private Long categoryId;
    private Date createdAt;
    private String description;
    private String htmlUrl;

    /* renamed from: id */
    private Long f1852id;
    private String locale;
    private String name;
    private boolean outdated;
    private int position;
    private String sorting;
    private String sourceLocale;
    private Date updatedAt;
    private String url;

    public int getArticlesCount() {
        return this.articlesCount;
    }

    @Nullable
    public Long getCategoryId() {
        return this.categoryId;
    }

    @Nullable
    public Date getCreatedAt() {
        return this.createdAt == null ? null : new Date(this.createdAt.getTime());
    }

    @Nullable
    public String getDescription() {
        return this.description;
    }

    @Nullable
    public String getHtmlUrl() {
        return this.htmlUrl;
    }

    @Nullable
    public Long getId() {
        return this.f1852id;
    }

    @Nullable
    public String getLocale() {
        return this.locale;
    }

    @Nullable
    public String getName() {
        return this.name;
    }

    public int getPosition() {
        return this.position;
    }

    @Nullable
    public String getSorting() {
        return this.sorting;
    }

    @Nullable
    public String getSourceLocale() {
        return this.sourceLocale;
    }

    public Date getUpdatedAt() {
        return this.updatedAt == null ? null : new Date(this.updatedAt.getTime());
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    public boolean isOutdated() {
        return this.outdated;
    }
}
