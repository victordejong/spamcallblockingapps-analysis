package com.zendesk.service;

import com.zendesk.logger.Logger;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/SafeZendeskCallback.class */
public class SafeZendeskCallback<T> extends ZendeskCallback<T> {
    private static final String LOG_TAG = "SafeZendeskCallback";
    private final ZendeskCallback<T> callback;
    private boolean cancelled = false;

    public SafeZendeskCallback(ZendeskCallback<T> zendeskCallback) {
        this.callback = zendeskCallback;
    }

    public static <T> SafeZendeskCallback<T> from(ZendeskCallback<T> zendeskCallback) {
        return new SafeZendeskCallback<>(zendeskCallback);
    }

    public void cancel() {
        this.cancelled = true;
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onError(ErrorResponse errorResponse) {
        if (this.cancelled || this.callback == null) {
            Logger.m297e(LOG_TAG, errorResponse);
        } else {
            this.callback.onError(errorResponse);
        }
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onSuccess(T t) {
        if (this.cancelled || this.callback == null) {
            Logger.m289w(LOG_TAG, "Operation was a success but callback is null or was cancelled", new Object[0]);
        } else {
            this.callback.onSuccess(t);
        }
    }
}
