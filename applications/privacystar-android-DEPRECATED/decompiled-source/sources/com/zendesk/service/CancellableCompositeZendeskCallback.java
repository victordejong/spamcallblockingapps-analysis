package com.zendesk.service;

import java.util.LinkedHashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/CancellableCompositeZendeskCallback.class */
public class CancellableCompositeZendeskCallback<T> extends ZendeskCallback<T> {
    private Set<SafeZendeskCallback<T>> callbacks = new LinkedHashSet();

    public void add(SafeZendeskCallback<T> safeZendeskCallback) {
        this.callbacks.add(safeZendeskCallback);
    }

    public void cancel() {
        for (SafeZendeskCallback<T> safeZendeskCallback : this.callbacks) {
            safeZendeskCallback.cancel();
        }
        this.callbacks.clear();
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onError(ErrorResponse errorResponse) {
        for (SafeZendeskCallback<T> safeZendeskCallback : this.callbacks) {
            safeZendeskCallback.onError(errorResponse);
        }
        this.callbacks.clear();
    }

    @Override // com.zendesk.service.ZendeskCallback
    public void onSuccess(T t) {
        for (SafeZendeskCallback<T> safeZendeskCallback : this.callbacks) {
            safeZendeskCallback.onSuccess(t);
        }
        this.callbacks.clear();
    }

    public void remove(SafeZendeskCallback<T> safeZendeskCallback) {
        this.callbacks.remove(safeZendeskCallback);
    }
}
