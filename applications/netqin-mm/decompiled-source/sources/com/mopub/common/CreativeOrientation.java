package com.mopub.common;

import com.inmobi.p497a.C7998l;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/CreativeOrientation.class */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    DEVICE;

    public static CreativeOrientation fromString(String str) {
        return C7998l.f31218d.equalsIgnoreCase(str) ? LANDSCAPE : "p".equalsIgnoreCase(str) ? PORTRAIT : DEVICE;
    }
}
