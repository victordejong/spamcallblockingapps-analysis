package com.google.firebase.events;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/events/EventHandler.class */
public interface EventHandler<T> {
    @KeepForSdk
    void handle(Event<T> event);
}
