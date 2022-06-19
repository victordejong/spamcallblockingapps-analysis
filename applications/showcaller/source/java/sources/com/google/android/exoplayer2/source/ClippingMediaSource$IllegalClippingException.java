package com.google.android.exoplayer2.source;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException.class */
public final class ClippingMediaSource$IllegalClippingException extends IOException {
    public final int reason;

    public ClippingMediaSource$IllegalClippingException(int i) {
        super("Illegal clipping: " + m20160a(i));
        this.reason = i;
    }

    /* renamed from: a */
    private static String m20160a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
    }
}
