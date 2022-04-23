package zendesk.support;

import android.support.annotation.Nullable;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Category.class */
public class Category implements Serializable {
    private Date createdAt;
    private String description;
    private String htmlUrl;

    /* renamed from: id */
    private Long f1837id;
    private String locale;
    private String name;
    private boolean outdated;
    private int position;
    private String sourceLocale;
    private Date updatedAt;
    private String url;

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
        return this.f1837id;
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
    public String getSourceLocale() {
        return this.sourceLocale;
    }

    @Nullable
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
