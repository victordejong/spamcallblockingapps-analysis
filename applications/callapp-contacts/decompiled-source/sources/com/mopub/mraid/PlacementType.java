package com.mopub.mraid;

import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/PlacementType.class */
public enum PlacementType {
    INLINE,
    INTERSTITIAL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
