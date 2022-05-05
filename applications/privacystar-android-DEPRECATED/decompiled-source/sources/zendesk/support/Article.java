package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.util.CollectionUtils;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Article.class */
public class Article implements Serializable {
    private static final String LOG_TAG = "Article";
    public static final int UNKNOWN_VOTE_COUNT = -1;
    private User author;
    private Long authorId;
    private String body;
    private boolean commentsDisabled;
    private Date createdAt;
    private boolean draft;
    private String htmlUrl;

    /* renamed from: id */
    private Long f1833id;
    private List<String> labelNames;
    private String locale;
    private boolean outdated;
    private Long sectionId;
    private String sourceLocale;
    private String title;
    private Date updatedAt;
    private String url;
    private Integer voteCount;
    private Integer voteSum;

    @Nullable
    public User getAuthor() {
        return this.author;
    }

    @Nullable
    public Long getAuthorId() {
        return this.authorId;
    }

    @Nullable
    public String getBody() {
        return this.body;
    }

    @Nullable
    public Date getCreatedAt() {
        if (this.createdAt == null) {
            return null;
        }
        return new Date(this.createdAt.getTime());
    }

    public int getDownvoteCount() {
        if (this.voteSum != null && this.voteCount != null) {
            return Math.abs(this.voteSum.intValue() - this.voteCount.intValue()) / 2;
        }
        Logger.m295e(LOG_TAG, "Cannot determine vote count because vote_sum and / or vote_count are null", new Object[0]);
        return -1;
    }

    @Nullable
    public String getHtmlUrl() {
        return this.htmlUrl;
    }

    public Long getId() {
        return this.f1833id;
    }

    @NonNull
    public List<String> getLabelNames() {
        return CollectionUtils.copyOf(this.labelNames);
    }

    @Nullable
    public String getLocale() {
        return this.locale;
    }

    @Nullable
    public Long getSectionId() {
        return this.sectionId;
    }

    @Nullable
    public String getSourceLocale() {
        return this.sourceLocale;
    }

    @Nullable
    public String getTitle() {
        return this.title;
    }

    @Nullable
    public Date getUpdatedAt() {
        if (this.updatedAt == null) {
            return null;
        }
        return new Date(this.updatedAt.getTime());
    }

    public int getUpvoteCount() {
        if (this.voteSum != null && this.voteCount != null) {
            return (this.voteSum.intValue() + this.voteCount.intValue()) / 2;
        }
        Logger.m295e(LOG_TAG, "Cannot determine vote count because vote_sum and / or vote_count are null", new Object[0]);
        return -1;
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    public int getVoteCount() {
        return this.voteCount == null ? 0 : this.voteCount.intValue();
    }

    public int getVoteSum() {
        return this.voteSum == null ? 0 : this.voteSum.intValue();
    }

    public boolean isCommentsDisabled() {
        return this.commentsDisabled;
    }

    public boolean isDraft() {
        return this.draft;
    }

    public boolean isOutdated() {
        return this.outdated;
    }

    public void setAuthor(User user) {
        this.author = user;
    }
}
