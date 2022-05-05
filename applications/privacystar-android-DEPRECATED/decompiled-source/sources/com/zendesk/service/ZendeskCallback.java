package com.zendesk.service;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskCallback.class */
public abstract class ZendeskCallback<T> {
    public abstract void onError(ErrorResponse errorResponse);

    public abstract void onSuccess(T t);
}
