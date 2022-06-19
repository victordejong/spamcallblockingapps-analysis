package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$2.class */
public class DefaultAudioSink$2 extends Thread {
    public final /* synthetic */ DefaultAudioSink this$0;
    public final /* synthetic */ AudioTrack val$toRelease;

    public DefaultAudioSink$2(DefaultAudioSink defaultAudioSink, AudioTrack audioTrack) {
        this.this$0 = defaultAudioSink;
        this.val$toRelease = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.val$toRelease.release();
    }
}
