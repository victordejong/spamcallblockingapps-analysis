package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ArticleItem.class */
public class ArticleItem implements HelpItem {

    /* renamed from: id */
    private Long f1834id;
    private String name;
    @SerializedName("section_id")
    private Long sectionId;

    public ArticleItem(Long l, Long l2, String str) {
        this.f1834id = l;
        this.sectionId = l2;
        this.name = str;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ArticleItem articleItem = (ArticleItem) obj;
        if (this.f1834id != null) {
            if (!this.f1834id.equals(articleItem.f1834id)) {
                return false;
            }
        } else if (articleItem.f1834id != null) {
            return false;
        }
        if (this.sectionId != null) {
            z = this.sectionId.equals(articleItem.sectionId);
        } else if (articleItem.sectionId != null) {
            z = false;
        }
        return z;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getId() {
        return this.f1834id;
    }

    @Override // zendesk.support.HelpItem
    @NonNull
    public String getName() {
        return this.name == null ? "" : this.name;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getParentId() {
        return this.sectionId;
    }

    @Override // zendesk.support.HelpItem
    public int getViewType() {
        return 3;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f1834id != null ? this.f1834id.hashCode() : 0;
        if (this.sectionId != null) {
            i = this.sectionId.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
