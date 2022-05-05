package zendesk.support.requestlist;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.func.ZFunc1;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.Date;
import java.util.List;
import zendesk.support.request.RequestUiConfig;
import zendesk.support.requestlist.RequestInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListItem.class */
public class RequestListItem {
    private final RequestInfo requestInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestListItem(@NonNull RequestInfo requestInfo) {
        this.requestInfo = requestInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestUiConfig.Builder configure(RequestUiConfig.Builder builder) {
        return builder.withRequestInfo(this.requestInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String getAvatar() {
        return hasAgentReplied() ? this.requestInfo.getAgentInfos().get(0).getAvatar() : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String getFirstMessage() {
        return this.requestInfo.getFirstMessageInfo().getBody();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getItemId() {
        String localId = this.requestInfo.getLocalId();
        return StringUtils.hasLength(localId) ? localId.hashCode() : this.requestInfo.getRemoteId().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<String> getLastCommentingAgentNames() {
        return CollectionUtils.map(this.requestInfo.getAgentInfos(), new ZFunc1<RequestInfo.AgentInfo, String>() { // from class: zendesk.support.requestlist.RequestListItem.1
            public String apply(RequestInfo.AgentInfo agentInfo) {
                return agentInfo.getName();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String getLastMessage() {
        return this.requestInfo.getLastMessageInfo().getBody();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Date getLastUpdated() {
        return this.requestInfo.getLastUpdated();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasAgentReplied() {
        return CollectionUtils.isNotEmpty(this.requestInfo.getAgentInfos());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isClosed() {
        return this.requestInfo.isClosed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFailed() {
        return CollectionUtils.isNotEmpty(this.requestInfo.getFailedMessageIds());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUnread() {
        return this.requestInfo.isUnread();
    }
}
