package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$1.class */
public class DefaultAudioSink$1 extends Thread {
    public final /* synthetic */ DefaultAudioSink this$0;
    public final /* synthetic */ AudioTrack val$toRelease;

    public DefaultAudioSink$1(DefaultAudioSink defaultAudioSink, AudioTrack audioTrack) {
        this.this$0 = defaultAudioSink;
        this.val$toRelease = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.val$toRelease.flush();
            this.val$toRelease.release();
        } finally {
            DefaultAudioSink.access$300(this.this$0).open();
        }
    }
}
