package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a */
    public static final ByteBuffer f14508a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException.class */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(C4804a c4804a) {
            super("Unhandled format: " + c4804a);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioProcessor$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$a.class */
    public static final class C4804a {

        /* renamed from: a */
        public static final C4804a f14509a = new C4804a(-1, -1, -1);

        /* renamed from: b */
        public final int f14510b;

        /* renamed from: c */
        public final int f14511c;

        /* renamed from: d */
        public final int f14512d;

        /* renamed from: e */
        public final int f14513e;

        public C4804a(int i, int i2, int i3) {
            this.f14510b = i;
            this.f14511c = i2;
            this.f14512d = i3;
            this.f14513e = C5515h0.m18851U(i3) ? C5515h0.m18863I(i3, i2) : -1;
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f14510b + ", channelCount=" + this.f14511c + ", encoding=" + this.f14512d + ']';
        }
    }

    /* renamed from: a */
    void mo21456a();

    /* renamed from: b */
    ByteBuffer mo21449b();

    /* renamed from: c */
    boolean mo21448c();

    /* renamed from: d */
    void mo21447d(ByteBuffer byteBuffer);

    /* renamed from: e */
    C4804a mo21455e(C4804a c4804a);

    /* renamed from: f */
    void mo21454f();

    void flush();

    /* renamed from: g */
    boolean mo21453g();
}
