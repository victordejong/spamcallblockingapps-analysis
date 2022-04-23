package zendesk.support;

import androidx.annotation.NonNull;
import java.util.List;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestsResponse.class */
public class RequestsResponse extends ResponseWrapper {
    public List<User> lastCommentingAgents;
    public List<Request> requests;

    @NonNull
    public List<User> getLastCommentingAgents() {
        return C10858a.m10404a((List) this.lastCommentingAgents);
    }

    @NonNull
    public List<Request> getRequests() {
        return C10858a.m10404a((List) this.requests);
    }
}
