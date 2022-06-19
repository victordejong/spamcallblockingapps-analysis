package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.Format;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink.class */
public interface AudioSink {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$ConfigurationException.class */
    public static final class ConfigurationException extends Exception {
        public final Format format;

        public ConfigurationException(String str, Format format) {
            super(str);
            this.format = format;
        }

        public ConfigurationException(Throwable th, Format format) {
            super(th);
            this.format = format;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$InitializationException.class */
    public static final class InitializationException extends Exception {

        /* renamed from: a */
        public final int f35037a;

        /* renamed from: b */
        public final boolean f35038b;

        /* renamed from: c */
        public final Format f35039c;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InitializationException(int r5, int r6, int r7, int r8, com.google.android.exoplayer2.Format r9, boolean r10, java.lang.Exception r11) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "AudioTrack init failed "
                r1.<init>(r2)
                r12 = r0
                r0 = r12
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                java.lang.String r1 = " Config("
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r12
                java.lang.String r1 = ")"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r10
                if (r0 == 0) goto L54
                java.lang.String r0 = " (recoverable)"
                r13 = r0
                goto L58
            L54:
                java.lang.String r0 = ""
                r13 = r0
            L58:
                r0 = r12
                r1 = r13
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r12
                java.lang.String r1 = r1.toString()
                r2 = r11
                r0.<init>(r1, r2)
                r0 = r4
                r1 = r5
                r0.f35037a = r1
                r0 = r4
                r1 = r10
                r0.f35038b = r1
                r0 = r4
                r1 = r9
                r0.f35039c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioSink.InitializationException.<init>(int, int, int, int, com.google.android.exoplayer2.Format, boolean, java.lang.Exception):void");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {

        /* renamed from: a */
        public final int f35040a;

        /* renamed from: b */
        public final boolean f35041b;

        /* renamed from: c */
        public final Format f35042c;

        public WriteException(int i, Format format, boolean z) {
            super("AudioTrack write failed: ".concat(String.valueOf(i)));
            this.f35041b = z;
            this.f35040a = i;
            this.f35042c = format;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioSink$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$a.class */
    public interface AbstractC10871a {

        /* renamed from: com.google.android.exoplayer2.audio.AudioSink$a$_CC */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$a$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(AbstractC10871a abstractC10871a, long j) {
            }

            public static void $default$a(AbstractC10871a abstractC10871a, Exception exc) {
            }

            public static void $default$b(AbstractC10871a abstractC10871a) {
            }

            public static void $default$b(AbstractC10871a abstractC10871a, long j) {
            }
        }

        /* renamed from: a */
        void mo22004a();

        /* renamed from: a */
        void mo22003a(int i, long j, long j2);

        /* renamed from: a */
        void mo22002a(long j);

        /* renamed from: a */
        void mo22001a(Exception exc);

        /* renamed from: a */
        void mo22000a(boolean z);

        /* renamed from: b */
        void mo21999b();

        /* renamed from: b */
        void mo21998b(long j);
    }

    /* renamed from: a */
    long mo22142a(boolean z);

    /* renamed from: a */
    void mo22161a();

    /* renamed from: a */
    void mo22160a(float f);

    /* renamed from: a */
    void mo22159a(int i);

    /* renamed from: a */
    void mo22151a(Format format, int[] iArr) throws ConfigurationException;

    /* renamed from: a */
    void mo22150a(C10840aa c10840aa);

    /* renamed from: a */
    void mo22148a(AbstractC10871a abstractC10871a);

    /* renamed from: a */
    void mo22146a(C10889d c10889d);

    /* renamed from: a */
    void mo22145a(C10899i c10899i);

    /* renamed from: a */
    boolean mo22154a(Format format);

    /* renamed from: a */
    boolean mo22143a(ByteBuffer byteBuffer, long j, int i) throws InitializationException, WriteException;

    /* renamed from: b */
    int mo22137b(Format format);

    /* renamed from: b */
    void mo22141b();

    /* renamed from: b */
    void mo22133b(boolean z);

    /* renamed from: c */
    void mo22132c() throws WriteException;

    /* renamed from: d */
    boolean mo22129d();

    /* renamed from: e */
    boolean mo22126e();

    /* renamed from: f */
    C10840aa mo22123f();

    /* renamed from: g */
    void mo22120g();

    /* renamed from: h */
    void mo22118h();

    /* renamed from: i */
    void mo22117i();

    /* renamed from: j */
    void mo22116j();

    /* renamed from: k */
    void mo22115k();

    /* renamed from: l */
    void mo22114l();
}
