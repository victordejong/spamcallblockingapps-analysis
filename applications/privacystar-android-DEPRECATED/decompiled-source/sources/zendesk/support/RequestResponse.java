package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestResponse.class */
class RequestResponse {
    private List<User> lastCommentingAgents;
    private Request request;

    RequestResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<User> getLastCommentingAgents() {
        return CollectionUtils.copyOf(this.lastCommentingAgents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Request getRequest() {
        return this.request;
    }
}
