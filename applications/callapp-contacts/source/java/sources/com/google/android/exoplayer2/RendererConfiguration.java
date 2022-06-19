package com.google.android.exoplayer2;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/RendererConfiguration.class */
public final class RendererConfiguration {
    public static final RendererConfiguration DEFAULT = new RendererConfiguration(false);
    public final boolean tunneling;

    public RendererConfiguration(boolean z) {
        this.tunneling = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.tunneling == ((RendererConfiguration) obj).tunneling;
    }

    public final int hashCode() {
        return this.tunneling ? 0 : 1;
    }
}
