package androidx.media2.player;

import android.os.Build;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/PlaybackParams.class */
public final class PlaybackParams {
    public static final int AUDIO_FALLBACK_MODE_DEFAULT = 0;
    public static final int AUDIO_FALLBACK_MODE_FAIL = 2;
    public static final int AUDIO_FALLBACK_MODE_MUTE = 1;
    public Integer mAudioFallbackMode;
    public Float mPitch;
    public android.media.PlaybackParams mPlaybackParams;
    public Float mSpeed;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/PlaybackParams$AudioFallbackMode.class */
    public @interface AudioFallbackMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/PlaybackParams$Builder.class */
    public static final class Builder {
        public Integer mAudioFallbackMode;
        public Float mPitch;
        public android.media.PlaybackParams mPlaybackParams;
        public Float mSpeed;

        public Builder() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.mPlaybackParams = new android.media.PlaybackParams();
            }
        }

        @RequiresApi(23)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Builder(android.media.PlaybackParams playbackParams) {
            this.mPlaybackParams = playbackParams;
        }

        public Builder(@NonNull PlaybackParams playbackParams) {
            if (playbackParams == null) {
                throw new NullPointerException("playbakcParams shouldn't be null");
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.mPlaybackParams = playbackParams.getPlaybackParams();
            } else {
                this.mAudioFallbackMode = playbackParams.getAudioFallbackMode();
                this.mPitch = playbackParams.getPitch();
                this.mSpeed = playbackParams.getSpeed();
            }
        }

        @NonNull
        public PlaybackParams build() {
            return Build.VERSION.SDK_INT >= 23 ? new PlaybackParams(this.mPlaybackParams) : new PlaybackParams(this.mAudioFallbackMode, this.mPitch, this.mSpeed);
        }

        @NonNull
        public Builder setAudioFallbackMode(int i) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.mPlaybackParams.setAudioFallbackMode(i);
            } else {
                this.mAudioFallbackMode = Integer.valueOf(i);
            }
            return this;
        }

        @NonNull
        public Builder setPitch(@FloatRange(from = 0.0d, fromInclusive = false, m37520to = 3.4028234663852886E38d) float f) {
            if (f == 0.0f) {
                throw new IllegalArgumentException("0 pitch is not allowed");
            } else if (f >= 0.0f) {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.mPlaybackParams.setPitch(f);
                } else {
                    this.mPitch = Float.valueOf(f);
                }
                return this;
            } else {
                throw new IllegalArgumentException("pitch must not be negative");
            }
        }

        @NonNull
        public Builder setSpeed(@FloatRange(from = 0.0d, fromInclusive = false, m37520to = 3.4028234663852886E38d) float f) {
            if (f == 0.0f) {
                throw new IllegalArgumentException("0 speed is not allowed");
            } else if (f >= 0.0f) {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.mPlaybackParams.setSpeed(f);
                } else {
                    this.mSpeed = Float.valueOf(f);
                }
                return this;
            } else {
                throw new IllegalArgumentException("negative speed is not supported");
            }
        }
    }

    @RequiresApi(23)
    public PlaybackParams(android.media.PlaybackParams playbackParams) {
        this.mPlaybackParams = playbackParams;
    }

    public PlaybackParams(Integer num, Float f, Float f2) {
        this.mAudioFallbackMode = num;
        this.mPitch = f;
        this.mSpeed = f2;
    }

    @Nullable
    public Integer getAudioFallbackMode() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.mAudioFallbackMode;
        }
        try {
            return Integer.valueOf(this.mPlaybackParams.getAudioFallbackMode());
        } catch (IllegalStateException e) {
            return null;
        }
    }

    @Nullable
    public Float getPitch() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.mPitch;
        }
        try {
            return Float.valueOf(this.mPlaybackParams.getPitch());
        } catch (IllegalStateException e) {
            return null;
        }
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public android.media.PlaybackParams getPlaybackParams() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.mPlaybackParams;
        }
        return null;
    }

    @Nullable
    public Float getSpeed() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.mSpeed;
        }
        try {
            return Float.valueOf(this.mPlaybackParams.getSpeed());
        } catch (IllegalStateException e) {
            return null;
        }
    }
}
