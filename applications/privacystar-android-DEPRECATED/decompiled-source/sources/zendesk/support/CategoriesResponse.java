package zendesk.support;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CategoriesResponse.class */
class CategoriesResponse {
    private List<Category> categories;

    CategoriesResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Category> getCategories() {
        return CollectionUtils.copyOf(this.categories);
    }
}
