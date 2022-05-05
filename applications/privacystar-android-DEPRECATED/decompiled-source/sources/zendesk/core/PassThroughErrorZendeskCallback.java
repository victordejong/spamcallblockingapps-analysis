package zendesk.core;

import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PassThroughErrorZendeskCallback.class */
abstract class PassThroughErrorZendeskCallback<E> extends ZendeskCallback<E> {
    private final ZendeskCallback callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PassThroughErrorZendeskCallback(ZendeskCallback zendeskCallback) {
        this.callback = zendeskCallback;
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onError(ErrorResponse errorResponse) {
        if (this.callback != null) {
            this.callback.onError(errorResponse);
        }
    }

    @Override // com.zendesk.service.ZendeskCallback
    public abstract void onSuccess(E e);
}
