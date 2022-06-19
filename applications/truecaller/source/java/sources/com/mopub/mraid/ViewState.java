package com.mopub.mraid;

import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/ViewState.class */
public enum ViewState {
    LOADING,
    DEFAULT,
    RESIZED,
    EXPANDED,
    HIDDEN;

    public String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
