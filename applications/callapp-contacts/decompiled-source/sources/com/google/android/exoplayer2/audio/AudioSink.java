package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.aa;
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

        /* renamed from: a  reason: collision with root package name */
        public final int f20696a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f20697b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f20698c;

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
                if (r0 == 0) goto L_0x0054
                java.lang.String r0 = " (recoverable)"
                r13 = r0
                goto L_0x0058
            L_0x0054:
                java.lang.String r0 = ""
                r13 = r0
            L_0x0058:
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
                r0.f20696a = r1
                r0 = r4
                r1 = r10
                r0.f20697b = r1
                r0 = r4
                r1 = r9
                r0.f20698c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioSink.InitializationException.<init>(int, int, int, int, com.google.android.exoplayer2.Format, boolean, java.lang.Exception):void");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final int f20699a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f20700b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f20701c;

        public WriteException(int i, Format format, boolean z) {
            super("AudioTrack write failed: ".concat(String.valueOf(i)));
            this.f20700b = z;
            this.f20699a = i;
            this.f20701c = format;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$a.class */
    public interface a {

        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/AudioSink$a$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(a aVar, long j) {
            }

            public static void $default$a(a aVar, Exception exc) {
            }

            public static void $default$b(a aVar) {
            }

            public static void $default$b(a aVar, long j) {
            }
        }

        void a();

        void a(int i, long j, long j2);

        void a(long j);

        void a(Exception exc);

        void a(boolean z);

        void b();

        void b(long j);
    }

    long a(boolean z);

    void a();

    void a(float f);

    void a(int i);

    void a(Format format, int[] iArr) throws ConfigurationException;

    void a(aa aaVar);

    void a(a aVar);

    void a(d dVar);

    void a(i iVar);

    boolean a(Format format);

    boolean a(ByteBuffer byteBuffer, long j, int i) throws InitializationException, WriteException;

    int b(Format format);

    void b();

    void b(boolean z);

    void c() throws WriteException;

    boolean d();

    boolean e();

    aa f();

    void g();

    void h();

    void i();

    void j();

    void k();

    void l();
}
