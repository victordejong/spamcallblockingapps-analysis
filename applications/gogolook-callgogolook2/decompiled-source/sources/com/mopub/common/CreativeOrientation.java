package com.mopub.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/CreativeOrientation.class */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    DEVICE;

    @NonNull
    public static CreativeOrientation fromString(@Nullable String str) {
        return "l".equalsIgnoreCase(str) ? LANDSCAPE : "p".equalsIgnoreCase(str) ? PORTRAIT : DEVICE;
    }
}
