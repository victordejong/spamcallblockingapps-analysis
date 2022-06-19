package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzaaz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/VideoOptions.class */
public final class VideoOptions {
    private final boolean zzaee;
    private final boolean zzaef;
    private final boolean zzaeg;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/VideoOptions$Builder.class */
    public static final class Builder {
        private boolean zzaee = true;
        private boolean zzaef = false;
        private boolean zzaeg = false;

        public final VideoOptions build() {
            return new VideoOptions(this);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.zzaeg = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.zzaef = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.zzaee = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzaee = builder.zzaee;
        this.zzaef = builder.zzaef;
        this.zzaeg = builder.zzaeg;
    }

    public VideoOptions(zzaaz zzaazVar) {
        this.zzaee = zzaazVar.zzaee;
        this.zzaef = zzaazVar.zzaef;
        this.zzaeg = zzaazVar.zzaeg;
    }

    public final boolean getClickToExpandRequested() {
        return this.zzaeg;
    }

    public final boolean getCustomControlsRequested() {
        return this.zzaef;
    }

    public final boolean getStartMuted() {
        return this.zzaee;
    }
}
