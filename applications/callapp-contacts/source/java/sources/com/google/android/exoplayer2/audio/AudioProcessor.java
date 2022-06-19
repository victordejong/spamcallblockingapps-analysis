package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.C11599af;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a */
    public static final ByteBuffer f35031a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException.class */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(C10870a c10870a) {
            super("Unhandled format: ".concat(String.valueOf(c10870a)));
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioProcessor$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$a.class */
    public static final class C10870a {

        /* renamed from: a */
        public static final C10870a f35032a = new C10870a(-1, -1, -1);

        /* renamed from: b */
        public final int f35033b;

        /* renamed from: c */
        public final int f35034c;

        /* renamed from: d */
        public final int f35035d;

        /* renamed from: e */
        public final int f35036e;

        public C10870a(int i, int i2, int i3) {
            this.f35033b = i;
            this.f35034c = i2;
            this.f35035d = i3;
            this.f35036e = C11599af.m19935c(i3) ? C11599af.m19934c(i3, i2) : -1;
        }

        public final String toString() {
            return "AudioFormat[sampleRate=" + this.f35033b + ", channelCount=" + this.f35034c + ", encoding=" + this.f35035d + ']';
        }
    }

    /* renamed from: a */
    C10870a mo21968a(C10870a c10870a) throws UnhandledAudioFormatException;

    /* renamed from: a */
    void mo21964a(ByteBuffer byteBuffer);

    /* renamed from: a */
    boolean mo21969a();

    /* renamed from: b */
    void mo21967b();

    /* renamed from: c */
    ByteBuffer mo21962c();

    /* renamed from: d */
    boolean mo21961d();

    /* renamed from: e */
    void mo21966e();

    /* renamed from: f */
    void mo21965f();
}
