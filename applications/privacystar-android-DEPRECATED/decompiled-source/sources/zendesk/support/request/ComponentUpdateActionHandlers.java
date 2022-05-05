package zendesk.support.request;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import zendesk.core.ActionHandlerRegistry;
import zendesk.suas.Listener;
import zendesk.support.RequestStatus;
import zendesk.support.request.AsyncMiddleware;
import zendesk.support.requestlist.RequestInfo;
import zendesk.support.requestlist.RequestInfoDataSource;
import zendesk.support.requestlist.RequestListActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentUpdateActionHandlers.class */
public class ComponentUpdateActionHandlers implements Listener<StateConversation> {
    private final ActionHandlerRegistry actionHandlerRegistry;
    private final Context context;
    private final RequestInfoDataSource.LocalDataSource localDataSource;
    private final AsyncMiddleware.Queue queue = new AsyncMiddleware.Queue();

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback.class */
    private class RefreshCallback extends ZendeskCallback<List<RequestInfo>> {
        private final AsyncMiddleware.Callback callback;

        private RefreshCallback(AsyncMiddleware.Callback callback) {
            this.callback = callback;
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            this.callback.done();
            if (!ComponentUpdateActionHandlers.this.queue.isRunning()) {
                RequestListActivity.refresh(ComponentUpdateActionHandlers.this.context, ComponentUpdateActionHandlers.this.actionHandlerRegistry);
            }
        }

        public void onSuccess(List<RequestInfo> list) {
            this.callback.done();
            if (!ComponentUpdateActionHandlers.this.queue.isRunning()) {
                RequestListActivity.refresh(ComponentUpdateActionHandlers.this.context, ComponentUpdateActionHandlers.this.actionHandlerRegistry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentUpdateActionHandlers(Context context, ActionHandlerRegistry actionHandlerRegistry, RequestInfoDataSource.LocalDataSource localDataSource) {
        this.context = context;
        this.actionHandlerRegistry = actionHandlerRegistry;
        this.localDataSource = localDataSource;
    }

    private List<RequestInfo.AgentInfo> getLast5AgentInfos(List<StateMessage> list, List<StateRequestUser> list2) {
        HashMap hashMap = new HashMap(list2.size());
        for (StateRequestUser stateRequestUser : list2) {
            long id = stateRequestUser.getId();
            if (stateRequestUser.isAgent() && !hashMap.containsKey(Long.valueOf(id))) {
                hashMap.put(Long.valueOf(id), stateRequestUser);
            }
        }
        ArrayList arrayList = new ArrayList();
        List<StateMessage> copyOf = CollectionUtils.copyOf(list);
        Collections.reverse(copyOf);
        for (StateMessage stateMessage : copyOf) {
            long userId = stateMessage.getUserId();
            if (hashMap.containsKey(Long.valueOf(userId))) {
                StateRequestUser stateRequestUser2 = (StateRequestUser) hashMap.get(Long.valueOf(userId));
                arrayList.add(new RequestInfo.AgentInfo(String.valueOf(userId), stateRequestUser2.getName(), stateRequestUser2.getAvatar()));
                if (arrayList.size() == 5) {
                    break;
                }
            }
        }
        Collections.reverse(arrayList);
        return arrayList;
    }

    private boolean hasPendingMessages(StateConversation stateConversation) {
        for (StateMessage stateMessage : stateConversation.getMessages()) {
            if (stateMessage.getState().getStatus() == 3) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private RequestInfo map(StateConversation stateConversation) {
        List<StateMessage> messages = stateConversation.getMessages();
        if (CollectionUtils.isEmpty(messages)) {
            return null;
        }
        String localId = stateConversation.getLocalId();
        String remoteId = stateConversation.getRemoteId();
        RequestStatus status = stateConversation.getStatus();
        StateMessage stateMessage = messages.get(0);
        StateMessage stateMessage2 = messages.get(stateConversation.getMessages().size() - 1);
        Date date = stateMessage2.getDate();
        List<RequestInfo.AgentInfo> last5AgentInfos = getLast5AgentInfos(stateConversation.getMessages(), stateConversation.getUsers());
        RequestInfo.MessageInfo messageInfo = new RequestInfo.MessageInfo(String.valueOf(stateMessage.getId()), stateMessage.getDate(), stateMessage.getBody());
        RequestInfo.MessageInfo messageInfo2 = new RequestInfo.MessageInfo(String.valueOf(stateMessage2.getId()), stateMessage2.getDate(), stateMessage2.getBody());
        HashSet hashSet = new HashSet();
        for (StateMessage stateMessage3 : messages) {
            long id = stateMessage3.getId();
            if (stateMessage3.getState().getStatus() == 1) {
                hashSet.add(String.valueOf(id));
            }
        }
        return new RequestInfo(localId, remoteId, status, false, date, last5AgentInfos, messageInfo, messageInfo2, hashSet);
    }

    public void update(@NonNull final StateConversation stateConversation) {
        final RequestInfo map = map(stateConversation);
        if (map == null) {
            this.queue.dispatch(new AsyncMiddleware.Item() { // from class: zendesk.support.request.ComponentUpdateActionHandlers.2
                @Override // zendesk.support.request.AsyncMiddleware.Item
                public void execute(AsyncMiddleware.Callback callback) {
                    ComponentUpdateActionHandlers.this.localDataSource.remove(stateConversation.getLocalId(), new RefreshCallback(callback));
                }
            });
        } else if (!hasPendingMessages(stateConversation)) {
            this.queue.dispatch(new AsyncMiddleware.Item() { // from class: zendesk.support.request.ComponentUpdateActionHandlers.1
                @Override // zendesk.support.request.AsyncMiddleware.Item
                public void execute(AsyncMiddleware.Callback callback) {
                    ComponentUpdateActionHandlers.this.localDataSource.insert(map, new RefreshCallback(callback));
                }
            });
        }
    }
}
