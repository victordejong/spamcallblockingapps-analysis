package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.Pair;
import com.zendesk.service.ErrorResponse;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import zendesk.belvedere.Belvedere;
import zendesk.belvedere.MediaResult;
import zendesk.core.AuthenticationProvider;
import zendesk.core.Zendesk;
import zendesk.suas.Action;
import zendesk.support.CommentsResponse;
import zendesk.support.Request;
import zendesk.support.RequestProvider;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.SupportUiStorage;
import zendesk.support.UploadProvider;
import zendesk.support.request.ActionCreateComment;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionFactory.class */
public class ActionFactory {
    static final String ANDROID_ON_PAUSE = "ANDROID_ON_PAUSE";
    static final String ANDROID_ON_RESUME = "ANDROID_ON_RESUME";
    static final String ATTACHMENTS_DESELECTED = "ATTACHMENTS_DESELECTED";
    static final String ATTACHMENTS_SELECTED = "ATTACHMENTS_SELECTED";
    static final String ATTACHMENT_DOWNLOADED = "ATTACHMENT_DOWNLOADED";
    static final String CLEAR_ATTACHMENTS = "CLEAR_ATTACHMENTS";
    static final String CLEAR_MESSAGES = "CLEAR_MESSAGES";
    static final String CREATE_COMMENT = "CREATE_COMMENT";
    static final String CREATE_COMMENT_ERROR = "CREATE_COMMENT_ERROR";
    static final String CREATE_COMMENT_SUCCESS = "CREATE_COMMENT_SUCCESS";
    static final String CREATE_REQUEST = "CREATE_REQUEST";
    static final String CREATE_REQUEST_ERROR = "CREATE_REQUEST_ERROR";
    static final String CREATE_REQUEST_SUCCESS = "CREATE_REQUEST_SUCCESS";
    static final String DELETE_MESSAGE = "DELETE_MESSAGE";
    static final String DIALOG_DISMISSED = "DIALOG_DISMISSED";
    static final String LOAD_COMMENTS_FROM_CACHE = "LOAD_COMMENTS_FROM_CACHE";
    static final String LOAD_COMMENTS_FROM_CACHE_ERROR = "LOAD_COMMENTS_FROM_CACHE_ERROR";
    static final String LOAD_COMMENTS_FROM_CACHE_SUCCESS = "LOAD_COMMENTS_FROM_CACHE_SUCCESS";
    static final String LOAD_COMMENTS_INITIAL = "LOAD_COMMENT_INITIAL";
    static final String LOAD_COMMENTS_INITIAL_ERROR = "LOAD_COMMENTS_INITIAL_ERROR";
    static final String LOAD_COMMENTS_INITIAL_SUCCESS = "LOAD_COMMENTS_INITIAL_SUCCESS";
    static final String LOAD_COMMENTS_UPDATE = "LOAD_COMMENTS_UPDATE";
    static final String LOAD_COMMENTS_UPDATE_ERROR = "LOAD_COMMENTS_UPDATE_ERROR";
    static final String LOAD_COMMENTS_UPDATE_SUCCESS = "LOAD_COMMENTS_UPDATE_SUCCESS";
    static final String LOAD_REQUEST = "LOAD_REQUEST";
    static final String LOAD_REQUEST_ERROR = "LOAD_REQUEST_ERROR";
    static final String LOAD_REQUEST_SUCCESS = "LOAD_REQUEST_SUCCESS";
    static final String LOAD_SETTINGS = "LOAD_SETTINGS";
    static final String LOAD_SETTINGS_ERROR = "LOAD_SETTINGS_ERROR";
    static final String LOAD_SETTINGS_SUCCESS = "LOAD_SETTINGS_SUCCESS";
    static final String REQUEST_CLOSED = "REQUEST_CLOSED";
    static final String SHOW_RETRY_DIALOG = "SHOW_RETRY_DIALOG";
    static final String SKIP_ACTION = "SKIP_ACTION";
    static final String START_CONFIG = "START_CONFIG";
    private final AuthenticationProvider authProvider;
    private final Belvedere belvedere;
    private final Executor executorService;
    private final Executor mainThreadExecutor;
    private final RequestProvider requestProvider;
    private final String sdkVersion;
    private final SupportSettingsProvider settingsProvider;
    private final SupportBlipsProvider supportBlipsProvider;
    private final SupportUiStorage supportUiStorage;
    private final UploadProvider uploadProvider;

    /* renamed from: zendesk  reason: collision with root package name */
    private final Zendesk f1907zendesk;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionFactory$ErrorAction.class */
    public static class ErrorAction<E> extends Action<E> {
        private final ErrorResponse errorResponse;

        ErrorAction(@NonNull String str, @NonNull ErrorResponse errorResponse) {
            this(str, errorResponse, null);
        }

        ErrorAction(@NonNull String str, @NonNull ErrorResponse errorResponse, @Nullable E e) {
            super(str, e);
            this.errorResponse = errorResponse;
        }

        public ErrorResponse getErrorResponse() {
            return this.errorResponse;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionFactory(RequestProvider requestProvider, UploadProvider uploadProvider, SupportSettingsProvider supportSettingsProvider, Belvedere belvedere, SupportUiStorage supportUiStorage, Executor executor, String str, AuthenticationProvider authenticationProvider, Zendesk zendesk2, SupportBlipsProvider supportBlipsProvider, Executor executor2) {
        this.requestProvider = requestProvider;
        this.uploadProvider = uploadProvider;
        this.settingsProvider = supportSettingsProvider;
        this.belvedere = belvedere;
        this.supportUiStorage = supportUiStorage;
        this.executorService = executor;
        this.mainThreadExecutor = executor2;
        this.sdkVersion = str;
        this.authProvider = authenticationProvider;
        this.f1907zendesk = zendesk2;
        this.supportBlipsProvider = supportBlipsProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action androidOnPause() {
        return new Action(ANDROID_ON_PAUSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action androidOnResume() {
        return new Action(ANDROID_ON_RESUME);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action attachmentDownloaded(StateRequestAttachment stateRequestAttachment, MediaResult mediaResult) {
        return new Action(ATTACHMENT_DOWNLOADED, Pair.create(stateRequestAttachment, mediaResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action clearAttachments() {
        return new Action(CLEAR_ATTACHMENTS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action clearMessages() {
        return new Action(CLEAR_MESSAGES);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action createComment(StateMessage stateMessage) {
        return new Action(CREATE_COMMENT, stateMessage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action createCommentAsync(String str, List<StateRequestAttachment> list) {
        return AsyncMiddleware.createAction(new ActionCreateComment(this, this.requestProvider, new AttachmentUploadService(this.uploadProvider, this.belvedere, list), new StateMessage(str, list)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action createCommentError(ErrorResponse errorResponse, StateMessage stateMessage) {
        return new ErrorAction(CREATE_COMMENT_ERROR, errorResponse, stateMessage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action createCommentSuccess(ActionCreateComment.CreateCommentResult createCommentResult) {
        return new Action(CREATE_COMMENT_SUCCESS, createCommentResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action createRequestError(ErrorResponse errorResponse, StateMessage stateMessage) {
        return new ErrorAction(CREATE_REQUEST_ERROR, errorResponse, stateMessage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action createRequestSuccess(ActionCreateComment.CreateCommentResult createCommentResult) {
        return new Action(CREATE_REQUEST_SUCCESS, createCommentResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action deleteMessage(StateMessage stateMessage) {
        return new Action(DELETE_MESSAGE, stateMessage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action deselectAttachment(List<MediaResult> list) {
        return new Action(ATTACHMENTS_DESELECTED, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action initialLoadCommentsAsync() {
        return AsyncMiddleware.createAction(new ActionLoadComments(this, this.requestProvider, this.belvedere, true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action installStartConfigAsync(RequestUiConfig requestUiConfig) {
        return AsyncMiddleware.createAction(new ActionInstallConfiguration(this.supportUiStorage, requestUiConfig, this.executorService, this.mainThreadExecutor, this, this.supportBlipsProvider));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadComments(boolean z) {
        return z ? new Action(LOAD_COMMENTS_INITIAL) : new Action(LOAD_COMMENTS_UPDATE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadCommentsError(boolean z, ErrorResponse errorResponse) {
        return z ? new ErrorAction(LOAD_COMMENTS_INITIAL_ERROR, errorResponse) : new ErrorAction(LOAD_COMMENTS_UPDATE_ERROR, errorResponse);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadCommentsFromCache() {
        return new Action(LOAD_COMMENTS_FROM_CACHE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadCommentsFromCacheAsync() {
        return AsyncMiddleware.createAction(new ActionLoadCachedComments(this, this.supportUiStorage, this.belvedere, this.executorService, this.sdkVersion));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadCommentsFromCacheError() {
        return new Action(LOAD_COMMENTS_FROM_CACHE_ERROR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadCommentsFromCacheSuccess(StateConversation stateConversation) {
        return new Action(LOAD_COMMENTS_FROM_CACHE_SUCCESS, stateConversation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadCommentsSuccess(boolean z, CommentsResponse commentsResponse, Map<Long, MediaResult> map) {
        Pair pair = new Pair(commentsResponse, map);
        return z ? new Action(LOAD_COMMENTS_INITIAL_SUCCESS, pair) : new Action(LOAD_COMMENTS_UPDATE_SUCCESS, pair);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadRequest() {
        return new Action(LOAD_REQUEST);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadRequestAsync() {
        return AsyncMiddleware.createAction(new ActionLoadRequest(this, this.requestProvider));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadRequestError(ErrorResponse errorResponse) {
        return new ErrorAction(LOAD_REQUEST_ERROR, errorResponse);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadRequestSuccess(Request request) {
        return new Action(LOAD_REQUEST_SUCCESS, request);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadSettings() {
        return new Action(LOAD_SETTINGS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadSettingsAsync() {
        return AsyncMiddleware.createAction(new ActionLoadSettings(this, this.settingsProvider, this.authProvider));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadSettingsError(ErrorResponse errorResponse) {
        return new ErrorAction(LOAD_SETTINGS_ERROR, errorResponse);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action loadSettingsSuccess(StateSettings stateSettings) {
        return new Action(LOAD_SETTINGS_SUCCESS, stateSettings);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action onDialogDismissed() {
        return new Action(DIALOG_DISMISSED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action requestClosed() {
        return new Action(REQUEST_CLOSED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action resendCommentAsync(StateMessage stateMessage) {
        return AsyncMiddleware.createAction(new ActionCreateComment(this, this.requestProvider, new AttachmentUploadService(this.uploadProvider, this.belvedere, stateMessage.getAttachments()), stateMessage));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action selectAttachment(List<MediaResult> list) {
        return new Action(ATTACHMENTS_SELECTED, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action showRetryDialog(List<StateMessage> list) {
        return new Action(SHOW_RETRY_DIALOG, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action skipAction() {
        return new Action(SKIP_ACTION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action startConfig(RequestUiConfig requestUiConfig) {
        return new Action(START_CONFIG, requestUiConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action updateCommentsAsync() {
        return AsyncMiddleware.createAction(new ActionLoadComments(this, this.requestProvider, this.belvedere, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action updateNameEmailAsync(String str, String str2) {
        return AsyncMiddleware.createAction(new ActionUpdateNameEmail(str, str2, this.authProvider, this.f1907zendesk));
    }
}
