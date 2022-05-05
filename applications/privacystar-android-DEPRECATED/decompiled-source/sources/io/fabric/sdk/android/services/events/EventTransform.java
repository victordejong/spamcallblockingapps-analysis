package io.fabric.sdk.android.services.events;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/events/EventTransform.class */
public interface EventTransform<T> {
    byte[] toBytes(T t) throws IOException;
}
