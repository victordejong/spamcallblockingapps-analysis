package zendesk.core;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserFieldResponse.class */
class UserFieldResponse {
    private List<UserField> userFields;

    UserFieldResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<UserField> getUserFields() {
        return CollectionUtils.copyOf(this.userFields);
    }
}
