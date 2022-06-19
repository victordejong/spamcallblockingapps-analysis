package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.PlaybackParameters;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/MediaClock.class */
public interface MediaClock {
    PlaybackParameters getPlaybackParameters();

    long getPositionUs();

    PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters);
}
