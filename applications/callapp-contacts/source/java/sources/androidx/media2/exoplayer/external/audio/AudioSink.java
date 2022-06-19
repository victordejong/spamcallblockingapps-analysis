package androidx.media2.exoplayer.external.audio;

import androidx.media2.exoplayer.external.C1368ad;
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

        /* renamed from: a */
        public final int f5222a;

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
                r0.f5222a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioSink.InitializationException.<init>(int, int, int, int):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {

        /* renamed from: a */
        public final int f5223a;

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
                r0.f5223a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioSink.WriteException.<init>(int):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.AudioSink$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$a.class */
    public interface AbstractC1387a {
        /* renamed from: a */
        void mo42966a();

        /* renamed from: a */
        void mo42965a(int i);

        /* renamed from: a */
        void mo42964a(int i, long j, long j2);
    }

    /* renamed from: a */
    long mo43064a(boolean z);

    /* renamed from: a */
    void mo43078a();

    /* renamed from: a */
    void mo43077a(float f);

    /* renamed from: a */
    void mo43076a(int i);

    /* renamed from: a */
    void mo43074a(int i, int i2, int i3, int[] iArr, int i4, int i5) throws ConfigurationException;

    /* renamed from: a */
    void mo43071a(C1368ad c1368ad);

    /* renamed from: a */
    void mo43069a(AbstractC1387a abstractC1387a);

    /* renamed from: a */
    void mo43067a(C1401c c1401c);

    /* renamed from: a */
    void mo43066a(C1422p c1422p);

    /* renamed from: a */
    boolean mo43075a(int i, int i2);

    /* renamed from: a */
    boolean mo43065a(ByteBuffer byteBuffer, long j) throws InitializationException, WriteException;

    /* renamed from: b */
    void mo43063b();

    /* renamed from: c */
    void mo43059c() throws WriteException;

    /* renamed from: d */
    boolean mo43057d();

    /* renamed from: e */
    boolean mo43055e();

    /* renamed from: f */
    C1368ad mo43053f();

    /* renamed from: g */
    void mo43052g();

    /* renamed from: h */
    void mo43051h();

    /* renamed from: i */
    void mo43050i();

    /* renamed from: j */
    void mo43049j();
}
