package zendesk.support.request;

import com.zendesk.util.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import zendesk.support.Attachment;
import zendesk.support.User;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateRequestUser.class */
class StateRequestUser implements Serializable {
    private final String avatar;

    /* renamed from: id */
    private final long f1899id;
    private final boolean isAgent;
    private final String name;

    StateRequestUser(String str, String str2, boolean z, long j) {
        this.name = str;
        this.avatar = str2;
        this.isAgent = z;
        this.f1899id = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean containsAgent(List<StateRequestUser> list) {
        for (StateRequestUser stateRequestUser : list) {
            if (stateRequestUser.isAgent()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<StateRequestUser> convert(List<User> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (User user : list) {
            if (user.getId() != null) {
                Attachment photo = user.getPhoto();
                arrayList.add(new StateRequestUser(user.getName(), (photo == null || !StringUtils.hasLength(photo.getContentUrl())) ? "" : photo.getContentUrl(), user.isAgent(), user.getId().longValue()));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAvatar() {
        return this.avatar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getId() {
        return this.f1899id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getName() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAgent() {
        return this.isAgent;
    }
}
