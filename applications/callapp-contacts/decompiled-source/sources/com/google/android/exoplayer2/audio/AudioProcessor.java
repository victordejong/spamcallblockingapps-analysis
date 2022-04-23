package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.af;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f20691a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException.class */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(a aVar) {
            super("Unhandled format: ".concat(String.valueOf(aVar)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f20692a = new a(-1, -1, -1);

        /* renamed from: b  reason: collision with root package name */
        public final int f20693b;

        /* renamed from: c  reason: collision with root package name */
        public final int f20694c;

        /* renamed from: d  reason: collision with root package name */
        public final int f20695d;
        public final int e;

        public a(int i, int i2, int i3) {
            this.f20693b = i;
            this.f20694c = i2;
            this.f20695d = i3;
            this.e = af.c(i3) ? af.c(i3, i2) : -1;
        }

        public final String toString() {
            return "AudioFormat[sampleRate=" + this.f20693b + ", channelCount=" + this.f20694c + ", encoding=" + this.f20695d + ']';
        }
    }

    a a(a aVar) throws UnhandledAudioFormatException;

    void a(ByteBuffer byteBuffer);

    boolean a();

    void b();

    ByteBuffer c();

    boolean d();

    void e();

    void f();
}
