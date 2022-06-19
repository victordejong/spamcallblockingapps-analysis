package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.PlaybackParameters;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint.class */
public final class DefaultAudioSink$PlaybackParametersCheckpoint {
    private final long mediaTimeUs;
    private final PlaybackParameters playbackParameters;
    private final long positionUs;

    private DefaultAudioSink$PlaybackParametersCheckpoint(PlaybackParameters playbackParameters, long j, long j2) {
        this.playbackParameters = playbackParameters;
        this.mediaTimeUs = j;
        this.positionUs = j2;
    }

    public /* synthetic */ DefaultAudioSink$PlaybackParametersCheckpoint(PlaybackParameters playbackParameters, long j, long j2, DefaultAudioSink$1 defaultAudioSink$1) {
        this(playbackParameters, j, j2);
    }
}
