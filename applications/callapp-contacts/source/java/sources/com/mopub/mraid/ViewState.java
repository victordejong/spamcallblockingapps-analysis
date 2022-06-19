package com.mopub.mraid;

import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/ViewState.class */
public enum ViewState {
    LOADING,
    DEFAULT,
    RESIZED,
    EXPANDED,
    HIDDEN;

    public final String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
