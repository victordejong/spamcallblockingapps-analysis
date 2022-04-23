package com.callapp.contacts.manager.usecase;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/UseCase.class */
public interface UseCase<Response> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/usecase/UseCase$Callback.class */
    public interface Callback<RESPONSE> {
        void onResponseReady(RESPONSE response);
    }

    void a(Callback<Response> callback);
}
