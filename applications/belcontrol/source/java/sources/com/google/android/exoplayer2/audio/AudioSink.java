package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.PlaybackParameters;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink.class */
public interface AudioSink {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$ConfigurationException.class */
    public static final class ConfigurationException extends Exception {
        public ConfigurationException(String str) {
            super(str);
        }

        public ConfigurationException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$InitializationException.class */
    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i, int i2, int i3, int i4) {
            super("AudioTrack init failed: " + i + ", Config(" + i2 + ", " + i3 + ", " + i4 + ")");
            this.audioTrackState = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$Listener.class */
    public interface Listener {
        void onAudioSessionId(int i);

        void onPositionDiscontinuity();

        void onUnderrun(int i, long j, long j2);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i) {
            super("AudioTrack write failed: " + i);
            this.errorCode = i;
        }
    }

    void configure(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6);

    void disableTunneling();

    void enableTunnelingV21(int i);

    long getCurrentPositionUs(boolean z);

    PlaybackParameters getPlaybackParameters();

    boolean handleBuffer(ByteBuffer byteBuffer, long j);

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEncodingSupported(int i);

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream();

    void release();

    void reset();

    void setAudioAttributes(AudioAttributes audioAttributes);

    void setAudioSessionId(int i);

    void setListener(Listener listener);

    PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters);

    void setVolume(float f);
}
