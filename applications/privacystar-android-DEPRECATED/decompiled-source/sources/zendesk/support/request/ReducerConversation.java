package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.p001v4.util.Pair;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
import zendesk.support.CommentResponse;
import zendesk.support.CommentsResponse;
import zendesk.support.Request;
import zendesk.support.RequestStatus;
import zendesk.support.request.ActionCreateComment;
import zendesk.support.request.StateConversation;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerConversation.class */
class ReducerConversation extends Reducer<StateConversation> {
    @Override // zendesk.suas.Reducer
    @NonNull
    public StateConversation getInitialState() {
        return new StateConversation();
    }

    @Override // zendesk.suas.Reducer
    public /* bridge */ /* synthetic */ StateConversation reduce(@NonNull StateConversation stateConversation, @NonNull Action action) {
        return reduce2(stateConversation, (Action<?>) action);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    public StateConversation reduce2(@NonNull StateConversation stateConversation, @NonNull Action<?> action) {
        char c;
        String actionType = action.getActionType();
        switch (actionType.hashCode()) {
            case -1720252100:
                if (actionType.equals("REQUEST_CLOSED")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1679314784:
                if (actionType.equals("CREATE_COMMENT_SUCCESS")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1319777819:
                if (actionType.equals("CREATE_COMMENT_ERROR")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1193398337:
                if (actionType.equals("LOAD_COMMENTS_UPDATE_SUCCESS")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1049833133:
                if (actionType.equals("DELETE_MESSAGE")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -903772976:
                if (actionType.equals("CREATE_REQUEST_SUCCESS")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -16010570:
                if (actionType.equals("LOAD_COMMENTS_INITIAL_SUCCESS")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 207206879:
                if (actionType.equals("START_CONFIG")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 397298627:
                if (actionType.equals("ATTACHMENT_DOWNLOADED")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 619382558:
                if (actionType.equals("CLEAR_MESSAGES")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 962828474:
                if (actionType.equals("LOAD_REQUEST_SUCCESS")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 1532422677:
                if (actionType.equals("CREATE_REQUEST_ERROR")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1712998531:
                if (actionType.equals("LOAD_COMMENTS_FROM_CACHE_SUCCESS")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1921186300:
                if (actionType.equals("CREATE_COMMENT")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2066480684:
                if (actionType.equals("CREATE_REQUEST")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                RequestUiConfig requestUiConfig = (RequestUiConfig) action.getData();
                return stateConversation.newBuilder().setLocalId(requestUiConfig.getLocalRequestId()).setRemoteId(requestUiConfig.getRequestId()).setStatus(requestUiConfig.getRequestStatus()).setHasAgentReplies(requestUiConfig.hasAgentReplies()).build();
            case 1:
            case 2:
                Pair pair = (Pair) action.getData();
                List<CommentResponse> comments = ((CommentsResponse) pair.first).getComments();
                Collections.reverse(comments);
                Pair<Map<Long, StateRequestAttachment>, StateIdMapper> convert = StateRequestAttachment.convert(comments, (Map) pair.second, stateConversation.getAttachmentIdMapper());
                Pair<List<StateMessage>, StateIdMapper> convert2 = StateMessage.convert(comments, stateConversation.getMessageIdMapper(), convert.first);
                return stateConversation.newBuilder().setMessages(StateMessageMergeUtil.mergeMessages(stateConversation.getMessages(), convert2.first)).setAttachmentIdMapper(convert.second.copy()).setMessageIdMapper(convert2.second.copy()).setUsers(StateMessageMergeUtil.mergeUsers(stateConversation.getUsers(), StateRequestUser.convert(((CommentsResponse) pair.first).getUsers()))).build();
            case 3:
                StateConversation stateConversation2 = (StateConversation) action.getData();
                return stateConversation.newBuilder().setMessages(stateConversation2.getMessages()).setAttachmentIdMapper(stateConversation2.getAttachmentIdMapper()).setMessageIdMapper(stateConversation2.getMessageIdMapper()).setUsers(stateConversation2.getUsers()).build();
            case 4:
            case 5:
                StateConversation.Builder newBuilder = stateConversation.newBuilder();
                StateMessage stateMessage = (StateMessage) action.getData();
                List<StateMessage> copyOf = CollectionUtils.copyOf(stateConversation.getMessages());
                copyOf.add(stateMessage);
                return newBuilder.setMessages(copyOf).build();
            case 6:
            case 7:
                return stateConversation.newBuilder().setMessages(StateMessageMergeUtil.mergeMessages(stateConversation.getMessages(), Collections.singletonList((StateMessage) action.getData()))).build();
            case '\b':
            case '\t':
                ActionCreateComment.CreateCommentResult createCommentResult = (ActionCreateComment.CreateCommentResult) action.getData();
                StateIdMapper addIdMapping = stateConversation.getMessageIdMapper().addIdMapping(Long.valueOf(createCommentResult.getCommentRemoteId()), Long.valueOf(createCommentResult.getMessage().getId()));
                StateIdMapper attachmentIdMapper = stateConversation.getAttachmentIdMapper();
                for (Map.Entry<Long, Long> entry : createCommentResult.getLocalToRemoteAttachments().getLocalToRemoteIdMap().entrySet()) {
                    attachmentIdMapper = attachmentIdMapper.addIdMapping(entry.getValue(), entry.getKey());
                }
                return stateConversation.newBuilder().setRemoteId(createCommentResult.getRequestId()).setMessageIdMapper(addIdMapping).setAttachmentIdMapper(attachmentIdMapper).setMessages(StateMessageMergeUtil.mergeMessages(stateConversation.getMessages(), Collections.singletonList(createCommentResult.getMessage()))).build();
            case '\n':
                return stateConversation.newBuilder().setMessages(StateMessageMergeUtil.removeMessageById(((StateMessage) action.getData()).getId(), stateConversation.getMessages())).build();
            case 11:
                Pair pair2 = (Pair) action.getData();
                StateRequestAttachment stateRequestAttachment = (StateRequestAttachment) pair2.first;
                MediaResult mediaResult = (MediaResult) pair2.second;
                StateRequestAttachment build = stateRequestAttachment.newBuilder().setLocalFile(mediaResult.getFile()).setLocalUri(mediaResult.getUri().toString()).build();
                List<StateMessage> messages = stateConversation.getMessages();
                ArrayList arrayList = new ArrayList(messages.size());
                for (StateMessage stateMessage2 : messages) {
                    arrayList.add(stateMessage2.withUpdatedAttachment(build));
                }
                return stateConversation.newBuilder().setMessages(arrayList).build();
            case '\f':
                Request request = (Request) action.getData();
                return stateConversation.newBuilder().setStatus(request.getStatus()).setHasAgentReplies(CollectionUtils.isNotEmpty(request.getLastCommentingAgents())).build();
            case '\r':
                return stateConversation.newBuilder().setStatus(RequestStatus.Closed).build();
            case 14:
                return stateConversation.newBuilder().setMessages(Collections.emptyList()).setMessageIdMapper(new StateIdMapper()).setAttachmentIdMapper(new StateIdMapper()).build();
            default:
                return null;
        }
    }
}
