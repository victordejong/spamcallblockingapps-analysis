package p193e.p1577m.p1578a.p1596c;

import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/t.class */
public abstract class AbstractC24848t implements AbstractC24760q0 {
    public final AbstractC24861y0.C24864c window = new AbstractC24861y0.C24864c();

    /* renamed from: e.m.a.c.t$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/t$a.class */
    public static final class C24849a {

        /* renamed from: a */
        public final AbstractC24760q0.AbstractC24762b f69688a;

        /* renamed from: b */
        public boolean f69689b;

        public C24849a(AbstractC24760q0.AbstractC24762b abstractC24762b) {
            this.f69688a = abstractC24762b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && C24849a.class == obj.getClass()) {
                return this.f69688a.equals(((C24849a) obj).f69688a);
            }
            return false;
        }

        public int hashCode() {
            return this.f69688a.hashCode();
        }
    }

    /* renamed from: e.m.a.c.t$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/t$b.class */
    public interface AbstractC24850b {
        /* renamed from: a */
        void mo4417a(AbstractC24760q0.AbstractC24762b abstractC24762b);
    }

    private int getRepeatModeForNavigation() {
        int repeatMode = getRepeatMode();
        int i = repeatMode;
        if (repeatMode == 1) {
            i = 0;
        }
        return i;
    }

    public final int getBufferedPercentage() {
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        int i = 100;
        if (bufferedPosition == -9223372036854775807L || duration == -9223372036854775807L) {
            i = 0;
        } else if (duration != 0) {
            i = C24773d0.m4618f((int) ((bufferedPosition * 100) / duration), 0, 100);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final long getContentDuration() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return currentTimeline.m4362p() ? (char) 1 : currentTimeline.m4363m(getCurrentWindowIndex(), this.window).m4349a();
    }

    public final Object getCurrentManifest() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return currentTimeline.m4362p() ? null : currentTimeline.m4363m(getCurrentWindowIndex(), this.window).f69734c;
    }

    public final Object getCurrentTag() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return currentTimeline.m4362p() ? null : currentTimeline.m4363m(getCurrentWindowIndex(), this.window).f69733b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final int getNextWindowIndex() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return currentTimeline.m4362p() ? -1 : currentTimeline.m4368e(getCurrentWindowIndex(), getRepeatModeForNavigation(), getShuffleModeEnabled());
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final int getPreviousWindowIndex() {
        int i;
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.m4362p()) {
            i = -1;
        } else {
            i = getCurrentWindowIndex();
            int repeatModeForNavigation = getRepeatModeForNavigation();
            getShuffleModeEnabled();
            if (repeatModeForNavigation == 0) {
                i = i == currentTimeline.m4371a() ? -1 : i - 1;
            } else if (repeatModeForNavigation != 1) {
                if (repeatModeForNavigation != 2) {
                    throw new IllegalStateException();
                }
                i = i == currentTimeline.m4371a() ? currentTimeline.m4370c() : i - 1;
            }
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final boolean hasNext() {
        return getNextWindowIndex() != -1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final boolean hasPrevious() {
        return getPreviousWindowIndex() != -1;
    }

    public final boolean isCurrentWindowDynamic() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.m4362p() && currentTimeline.m4363m(getCurrentWindowIndex(), this.window).f69736e;
    }

    public final boolean isCurrentWindowLive() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.m4362p() && currentTimeline.m4363m(getCurrentWindowIndex(), this.window).f69737f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final boolean isCurrentWindowSeekable() {
        AbstractC24861y0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.m4362p() && currentTimeline.m4363m(getCurrentWindowIndex(), this.window).f69735d;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && getPlaybackSuppressionReason() == 0;
    }

    public final void next() {
        int nextWindowIndex = getNextWindowIndex();
        if (nextWindowIndex != -1) {
            seekToDefaultPosition(nextWindowIndex);
        }
    }

    public final void previous() {
        int previousWindowIndex = getPreviousWindowIndex();
        if (previousWindowIndex != -1) {
            seekToDefaultPosition(previousWindowIndex);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final void seekTo(long j) {
        seekTo(getCurrentWindowIndex(), j);
    }

    public final void seekToDefaultPosition() {
        seekToDefaultPosition(getCurrentWindowIndex());
    }

    public final void seekToDefaultPosition(int i) {
        seekTo(i, -9223372036854775807L);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0
    public final void stop() {
        stop(false);
    }
}
