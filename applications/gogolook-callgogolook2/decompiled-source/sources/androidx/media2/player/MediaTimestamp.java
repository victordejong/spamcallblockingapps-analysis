package androidx.media2.player;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaTimestamp.class */
public final class MediaTimestamp {
    @NonNull
    public static final MediaTimestamp TIMESTAMP_UNKNOWN = new MediaTimestamp(-1, -1, 0.0f);
    public final float mClockRate;
    public final long mMediaTimeUs;
    public final long mNanoTime;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaTimestamp() {
        this.mMediaTimeUs = 0L;
        this.mNanoTime = 0L;
        this.mClockRate = 1.0f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaTimestamp(long j, long j2, float f) {
        this.mMediaTimeUs = j;
        this.mNanoTime = j2;
        this.mClockRate = f;
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaTimestamp(android.media.MediaTimestamp mediaTimestamp) {
        this.mMediaTimeUs = mediaTimestamp.getAnchorMediaTimeUs();
        this.mNanoTime = mediaTimestamp.getAnchorSytemNanoTime();
        this.mClockRate = mediaTimestamp.getMediaClockRate();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || MediaTimestamp.class != obj.getClass()) {
            return false;
        }
        MediaTimestamp mediaTimestamp = (MediaTimestamp) obj;
        if (!(this.mMediaTimeUs == mediaTimestamp.mMediaTimeUs && this.mNanoTime == mediaTimestamp.mNanoTime && this.mClockRate == mediaTimestamp.mClockRate)) {
            z = false;
        }
        return z;
    }

    public long getAnchorMediaTimeUs() {
        return this.mMediaTimeUs;
    }

    public long getAnchorSystemNanoTime() {
        return this.mNanoTime;
    }

    public float getMediaClockRate() {
        return this.mClockRate;
    }

    public int hashCode() {
        return (int) ((((int) ((Long.valueOf(this.mMediaTimeUs).hashCode() * 31) + this.mNanoTime)) * 31) + this.mClockRate);
    }

    public String toString() {
        return MediaTimestamp.class.getName() + "{AnchorMediaTimeUs=" + this.mMediaTimeUs + " AnchorSystemNanoTime=" + this.mNanoTime + " ClockRate=" + this.mClockRate + CssParser.BLOCK_END;
    }
}
