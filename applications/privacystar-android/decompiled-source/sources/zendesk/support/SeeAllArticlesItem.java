package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SeeAllArticlesItem.class */
public class SeeAllArticlesItem implements HelpItem {
    private boolean isLoading;
    private SectionItem section;

    public SeeAllArticlesItem(SectionItem sectionItem) {
        this.section = sectionItem;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SeeAllArticlesItem seeAllArticlesItem = (SeeAllArticlesItem) obj;
        if (this.section != null) {
            z = this.section.equals(seeAllArticlesItem.section);
        } else if (seeAllArticlesItem.section != null) {
            z = false;
        }
        return z;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getId() {
        return this.section.getId();
    }

    @Override // zendesk.support.HelpItem
    @NonNull
    public String getName() {
        return "";
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getParentId() {
        return this.section.getParentId();
    }

    public SectionItem getSection() {
        return this.section;
    }

    @Override // zendesk.support.HelpItem
    public int getViewType() {
        return 4;
    }

    public int hashCode() {
        return this.section != null ? this.section.hashCode() : 0;
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    public void setLoading(boolean z) {
        this.isLoading = z;
    }
}
