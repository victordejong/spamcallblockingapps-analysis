package androidx.media2.widget;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaTimeProvider.class */
public interface MediaTimeProvider {
    public static final long NO_TIME = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaTimeProvider$OnMediaTimeListener.class */
    public interface OnMediaTimeListener {
        void onSeek(long j);

        void onStop();

        void onTimedEvent(long j);
    }

    void cancelNotifications(@NonNull OnMediaTimeListener onMediaTimeListener);

    long getCurrentTimeUs(boolean z, boolean z2) throws IllegalStateException;

    void notifyAt(long j, @NonNull OnMediaTimeListener onMediaTimeListener);

    void scheduleUpdate(@NonNull OnMediaTimeListener onMediaTimeListener);
}
