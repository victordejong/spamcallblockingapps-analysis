package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.PlaybackParameters;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain.class */
public interface DefaultAudioSink$AudioProcessorChain {
    PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j);

    long getSkippedOutputFrameCount();
}
