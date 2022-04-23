package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CategoryItem.class */
public class CategoryItem implements HelpItem {
    private boolean expanded = true;
    @SerializedName("id")

    /* renamed from: id */
    private Long f1838id;
    @SerializedName("name")
    private String name;
    @SerializedName("section_count")
    private int sectionCount;
    private List<SectionItem> sections;

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CategoryItem categoryItem = (CategoryItem) obj;
        if (this.f1838id != null) {
            z = this.f1838id.equals(categoryItem.f1838id);
        } else if (categoryItem.f1838id != null) {
            z = false;
        }
        return z;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getId() {
        return this.f1838id;
    }

    @Override // zendesk.support.HelpItem
    @NonNull
    public String getName() {
        return this.name == null ? "" : this.name;
    }

    @Override // zendesk.support.HelpItem
    @Nullable
    public Long getParentId() {
        return null;
    }

    public List<SectionItem> getSections() {
        return CollectionUtils.copyOf(this.sections);
    }

    @Override // zendesk.support.HelpItem
    public int getViewType() {
        return 1;
    }

    public int hashCode() {
        return this.f1838id != null ? this.f1838id.hashCode() : 0;
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public boolean setExpanded(boolean z) {
        this.expanded = z;
        return this.expanded;
    }

    public void setSections(List<SectionItem> list) {
        this.sections = CollectionUtils.copyOf(list);
    }
}
