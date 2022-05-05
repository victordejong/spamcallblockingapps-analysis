package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.PlaybackParameters;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/StandaloneMediaClock.class */
public final class StandaloneMediaClock implements MediaClock {
    public long baseElapsedMs;
    public long baseUs;
    public final Clock clock;
    public PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
    public boolean started;

    public StandaloneMediaClock(Clock clock) {
        this.clock = clock;
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.util.MediaClock
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getPositionUs() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.baseUs
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.started
            if (r0 == 0) goto L_0x0040
            r0 = r5
            androidx.media2.exoplayer.external.util.Clock r0 = r0.clock
            long r0 = r0.elapsedRealtime()
            r1 = r5
            long r1 = r1.baseElapsedMs
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            androidx.media2.exoplayer.external.PlaybackParameters r0 = r0.playbackParameters
            r10 = r0
            r0 = r10
            float r0 = r0.speed
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = r8
            long r0 = androidx.media2.exoplayer.external.C0463C.msToUs(r0)
            r8 = r0
            goto L_0x003c
        L_0x0035:
            r0 = r10
            r1 = r8
            long r0 = r0.getMediaTimeUsForPlayoutTimeMs(r1)
            r8 = r0
        L_0x003c:
            r0 = r6
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
        L_0x0040:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.StandaloneMediaClock.getPositionUs():long");
    }

    public void resetPosition(long j) {
        this.baseUs = j;
        if (this.started) {
            this.baseElapsedMs = this.clock.elapsedRealtime();
        }
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters) {
        if (this.started) {
            resetPosition(getPositionUs());
        }
        this.playbackParameters = playbackParameters;
        return playbackParameters;
    }

    public void start() {
        if (!this.started) {
            this.baseElapsedMs = this.clock.elapsedRealtime();
            this.started = true;
        }
    }

    public void stop() {
        if (this.started) {
            resetPosition(getPositionUs());
            this.started = false;
        }
    }
}
