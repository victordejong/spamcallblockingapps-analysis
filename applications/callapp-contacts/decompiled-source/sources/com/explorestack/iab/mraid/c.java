package com.explorestack.iab.mraid;

import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/c.class */
public enum c {
    INLINE,
    INTERSTITIAL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String toJsString() {
        return toString().toLowerCase(Locale.US);
    }
}
