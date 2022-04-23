package zendesk.support.request;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.StringUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import zendesk.belvedere.Belvedere;
import zendesk.belvedere.MediaResult;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.support.Attachment;
import zendesk.support.CommentResponse;
import zendesk.support.CommentsResponse;
import zendesk.support.RequestProvider;
import zendesk.support.request.AsyncMiddleware;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionLoadComments.class */
public class ActionLoadComments implements AsyncMiddleware.AsyncAction {
    private final ActionFactory actionFactory;
    private final Belvedere belvedere;
    private final Handler handler;
    private final boolean initialLoad;
    private final RequestProvider requestProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionLoadComments$MinimumTimeCallback.class */
    private static abstract class MinimumTimeCallback<E> extends ZendeskCallback<E> {
        private final Handler handler;
        private final long minTime;
        private final TimeUnit minTimeUnit;
        private final long start = System.nanoTime();

        MinimumTimeCallback(Handler handler, long j, TimeUnit timeUnit) {
            this.handler = handler;
            this.minTime = j;
            this.minTimeUnit = timeUnit;
        }

        private long remainingTime() {
            long nanoTime = System.nanoTime() - this.start;
            long convert = TimeUnit.NANOSECONDS.convert(this.minTime, this.minTimeUnit);
            if (nanoTime < convert) {
                return TimeUnit.MILLISECONDS.convert(convert - nanoTime, TimeUnit.NANOSECONDS);
            }
            return 0L;
        }

        public abstract void onDelayedError(ErrorResponse errorResponse);

        public abstract void onDelayedSuccess(E e);

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(final ErrorResponse errorResponse) {
            this.handler.postDelayed(new Runnable() { // from class: zendesk.support.request.ActionLoadComments.MinimumTimeCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    MinimumTimeCallback.this.onDelayedError(errorResponse);
                }
            }, remainingTime());
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onSuccess(final E e) {
            this.handler.postDelayed(new Runnable() { // from class: zendesk.support.request.ActionLoadComments.MinimumTimeCallback.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    MinimumTimeCallback.this.onDelayedSuccess(e);
                }
            }, remainingTime());
        }
    }

    @VisibleForTesting
    ActionLoadComments(ActionFactory actionFactory, RequestProvider requestProvider, Belvedere belvedere, Handler handler, boolean z) {
        this.actionFactory = actionFactory;
        this.requestProvider = requestProvider;
        this.belvedere = belvedere;
        this.handler = handler;
        this.initialLoad = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionLoadComments(ActionFactory actionFactory, RequestProvider requestProvider, Belvedere belvedere, boolean z) {
        this(actionFactory, requestProvider, belvedere, new Handler(Looper.getMainLooper()), z);
    }

    @Nullable
    private StateMessage find2ndLastDeliveredMessage(List<StateMessage> list) {
        ListIterator<StateMessage> listIterator = list.listIterator(list.size());
        int i = 0;
        while (listIterator.hasPrevious()) {
            StateMessage previous = listIterator.previous();
            if (previous.getState().getStatus() == 2) {
                int i2 = i + 1;
                i = i2;
                if (i2 == 2) {
                    return previous;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"UseSparseArrays"})
    public Map<Long, MediaResult> findAttachments(String str, CommentsResponse commentsResponse) {
        List<CommentResponse> comments = commentsResponse.getComments();
        HashMap hashMap = new HashMap();
        for (CommentResponse commentResponse : comments) {
            for (Attachment attachment : commentResponse.getAttachments()) {
                MediaResult localFile = UtilsAttachment.getLocalFile(this.belvedere, str, attachment.getId().longValue(), attachment.getFileName());
                if (attachment.getSize().longValue() == localFile.getFile().length()) {
                    hashMap.put(attachment.getId(), localFile);
                }
            }
        }
        return hashMap;
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void actionQueued(Dispatcher dispatcher, GetState getState) {
        dispatcher.dispatch(this.actionFactory.loadComments(this.initialLoad));
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void execute(final Dispatcher dispatcher, GetState getState, final AsyncMiddleware.Callback callback) {
        final StateConversation fromState = StateConversation.fromState(getState.getState());
        if (!StringUtils.hasLength(fromState.getRemoteId())) {
            Logger.m298d("RequestActivity", "Skip loading comments. No remote id found.", new Object[0]);
            dispatcher.dispatch(this.actionFactory.skipAction());
            callback.done();
            return;
        }
        MinimumTimeCallback<CommentsResponse> minimumTimeCallback = new MinimumTimeCallback<CommentsResponse>(this.handler, 1L, TimeUnit.SECONDS) { // from class: zendesk.support.request.ActionLoadComments.1
            @Override // zendesk.support.request.ActionLoadComments.MinimumTimeCallback
            public void onDelayedError(ErrorResponse errorResponse) {
                Logger.m289w("RequestActivity", "Unable to load comments. Error: '%s'", errorResponse.getReason());
                dispatcher.dispatch(ActionLoadComments.this.actionFactory.loadCommentsError(ActionLoadComments.this.initialLoad, errorResponse));
                callback.done();
            }

            public void onDelayedSuccess(CommentsResponse commentsResponse) {
                HashSet hashSet = new HashSet(fromState.getMessageIdMapper().getRemoteIds());
                for (CommentResponse commentResponse : commentsResponse.getComments()) {
                    hashSet.add(commentResponse.getId());
                }
                ActionLoadComments.this.requestProvider.markRequestAsRead(fromState.getRemoteId(), hashSet.size());
                dispatcher.dispatch(ActionLoadComments.this.actionFactory.loadCommentsSuccess(ActionLoadComments.this.initialLoad, commentsResponse, ActionLoadComments.this.findAttachments(fromState.getLocalId(), commentsResponse)));
                callback.done();
            }
        };
        StateMessage find2ndLastDeliveredMessage = find2ndLastDeliveredMessage(fromState.getMessages());
        if (find2ndLastDeliveredMessage != null) {
            this.requestProvider.getCommentsSince(fromState.getRemoteId(), find2ndLastDeliveredMessage.getDate(), false, minimumTimeCallback);
        } else {
            this.requestProvider.getComments(fromState.getRemoteId(), minimumTimeCallback);
        }
    }
}
