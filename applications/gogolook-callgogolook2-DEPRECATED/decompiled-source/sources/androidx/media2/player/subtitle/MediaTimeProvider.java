package androidx.media2.player.subtitle;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/MediaTimeProvider.class */
public interface MediaTimeProvider {
    public static final long NO_TIME = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/subtitle/MediaTimeProvider$OnMediaTimeListener.class */
    public interface OnMediaTimeListener {
        void onSeek(long j);

        void onStop();

        void onTimedEvent(long j);
    }

    void cancelNotifications(OnMediaTimeListener onMediaTimeListener);

    long getCurrentTimeUs(boolean z, boolean z2) throws IllegalStateException;

    void notifyAt(long j, OnMediaTimeListener onMediaTimeListener);

    void scheduleUpdate(OnMediaTimeListener onMediaTimeListener);
}
