package zendesk.support.request;

import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.StringUtils;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import okhttp3.ResponseBody;
import zendesk.belvedere.Belvedere;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Dispatcher;
import zendesk.suas.Listener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent.class */
public class AttachmentDownloaderComponent implements Listener<StateConversation> {
    private final ActionFactory actionFactory;
    private final AttachmentDownloader attachmentDownloader;
    private final Dispatcher dispatcher;
    private final AttachmentDownloaderSelector selector = new AttachmentDownloaderSelector();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader.class */
    public static class AttachmentDownloader {
        private final AttachmentDownloadService attachmentIo;
        private final Belvedere belvedere;
        private final Set<String> downloadingHistory = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback.class */
        public class CacheCallback extends ZendeskCallback<MediaResult> {
            private final ZendeskCallback<MediaResult> callback;
            private final StateRequestAttachment requestAttachment;

            CacheCallback(StateRequestAttachment stateRequestAttachment, ZendeskCallback<MediaResult> zendeskCallback) {
                this.requestAttachment = stateRequestAttachment;
                this.callback = zendeskCallback;
            }

            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                AttachmentDownloader.this.handleError(this.requestAttachment.getUrl(), errorResponse, this.callback);
            }

            public void onSuccess(MediaResult mediaResult) {
                this.callback.onSuccess(mediaResult);
                AttachmentDownloader.this.downloadingHistory.remove(this.requestAttachment.getUrl());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback.class */
        public class HttpCallback extends ZendeskCallback<ResponseBody> {
            private final ZendeskCallback<MediaResult> callback;
            private final Request request;
            private final StateRequestAttachment requestAttachment;

            HttpCallback(Request request, StateRequestAttachment stateRequestAttachment, ZendeskCallback<MediaResult> zendeskCallback) {
                this.request = request;
                this.requestAttachment = stateRequestAttachment;
                this.callback = zendeskCallback;
            }

            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                AttachmentDownloader.this.handleError(this.requestAttachment.getUrl(), errorResponse, this.callback);
            }

            public void onSuccess(ResponseBody responseBody) {
                AttachmentDownloader.this.attachmentIo.storeAttachment(responseBody, UtilsAttachment.getLocalFile(AttachmentDownloader.this.belvedere, this.request.getRequestId(), this.request.getRemoteAttachmentId(), this.requestAttachment.getName()), new CacheCallback(this.requestAttachment, this.callback));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request.class */
        public static class Request {
            private final long remoteAttachmentId;
            private final StateRequestAttachment requestAttachment;
            private final String requestId;

            Request(String str, long j, StateRequestAttachment stateRequestAttachment) {
                this.requestId = str;
                this.remoteAttachmentId = j;
                this.requestAttachment = stateRequestAttachment;
            }

            long getRemoteAttachmentId() {
                return this.remoteAttachmentId;
            }

            StateRequestAttachment getRequestAttachment() {
                return this.requestAttachment;
            }

            String getRequestId() {
                return this.requestId;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AttachmentDownloader(Belvedere belvedere, AttachmentDownloadService attachmentDownloadService) {
            this.belvedere = belvedere;
            this.attachmentIo = attachmentDownloadService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleError(String str, ErrorResponse errorResponse, ZendeskCallback zendeskCallback) {
            this.downloadingHistory.remove(str);
            if (zendeskCallback != null) {
                zendeskCallback.onError(errorResponse);
            }
        }

        void download(@NonNull Request request, @NonNull ZendeskCallback<MediaResult> zendeskCallback) {
            StateRequestAttachment requestAttachment = request.getRequestAttachment();
            String url = requestAttachment.getUrl();
            if (!this.downloadingHistory.contains(url)) {
                this.downloadingHistory.add(url);
                this.attachmentIo.downloadAttachment(url, new HttpCallback(request, requestAttachment, zendeskCallback));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloaderSelector.class */
    public static class AttachmentDownloaderSelector {
        AttachmentDownloaderSelector() {
        }

        public List<AttachmentDownloader.Request> selectData(StateConversation stateConversation) {
            StateIdMapper attachmentIdMapper = stateConversation.getAttachmentIdMapper();
            String localId = stateConversation.getLocalId();
            List<StateMessage> messages = stateConversation.getMessages();
            LinkedList linkedList = new LinkedList();
            for (StateMessage stateMessage : messages) {
                for (StateRequestAttachment stateRequestAttachment : stateMessage.getAttachments()) {
                    long id = stateRequestAttachment.getId();
                    boolean z = stateRequestAttachment.getLocalFile() != null;
                    boolean hasRemoteId = attachmentIdMapper.hasRemoteId(Long.valueOf(id));
                    boolean hasLength = StringUtils.hasLength(stateRequestAttachment.getUrl());
                    if (!z && hasRemoteId && hasLength) {
                        linkedList.add(new AttachmentDownloader.Request(localId, attachmentIdMapper.getRemoteId(Long.valueOf(id)).longValue(), stateRequestAttachment));
                    }
                }
            }
            return linkedList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentDownloaderComponent$DownloadCallback.class */
    public class DownloadCallback extends ZendeskCallback<MediaResult> {
        private final StateRequestAttachment requestAttachment;

        DownloadCallback(StateRequestAttachment stateRequestAttachment) {
            this.requestAttachment = stateRequestAttachment;
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            Logger.m298d("RequestActivity", "Unable to download attachment. Error: %s", errorResponse.getReason());
        }

        public void onSuccess(MediaResult mediaResult) {
            AttachmentDownloaderComponent.this.dispatcher.dispatch(AttachmentDownloaderComponent.this.actionFactory.attachmentDownloaded(this.requestAttachment, mediaResult));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AttachmentDownloaderComponent(@NonNull Dispatcher dispatcher, @NonNull ActionFactory actionFactory, @NonNull AttachmentDownloader attachmentDownloader) {
        this.dispatcher = dispatcher;
        this.actionFactory = actionFactory;
        this.attachmentDownloader = attachmentDownloader;
    }

    public void update(@NonNull StateConversation stateConversation) {
        for (AttachmentDownloader.Request request : this.selector.selectData(stateConversation)) {
            this.attachmentDownloader.download(request, new DownloadCallback(request.getRequestAttachment()));
        }
    }
}
