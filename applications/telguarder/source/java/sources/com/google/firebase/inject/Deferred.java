package com.google.firebase.inject;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inject/Deferred.class */
public interface Deferred<T> {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inject/Deferred$DeferredHandler.class */
    public interface DeferredHandler<T> {
        void handle(Provider<T> provider);
    }

    void whenAvailable(DeferredHandler<T> deferredHandler);
}
