package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.ad;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink.class */
public interface AudioSink {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException.class */
    public static final class ConfigurationException extends Exception {
        public ConfigurationException(String str) {
            super(str);
        }

        public ConfigurationException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$InitializationException.class */
    public static final class InitializationException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f2839a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InitializationException(int r5, int r6, int r7, int r8) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 82
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "AudioTrack init failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ", Config("
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ")"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r9
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.f2839a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioSink.InitializationException.<init>(int, int, int, int):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f2840a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public WriteException(int r5) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 36
                r1.<init>(r2)
                r6 = r0
                r0 = r6
                java.lang.String r1 = "AudioTrack write failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.f2840a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioSink.WriteException.<init>(int):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$a.class */
    public interface a {
        void a();

        void a(int i);

        void a(int i, long j, long j2);
    }

    long a(boolean z);

    void a();

    void a(float f);

    void a(int i);

    void a(int i, int i2, int i3, int[] iArr, int i4, int i5) throws ConfigurationException;

    void a(ad adVar);

    void a(a aVar);

    void a(c cVar);

    void a(p pVar);

    boolean a(int i, int i2);

    boolean a(ByteBuffer byteBuffer, long j) throws InitializationException, WriteException;

    void b();

    void c() throws WriteException;

    boolean d();

    boolean e();

    ad f();

    void g();

    void h();

    void i();

    void j();
}
