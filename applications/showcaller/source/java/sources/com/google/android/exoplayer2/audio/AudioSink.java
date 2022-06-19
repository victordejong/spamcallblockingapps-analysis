package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.C5102l0;
import java.nio.ByteBuffer;
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
    public interface AbstractC4805a {
        /* renamed from: a */
        void mo21492a(int i);

        /* renamed from: b */
        void mo21491b(int i, long j, long j2);

        /* renamed from: c */
        void mo21490c();
    }

    /* renamed from: a */
    void mo21636a();

    /* renamed from: c */
    boolean mo21634c();

    /* renamed from: d */
    C5102l0 mo21633d();

    void flush();

    /* renamed from: h */
    void mo21629h(C5102l0 c5102l0);

    /* renamed from: i */
    boolean mo21628i(int i, int i2);

    /* renamed from: j */
    void mo21627j(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6);

    /* renamed from: k */
    void mo21626k();

    /* renamed from: l */
    boolean mo21625l();

    /* renamed from: m */
    long mo21624m(boolean z);

    /* renamed from: n */
    void mo21623n();

    /* renamed from: o */
    void mo21622o(C4825i c4825i);

    /* renamed from: p */
    void mo21621p();

    void pause();

    /* renamed from: q */
    void mo21620q(float f);

    /* renamed from: r */
    boolean mo21619r(ByteBuffer byteBuffer, long j);

    /* renamed from: s */
    void mo21618s(int i);

    /* renamed from: t */
    void mo21617t();

    /* renamed from: u */
    void mo21616u(AbstractC4805a abstractC4805a);

    /* renamed from: v */
    void mo21615v(C4836o c4836o);
}
