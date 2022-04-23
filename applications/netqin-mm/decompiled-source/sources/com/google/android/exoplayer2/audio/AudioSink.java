package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.C2910h0;
import p131c.p161d.p170b.p188c.p206s0.C2982i;
import p131c.p161d.p170b.p188c.p206s0.C2992n;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink.class */
public interface AudioSink {

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

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i) {
            super("AudioTrack write failed: " + i);
            this.errorCode = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioSink$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$a.class */
    public interface AbstractC7123a {
        /* renamed from: a */
        void mo18686a();

        /* renamed from: a */
        void mo18685a(int i);

        /* renamed from: a */
        void mo18684a(int i, long j, long j2);
    }

    /* renamed from: S */
    void mo18683S();

    /* renamed from: T */
    void mo18682T() throws WriteException;

    /* renamed from: U */
    boolean mo18681U();

    /* renamed from: V */
    void mo18680V();

    /* renamed from: W */
    void mo18679W();

    /* renamed from: a */
    long mo18661a(boolean z);

    /* renamed from: a */
    void mo18678a();

    /* renamed from: a */
    void mo18677a(int i);

    /* renamed from: a */
    void mo18675a(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) throws ConfigurationException;

    /* renamed from: a */
    void mo18668a(C2910h0 h0Var);

    /* renamed from: a */
    void mo18666a(C2982i iVar);

    /* renamed from: a */
    void mo18665a(C2992n nVar);

    /* renamed from: a */
    void mo18664a(AbstractC7123a aVar);

    /* renamed from: a */
    boolean mo18676a(int i, int i2);

    /* renamed from: a */
    boolean mo18662a(ByteBuffer byteBuffer, long j) throws InitializationException, WriteException;

    /* renamed from: c */
    boolean mo18654c();

    void flush();

    /* renamed from: g */
    C2910h0 mo18643g();

    void pause();

    void setVolume(float f);
}
