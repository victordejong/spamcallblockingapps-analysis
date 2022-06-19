package io.agora.rtc;

import io.agora.rtc.audio.AudioParams;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/IAudioFrameObserver.class */
public interface IAudioFrameObserver {
    public static final int POSITION_BEFORE_MIXING = 8;
    public static final int POSITION_MIXED = 4;
    public static final int POSITION_PLAYBACK = 1;
    public static final int POSITION_RECORD = 2;

    AudioParams getMixedAudioParams();

    int getObservedAudioFramePosition();

    AudioParams getPlaybackAudioParams();

    AudioParams getRecordAudioParams();

    boolean isMultipleChannelFrameWanted();

    boolean onMixedFrame(AudioFrame audioFrame);

    boolean onPlaybackFrame(AudioFrame audioFrame);

    boolean onPlaybackFrameBeforeMixing(AudioFrame audioFrame, int i);

    boolean onPlaybackFrameBeforeMixingEx(AudioFrame audioFrame, int i, String str);

    boolean onRecordFrame(AudioFrame audioFrame);
}
