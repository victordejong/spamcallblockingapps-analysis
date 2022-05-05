package zendesk.support;

import android.support.annotation.Nullable;
import java.util.Arrays;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ArticleVote.class */
public class ArticleVote {
    private Date createdAt;

    /* renamed from: id */
    private Long f1835id;
    private Long itemId;
    private String itemType;
    private Date updatedAt;
    private String url;
    private Long userId;
    private Integer value;

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ArticleVote articleVote = (ArticleVote) obj;
        if (this.f1835id != null) {
            if (!this.f1835id.equals(articleVote.f1835id)) {
                return false;
            }
        } else if (articleVote.f1835id != null) {
            return false;
        }
        if (this.url != null) {
            if (!this.url.equals(articleVote.url)) {
                return false;
            }
        } else if (articleVote.url != null) {
            return false;
        }
        if (this.userId != null) {
            if (!this.userId.equals(articleVote.userId)) {
                return false;
            }
        } else if (articleVote.userId != null) {
            return false;
        }
        if (this.value != null) {
            if (!this.value.equals(articleVote.value)) {
                return false;
            }
        } else if (articleVote.value != null) {
            return false;
        }
        if (this.itemId != null) {
            if (!this.itemId.equals(articleVote.itemId)) {
                return false;
            }
        } else if (articleVote.itemId != null) {
            return false;
        }
        if (this.itemType != null) {
            if (!this.itemType.equals(articleVote.itemType)) {
                return false;
            }
        } else if (articleVote.itemType != null) {
            return false;
        }
        if (this.createdAt != null) {
            if (!this.createdAt.equals(articleVote.createdAt)) {
                return false;
            }
        } else if (articleVote.createdAt != null) {
            return false;
        }
        if (this.updatedAt != null) {
            z = this.updatedAt.equals(articleVote.updatedAt);
        } else if (articleVote.updatedAt != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public Date getCreatedAt() {
        return this.createdAt == null ? null : new Date(this.createdAt.getTime());
    }

    @Nullable
    public Long getId() {
        return this.f1835id;
    }

    @Nullable
    public Long getItemId() {
        return this.itemId;
    }

    @Nullable
    public String getItemType() {
        return this.itemType;
    }

    @Nullable
    public Date getUpdatedAt() {
        return this.updatedAt == null ? null : new Date(this.updatedAt.getTime());
    }

    @Nullable
    public String getUrl() {
        return this.url;
    }

    @Nullable
    public Long getUserId() {
        return this.userId;
    }

    @Nullable
    public Integer getValue() {
        return this.value;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1835id, this.url, this.userId, this.value, this.itemId, this.itemType, this.createdAt, this.updatedAt});
    }
}
