package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/User.class */
public class User {

    /* renamed from: id */
    private final Long f1829id = -1L;
    private final String name = "";
    private final Attachment photo = null;
    private final boolean agent = false;
    private final List<String> tags = new ArrayList();
    private final Map<String, String> userFields = new HashMap();

    @Nullable
    public Long getId() {
        return this.f1829id;
    }

    @Nullable
    public String getName() {
        return this.name;
    }

    @Nullable
    public String getPhoto() {
        if (this.photo == null) {
            return null;
        }
        return this.photo.getContentUrl();
    }

    @NonNull
    public List<String> getTags() {
        return CollectionUtils.copyOf(this.tags);
    }

    @NonNull
    public Map<String, String> getUserFields() {
        return CollectionUtils.copyOf(this.userFields);
    }

    public boolean isAgent() {
        return this.agent;
    }
}
