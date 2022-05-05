package androidx.media2.exoplayer.external;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/BasePlayer.class */
public abstract class BasePlayer implements Player {
    public final Timeline.Window window = new Timeline.Window();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/BasePlayer$ListenerHolder.class */
    public static final class ListenerHolder {
        public final Player.EventListener listener;
        public boolean released;

        public ListenerHolder(Player.EventListener eventListener) {
            this.listener = eventListener;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ListenerHolder.class != obj.getClass()) {
                return false;
            }
            return this.listener.equals(((ListenerHolder) obj).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public void invoke(ListenerInvocation listenerInvocation) {
            if (!this.released) {
                listenerInvocation.invokeListener(this.listener);
            }
        }

        public void release() {
            this.released = true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/BasePlayer$ListenerInvocation.class */
    public interface ListenerInvocation {
        void invokeListener(Player.EventListener eventListener);
    }

    private int getRepeatModeForNavigation() {
        int repeatMode = getRepeatMode();
        int i = repeatMode;
        if (repeatMode == 1) {
            i = 0;
        }
        return i;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final int getBufferedPercentage() {
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        int i = 100;
        if (bufferedPosition == C0463C.TIME_UNSET || duration == C0463C.TIME_UNSET) {
            i = 0;
        } else if (duration != 0) {
            i = Util.constrainValue((int) ((bufferedPosition * 100) / duration), 0, 100);
        }
        return i;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final long getContentDuration() {
        Timeline currentTimeline = getCurrentTimeline();
        return currentTimeline.isEmpty() ? C0463C.TIME_UNSET : currentTimeline.getWindow(getCurrentWindowIndex(), this.window).getDurationMs();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public final Object getCurrentTag() {
        int currentWindowIndex = getCurrentWindowIndex();
        Timeline currentTimeline = getCurrentTimeline();
        return currentWindowIndex >= currentTimeline.getWindowCount() ? null : currentTimeline.getWindow(currentWindowIndex, this.window, true).tag;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final int getNextWindowIndex() {
        Timeline currentTimeline = getCurrentTimeline();
        return currentTimeline.isEmpty() ? -1 : currentTimeline.getNextWindowIndex(getCurrentWindowIndex(), getRepeatModeForNavigation(), getShuffleModeEnabled());
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final int getPreviousWindowIndex() {
        Timeline currentTimeline = getCurrentTimeline();
        return currentTimeline.isEmpty() ? -1 : currentTimeline.getPreviousWindowIndex(getCurrentWindowIndex(), getRepeatModeForNavigation(), getShuffleModeEnabled());
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final boolean hasNext() {
        return getNextWindowIndex() != -1;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final boolean hasPrevious() {
        return getPreviousWindowIndex() != -1;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final boolean isCurrentWindowDynamic() {
        Timeline currentTimeline = getCurrentTimeline();
        return !currentTimeline.isEmpty() && currentTimeline.getWindow(getCurrentWindowIndex(), this.window).isDynamic;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final boolean isCurrentWindowSeekable() {
        Timeline currentTimeline = getCurrentTimeline();
        return !currentTimeline.isEmpty() && currentTimeline.getWindow(getCurrentWindowIndex(), this.window).isSeekable;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final void next() {
        int nextWindowIndex = getNextWindowIndex();
        if (nextWindowIndex != -1) {
            seekToDefaultPosition(nextWindowIndex);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final void previous() {
        int previousWindowIndex = getPreviousWindowIndex();
        if (previousWindowIndex != -1) {
            seekToDefaultPosition(previousWindowIndex);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final void seekTo(long j) {
        seekTo(getCurrentWindowIndex(), j);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final void seekToDefaultPosition() {
        seekToDefaultPosition(getCurrentWindowIndex());
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final void seekToDefaultPosition(int i) {
        seekTo(i, C0463C.TIME_UNSET);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public final void stop() {
        stop(false);
    }
}
