package com.google.firebase.events;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/events/Publisher.class */
public interface Publisher {
    @KeepForSdk
    void publish(Event<?> event);
}
