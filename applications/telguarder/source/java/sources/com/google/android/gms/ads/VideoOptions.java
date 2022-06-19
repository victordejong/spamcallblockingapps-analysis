package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzaau;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoOptions.class */
public final class VideoOptions {
    private final boolean zzadx;
    private final boolean zzady;
    private final boolean zzadz;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoOptions$Builder.class */
    public static final class Builder {
        private boolean zzadx = true;
        private boolean zzady = false;
        private boolean zzadz = false;

        public final VideoOptions build() {
            return new VideoOptions(this);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.zzadz = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.zzady = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.zzadx = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzadx = builder.zzadx;
        this.zzady = builder.zzady;
        this.zzadz = builder.zzadz;
    }

    public VideoOptions(zzaau zzaauVar) {
        this.zzadx = zzaauVar.zzadx;
        this.zzady = zzaauVar.zzady;
        this.zzadz = zzaauVar.zzadz;
    }

    public final boolean getClickToExpandRequested() {
        return this.zzadz;
    }

    public final boolean getCustomControlsRequested() {
        return this.zzady;
    }

    public final boolean getStartMuted() {
        return this.zzadx;
    }
}
