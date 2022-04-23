package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.PlaybackParameters;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/MediaClock.class */
public interface MediaClock {
    PlaybackParameters getPlaybackParameters();

    long getPositionUs();

    PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters);
}
