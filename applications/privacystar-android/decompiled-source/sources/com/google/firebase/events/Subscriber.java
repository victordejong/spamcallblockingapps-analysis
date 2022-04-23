package com.google.firebase.events;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.Executor;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/events/Subscriber.class */
public interface Subscriber {
    @KeepForSdk
    <T> void subscribe(Class<T> cls, EventHandler<? super T> eventHandler);

    @KeepForSdk
    <T> void subscribe(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler);

    @KeepForSdk
    <T> void unsubscribe(Class<T> cls, EventHandler<? super T> eventHandler);
}
