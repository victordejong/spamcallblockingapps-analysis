package zendesk.support.request;

import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import zendesk.belvedere.Belvedere;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Action;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.support.SupportUiStorage;
import zendesk.support.request.AsyncMiddleware;
import zendesk.support.request.ComponentPersistence;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionLoadCachedComments.class */
class ActionLoadCachedComments implements AsyncMiddleware.AsyncAction {

    /* renamed from: af */
    private final ActionFactory f1863af;
    private final Belvedere belvedere;
    private final Executor executorService;
    private final String sdkVersion;
    private final SupportUiStorage supportUiStorage;

    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionLoadCachedComments$LoadComments.class */
    static class LoadComments implements Runnable {

        /* renamed from: af */
        private final ActionFactory f1864af;
        private final Belvedere belvedere;
        private final AsyncMiddleware.Callback callback;
        private final Dispatcher dispatcher;

        /* renamed from: id */
        private final String f1865id;
        private final String sdkVersion;
        private final SupportUiStorage supportUiStorage;

        LoadComments(String str, Dispatcher dispatcher, AsyncMiddleware.Callback callback, SupportUiStorage supportUiStorage, ActionFactory actionFactory, Belvedere belvedere, String str2) {
            this.f1865id = str;
            this.dispatcher = dispatcher;
            this.callback = callback;
            this.supportUiStorage = supportUiStorage;
            this.f1864af = actionFactory;
            this.belvedere = belvedere;
            this.sdkVersion = str2;
        }

        private StateMessage findLocalAttachmentForMessage(StateMessage stateMessage, StateIdMapper stateIdMapper, Belvedere belvedere, String str) {
            List<StateRequestAttachment> attachments = stateMessage.getAttachments();
            if (!CollectionUtils.isNotEmpty(attachments)) {
                return stateMessage;
            }
            ArrayList arrayList = new ArrayList(stateMessage.getAttachments().size());
            for (StateRequestAttachment stateRequestAttachment : attachments) {
                if (stateIdMapper.hasRemoteId(Long.valueOf(stateRequestAttachment.getId()))) {
                    arrayList.add(updateAttachment(stateRequestAttachment, UtilsAttachment.getLocalFile(belvedere, str, stateIdMapper.getRemoteId(Long.valueOf(stateRequestAttachment.getId())).longValue(), stateRequestAttachment.getName())));
                } else {
                    arrayList.add(stateRequestAttachment);
                }
            }
            return stateMessage.withAttachments(arrayList);
        }

        private StateRequestAttachment updateAttachment(StateRequestAttachment stateRequestAttachment, MediaResult mediaResult) {
            String str;
            File file = null;
            if (stateRequestAttachment.getSize() == mediaResult.getFile().length()) {
                file = mediaResult.getFile();
                str = mediaResult.getUri().toString();
            } else {
                str = null;
            }
            return stateRequestAttachment.newBuilder().setLocalFile(file).setLocalUri(str).build();
        }

        @VisibleForTesting
        String getId() {
            return this.f1865id;
        }

        StateConversation resolveAttachments(StateConversation stateConversation) {
            ArrayList arrayList = new ArrayList(stateConversation.getMessages().size());
            for (StateMessage stateMessage : stateConversation.getMessages()) {
                arrayList.add(findLocalAttachmentForMessage(stateMessage, stateConversation.getAttachmentIdMapper(), this.belvedere, stateConversation.getLocalId()));
            }
            return stateConversation.newBuilder().setMessages(arrayList).build();
        }

        @Override // java.lang.Runnable
        public void run() {
            Action action;
            ComponentPersistence.RequestPersistenceModel requestPersistenceModel = (ComponentPersistence.RequestPersistenceModel) this.supportUiStorage.read(this.f1865id, ComponentPersistence.RequestPersistenceModel.class);
            if (requestPersistenceModel == null || requestPersistenceModel.getConversation() == null) {
                Logger.m298d("RequestActivity", "Unable to loaded request from disk", new Object[0]);
                action = this.f1864af.loadCommentsFromCacheError();
            } else if (this.sdkVersion.equals(requestPersistenceModel.getVersion())) {
                Logger.m298d("RequestActivity", "Successfully loaded request from disk", new Object[0]);
                action = this.f1864af.loadCommentsFromCacheSuccess(resolveAttachments(requestPersistenceModel.getConversation()));
            } else {
                Logger.m298d("RequestActivity", "Cached version doesn't match with SDK version. Ignoring cached data. [%s, %s]", requestPersistenceModel.getVersion(), "2.2.1");
                action = this.f1864af.loadCommentsFromCacheError();
            }
            this.dispatcher.dispatch(action);
            this.callback.done();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionLoadCachedComments(ActionFactory actionFactory, SupportUiStorage supportUiStorage, Belvedere belvedere, Executor executor, String str) {
        this.f1863af = actionFactory;
        this.supportUiStorage = supportUiStorage;
        this.belvedere = belvedere;
        this.executorService = executor;
        this.sdkVersion = str;
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void actionQueued(Dispatcher dispatcher, GetState getState) {
        dispatcher.dispatch(this.f1863af.loadCommentsFromCache());
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void execute(Dispatcher dispatcher, GetState getState, AsyncMiddleware.Callback callback) {
        StateConversation fromState = StateConversation.fromState(getState.getState());
        if (StringUtils.hasLength(fromState.getLocalId())) {
            this.executorService.execute(new LoadComments(fromState.getLocalId(), dispatcher, callback, this.supportUiStorage, this.f1863af, this.belvedere, this.sdkVersion));
            return;
        }
        dispatcher.dispatch(this.f1863af.skipAction());
        callback.done();
    }
}
