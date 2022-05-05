package zendesk.support;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestsResponse.class */
class RequestsResponse extends ResponseWrapper {
    private List<User> lastCommentingAgents;
    private List<Request> requests;

    RequestsResponse() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<User> getLastCommentingAgents() {
        return CollectionUtils.copyOf(this.lastCommentingAgents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Request> getRequests() {
        return CollectionUtils.copyOf(this.requests);
    }
}
