package zendesk.support.request;

import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.StringUtils;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.support.Request;
import zendesk.support.RequestProvider;
import zendesk.support.request.AsyncMiddleware;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionLoadRequest.class */
public class ActionLoadRequest implements AsyncMiddleware.AsyncAction {

    /* renamed from: af */
    private final ActionFactory f1866af;
    private final RequestProvider requestProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionLoadRequest(ActionFactory actionFactory, RequestProvider requestProvider) {
        this.f1866af = actionFactory;
        this.requestProvider = requestProvider;
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void actionQueued(Dispatcher dispatcher, GetState getState) {
        dispatcher.dispatch(this.f1866af.loadRequest());
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void execute(final Dispatcher dispatcher, GetState getState, final AsyncMiddleware.Callback callback) {
        StateConversation fromState = StateConversation.fromState(getState.getState());
        String remoteId = fromState.getRemoteId();
        if (!StringUtils.hasLength(remoteId)) {
            Logger.m298d("RequestActivity", "Skip loading request. No remote id found.", new Object[0]);
            dispatcher.dispatch(this.f1866af.skipAction());
            callback.done();
        } else if (fromState.getStatus() != null) {
            Logger.m298d("RequestActivity", "Skip loading request. Request status already available.", new Object[0]);
            dispatcher.dispatch(this.f1866af.skipAction());
            callback.done();
        } else {
            this.requestProvider.getRequest(remoteId, new ZendeskCallback<Request>() { // from class: zendesk.support.request.ActionLoadRequest.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    Logger.m289w("RequestActivity", "Error loading request. Error: '%s'", errorResponse.getReason());
                    dispatcher.dispatch(ActionLoadRequest.this.f1866af.loadRequestError(errorResponse));
                    callback.done();
                }

                public void onSuccess(Request request) {
                    dispatcher.dispatch(ActionLoadRequest.this.f1866af.loadRequestSuccess(request));
                    callback.done();
                }
            });
        }
    }
}
