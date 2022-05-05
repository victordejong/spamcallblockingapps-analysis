package io.realm.internal;

import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/Capabilities.class */
public interface Capabilities {
    boolean canDeliverNotification();

    void checkCanDeliverNotification(@Nullable String str);

    boolean isMainThread();
}
