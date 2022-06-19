package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate.class */
public final class ExoPlayerImplInternal$PlaybackInfoUpdate {
    private int discontinuityReason;
    private PlaybackInfo lastPlaybackInfo;
    private int operationAcks;
    private boolean positionDiscontinuity;

    private ExoPlayerImplInternal$PlaybackInfoUpdate() {
    }

    public /* synthetic */ ExoPlayerImplInternal$PlaybackInfoUpdate(ExoPlayerImplInternal$1 exoPlayerImplInternal$1) {
        this();
    }

    public boolean hasPendingUpdate(PlaybackInfo playbackInfo) {
        return playbackInfo != this.lastPlaybackInfo || this.operationAcks > 0 || this.positionDiscontinuity;
    }

    public void incrementPendingOperationAcks(int i) {
        this.operationAcks += i;
    }

    public void reset(PlaybackInfo playbackInfo) {
        this.lastPlaybackInfo = playbackInfo;
        this.operationAcks = 0;
        this.positionDiscontinuity = false;
    }

    public void setPositionDiscontinuity(int i) {
        boolean z = true;
        if (!this.positionDiscontinuity || this.discontinuityReason == 4) {
            this.positionDiscontinuity = true;
            this.discontinuityReason = i;
            return;
        }
        if (i != 4) {
            z = false;
        }
        Assertions.checkArgument(z);
    }
}
