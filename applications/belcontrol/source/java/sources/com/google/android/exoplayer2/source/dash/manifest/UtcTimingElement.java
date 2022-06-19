package com.google.android.exoplayer2.source.dash.manifest;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/UtcTimingElement.class */
public final class UtcTimingElement {
    public final String schemeIdUri;
    public final String value;

    public UtcTimingElement(String str, String str2) {
        this.schemeIdUri = str;
        this.value = str2;
    }

    public String toString() {
        return this.schemeIdUri + ", " + this.value;
    }
}
