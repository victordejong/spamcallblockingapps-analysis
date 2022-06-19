package com.mopub.common;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/CreativeOrientation.class */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    DEVICE;

    public static CreativeOrientation fromString(String str) {
        return "l".equalsIgnoreCase(str) ? LANDSCAPE : TtmlNode.TAG_P.equalsIgnoreCase(str) ? PORTRAIT : DEVICE;
    }
}
