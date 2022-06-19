package com.google.android.exoplayer2;

import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate.class */
public final class ExoPlayerImpl$PlaybackInfoUpdate {
    private final boolean isLoadingChanged;
    private final Set<Player.EventListener> listeners;
    private final boolean playWhenReady;
    private final PlaybackInfo playbackInfo;
    private final boolean playbackStateOrPlayWhenReadyChanged;
    private final boolean positionDiscontinuity;
    private final int positionDiscontinuityReason;
    private final boolean seekProcessed;
    private final int timelineChangeReason;
    private final boolean timelineOrManifestChanged;
    private final TrackSelector trackSelector;
    private final boolean trackSelectorResultChanged;

    public ExoPlayerImpl$PlaybackInfoUpdate(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, Set<Player.EventListener> set, TrackSelector trackSelector, boolean z, int i, int i2, boolean z2, boolean z3, boolean z4) {
        this.playbackInfo = playbackInfo;
        this.listeners = set;
        this.trackSelector = trackSelector;
        this.positionDiscontinuity = z;
        this.positionDiscontinuityReason = i;
        this.timelineChangeReason = i2;
        this.seekProcessed = z2;
        this.playWhenReady = z3;
        this.playbackStateOrPlayWhenReadyChanged = z4 || playbackInfo2.playbackState != playbackInfo.playbackState;
        this.timelineOrManifestChanged = (playbackInfo2.timeline == playbackInfo.timeline && playbackInfo2.manifest == playbackInfo.manifest) ? false : true;
        this.isLoadingChanged = playbackInfo2.isLoading != playbackInfo.isLoading;
        this.trackSelectorResultChanged = playbackInfo2.trackSelectorResult != playbackInfo.trackSelectorResult;
    }

    public void notifyListeners() {
        if (this.timelineOrManifestChanged || this.timelineChangeReason == 0) {
            for (Player.EventListener eventListener : this.listeners) {
                PlaybackInfo playbackInfo = this.playbackInfo;
                eventListener.onTimelineChanged(playbackInfo.timeline, playbackInfo.manifest, this.timelineChangeReason);
            }
        }
        if (this.positionDiscontinuity) {
            for (Player.EventListener eventListener2 : this.listeners) {
                eventListener2.onPositionDiscontinuity(this.positionDiscontinuityReason);
            }
        }
        if (this.trackSelectorResultChanged) {
            this.trackSelector.onSelectionActivated(this.playbackInfo.trackSelectorResult.info);
            for (Player.EventListener eventListener3 : this.listeners) {
                PlaybackInfo playbackInfo2 = this.playbackInfo;
                eventListener3.onTracksChanged(playbackInfo2.trackGroups, playbackInfo2.trackSelectorResult.selections);
            }
        }
        if (this.isLoadingChanged) {
            for (Player.EventListener eventListener4 : this.listeners) {
                eventListener4.onLoadingChanged(this.playbackInfo.isLoading);
            }
        }
        if (this.playbackStateOrPlayWhenReadyChanged) {
            for (Player.EventListener eventListener5 : this.listeners) {
                eventListener5.onPlayerStateChanged(this.playWhenReady, this.playbackInfo.playbackState);
            }
        }
        if (this.seekProcessed) {
            for (Player.EventListener eventListener6 : this.listeners) {
                eventListener6.onSeekProcessed();
            }
        }
    }
}
