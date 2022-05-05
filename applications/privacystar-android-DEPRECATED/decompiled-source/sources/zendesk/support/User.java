package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/support/User.class */
public class User {
    private boolean agent;

    /* renamed from: id */
    private Long f1858id;
    private String name;
    private Long organizationId;
    private Attachment photo;
    private List<String> tags;
    private Map<String, String> userFields;

    public User() {
        this.f1858id = -1L;
        this.name = "";
        this.photo = null;
        this.agent = false;
        this.organizationId = -1L;
        this.tags = new ArrayList();
        this.userFields = new HashMap();
    }

    public User(Long l, String str, Attachment attachment, boolean z, Long l2, List<String> list, Map<String, String> map) {
        this.f1858id = l;
        this.name = str;
        this.photo = attachment;
        this.agent = z;
        this.organizationId = l2;
        this.tags = list;
        this.userFields = map;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        User user = (User) obj;
        if (this.agent != user.agent) {
            return false;
        }
        if (this.f1858id != null) {
            if (!this.f1858id.equals(user.f1858id)) {
                return false;
            }
        } else if (user.f1858id != null) {
            return false;
        }
        if (this.photo != null) {
            if (!this.photo.equals(user.photo)) {
                return false;
            }
        } else if (user.photo != null) {
            return false;
        }
        if (this.organizationId != null) {
            if (!this.organizationId.equals(user.organizationId)) {
                return false;
            }
        } else if (user.organizationId != null) {
            return false;
        }
        if (this.tags != null) {
            if (!this.tags.equals(user.tags)) {
                return false;
            }
        } else if (user.tags != null) {
            return false;
        }
        if (this.userFields != null) {
            z = this.userFields.equals(user.userFields);
        } else if (user.userFields != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public Long getId() {
        return this.f1858id;
    }

    @Nullable
    public String getName() {
        return this.name;
    }

    @Nullable
    public Long getOrganizationId() {
        return this.organizationId;
    }

    @Nullable
    public Attachment getPhoto() {
        return this.photo;
    }

    @NonNull
    public List<String> getTags() {
        return CollectionUtils.copyOf(this.tags);
    }

    @NonNull
    public Map<String, String> getUserFields() {
        return CollectionUtils.copyOf(this.userFields);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f1858id != null ? this.f1858id.hashCode() : 0;
        int hashCode2 = this.photo != null ? this.photo.hashCode() : 0;
        boolean z = this.agent;
        int hashCode3 = this.organizationId != null ? this.organizationId.hashCode() : 0;
        int hashCode4 = this.tags != null ? this.tags.hashCode() : 0;
        if (this.userFields != null) {
            i = this.userFields.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + (z ? 1 : 0)) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public boolean isAgent() {
        return this.agent;
    }
}
