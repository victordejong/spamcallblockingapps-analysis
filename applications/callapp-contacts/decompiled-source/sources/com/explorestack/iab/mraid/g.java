package com.explorestack.iab.mraid;

import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/g.class */
public enum g {
    LOADING,
    DEFAULT,
    RESIZED,
    EXPANDED,
    HIDDEN;

    public final String toJsString() {
        return toString().toLowerCase(Locale.US);
    }
}
