package com.google.android.exoplayer2;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/RendererConfiguration.class */
public final class RendererConfiguration {
    public static final RendererConfiguration DEFAULT = new RendererConfiguration(0);
    public final int tunnelingAudioSessionId;

    public RendererConfiguration(int i) {
        this.tunnelingAudioSessionId = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RendererConfiguration.class != obj.getClass()) {
            return false;
        }
        if (this.tunnelingAudioSessionId != ((RendererConfiguration) obj).tunnelingAudioSessionId) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.tunnelingAudioSessionId;
    }
}
