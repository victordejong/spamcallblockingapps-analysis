package androidx.media2.exoplayer.external.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.ad;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.audio.o;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f2841a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f2842b = false;
    private long A;
    private long B;
    private long C;
    private int D;
    private int E;
    private long F;
    private float G;
    private AudioProcessor[] H;
    private ByteBuffer[] I;
    private ByteBuffer J;
    private ByteBuffer K;
    private byte[] L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private p R;
    private boolean S;
    private long T;

    /* renamed from: c  reason: collision with root package name */
    public int f2843c;

    /* renamed from: d  reason: collision with root package name */
    private final androidx.media2.exoplayer.external.audio.d f2844d;
    private final a e;
    private final boolean f;
    private final r g;
    private final z h;
    private final AudioProcessor[] i;
    private final AudioProcessor[] j;
    private final ConditionVariable k;
    private final o l;
    private final ArrayDeque<c> m;
    private AudioSink.a n;
    private AudioTrack o;
    private Configuration p;
    private Configuration q;
    private AudioTrack r;
    private androidx.media2.exoplayer.external.audio.c s;
    private ad t;
    private ad u;
    private long v;
    private long w;
    private ByteBuffer x;
    private int y;
    private long z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration.class */
    public static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final boolean canApplyPlaybackParameters;
        public final int inputPcmFrameSize;
        public final int inputSampleRate;
        public final boolean isInputPcm;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;
        public final boolean processingEnabled;

        public Configuration(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.isInputPcm = z;
            this.inputPcmFrameSize = i;
            this.inputSampleRate = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.bufferSize = i7 == 0 ? getDefaultBufferSize() : i7;
            this.processingEnabled = z2;
            this.canApplyPlaybackParameters = z3;
            this.availableAudioProcessors = audioProcessorArr;
        }

        private AudioTrack createAudioTrackV21(boolean z, androidx.media2.exoplayer.external.audio.c cVar, int i) {
            AudioAttributes build = z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : cVar.a();
            AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.outputChannelConfig).setEncoding(this.outputEncoding).setSampleRate(this.outputSampleRate).build();
            int i2 = this.bufferSize;
            if (i == 0) {
                i = 0;
            }
            return new AudioTrack(build, build2, i2, 1, i);
        }

        private int getDefaultBufferSize() {
            if (this.isInputPcm) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
                androidx.media2.exoplayer.external.util.a.b(minBufferSize != -2);
                return ac.a(minBufferSize * 4, ((int) durationUsToFrames(250000L)) * this.outputPcmFrameSize, (int) Math.max(minBufferSize, durationUsToFrames(750000L) * this.outputPcmFrameSize));
            }
            int b2 = DefaultAudioSink.b(this.outputEncoding);
            int i = b2;
            if (this.outputEncoding == 5) {
                i = b2 * 2;
            }
            return (int) ((i * 250000) / 1000000);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:14:0x006a). Please submit an issue!!! */
        public final AudioTrack buildAudioTrack(boolean z, androidx.media2.exoplayer.external.audio.c cVar, int i) throws AudioSink.InitializationException {
            AudioTrack audioTrack;
            if (ac.f4119a >= 21) {
                audioTrack = createAudioTrackV21(z, cVar, i);
            } else {
                int f = ac.f(cVar.f2871d);
                audioTrack = i == 0 ? new AudioTrack(f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize);
        }

        public final boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig;
        }

        public final long durationUsToFrames(long j) {
            return (j * this.outputSampleRate) / 1000000;
        }

        public final long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public final long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputSampleRate;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$a.class */
    public interface a {
        long a(long j);

        ad a(ad adVar);

        AudioProcessor[] a();

        long b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$b.class */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioProcessor[] f2848a;

        /* renamed from: b  reason: collision with root package name */
        private final w f2849b;

        /* renamed from: c  reason: collision with root package name */
        private final y f2850c;

        public b(AudioProcessor... audioProcessorArr) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f2848a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            w wVar = new w();
            this.f2849b = wVar;
            y yVar = new y();
            this.f2850c = yVar;
            audioProcessorArr2[audioProcessorArr.length] = wVar;
            audioProcessorArr2[audioProcessorArr.length + 1] = yVar;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.a
        public final long a(long j) {
            y yVar = this.f2850c;
            return yVar.h >= 1024 ? yVar.e == yVar.f2930b ? ac.b(j, yVar.g, yVar.h) : ac.b(j, yVar.g * yVar.e, yVar.h * yVar.f2930b) : (long) (yVar.f2931c * j);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.a
        public final ad a(ad adVar) {
            w wVar = this.f2849b;
            wVar.e = adVar.f2812d;
            wVar.h();
            y yVar = this.f2850c;
            float a2 = ac.a(adVar.f2810b, 0.1f, 8.0f);
            if (yVar.f2931c != a2) {
                yVar.f2931c = a2;
                yVar.f = true;
            }
            yVar.h();
            y yVar2 = this.f2850c;
            float a3 = ac.a(adVar.f2811c, 0.1f, 8.0f);
            if (yVar2.f2932d != a3) {
                yVar2.f2932d = a3;
                yVar2.f = true;
            }
            yVar2.h();
            return new ad(a2, a3, adVar.f2812d);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.a
        public final AudioProcessor[] a() {
            return this.f2848a;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.a
        public final long b() {
            return this.f2849b.f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final ad f2851a;

        /* renamed from: b  reason: collision with root package name */
        final long f2852b;

        /* renamed from: c  reason: collision with root package name */
        final long f2853c;

        private c(ad adVar, long j, long j2) {
            this.f2851a = adVar;
            this.f2852b = j;
            this.f2853c = j2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$d.class */
    final class d implements o.a {
        private d() {
        }

        @Override // androidx.media2.exoplayer.external.audio.o.a
        public final void a(int i, long j) {
            if (DefaultAudioSink.this.n != null) {
                DefaultAudioSink.this.n.a(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.T);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.o.a
        public final void a(long j) {
            StringBuilder sb = new StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j);
            j.a("AudioTrack", sb.toString());
        }

        @Override // androidx.media2.exoplayer.external.audio.o.a
        public final void a(long j, long j2, long j3, long j4) {
            long q = DefaultAudioSink.this.q();
            long r = DefaultAudioSink.this.r();
            StringBuilder sb = new StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(q);
            sb.append(", ");
            sb.append(r);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f2842b) {
                j.a("AudioTrack", sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2);
        }

        @Override // androidx.media2.exoplayer.external.audio.o.a
        public final void b(long j, long j2, long j3, long j4) {
            long q = DefaultAudioSink.this.q();
            long r = DefaultAudioSink.this.r();
            StringBuilder sb = new StringBuilder(180);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(q);
            sb.append(", ");
            sb.append(r);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f2842b) {
                j.a("AudioTrack", sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2);
        }
    }

    public DefaultAudioSink(androidx.media2.exoplayer.external.audio.d dVar, a aVar, boolean z) {
        this.f2844d = dVar;
        this.e = (a) androidx.media2.exoplayer.external.util.a.a(aVar);
        this.f = z;
        this.k = new ConditionVariable(true);
        this.l = new o(new d());
        r rVar = new r();
        this.g = rVar;
        z zVar = new z();
        this.h = zVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new v(), rVar, zVar);
        Collections.addAll(arrayList, aVar.a());
        this.i = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.j = new AudioProcessor[]{new t()};
        this.G = 1.0f;
        this.E = 0;
        this.s = androidx.media2.exoplayer.external.audio.c.f2868a;
        this.f2843c = 0;
        this.R = new p(0, BitmapDescriptorFactory.HUE_RED);
        this.u = ad.f2809a;
        this.N = -1;
        this.H = new AudioProcessor[0];
        this.I = new ByteBuffer[0];
        this.m = new ArrayDeque<>();
    }

    public DefaultAudioSink(androidx.media2.exoplayer.external.audio.d dVar, AudioProcessor[] audioProcessorArr) {
        this(dVar, audioProcessorArr, false);
    }

    public DefaultAudioSink(androidx.media2.exoplayer.external.audio.d dVar, AudioProcessor[] audioProcessorArr, boolean z) {
        this(dVar, new b(audioProcessorArr), z);
    }

    private int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (ac.f4119a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.x == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.x = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.x.putInt(1431633921);
        }
        if (this.y == 0) {
            this.x.putInt(4, i);
            this.x.putLong(8, j * 1000);
            this.x.position(0);
            this.y = i;
        }
        int remaining = this.x.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.x, remaining, 1);
            if (write < 0) {
                this.y = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int write2 = audioTrack.write(byteBuffer, i, 1);
        if (write2 < 0) {
            this.y = 0;
            return write2;
        }
        this.y -= write2;
        return write2;
    }

    private void a(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.H.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.I[i - 1];
            } else {
                byteBuffer = this.J;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f2838a;
                }
            }
            if (i == length) {
                b(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.H[i];
                audioProcessor.a(byteBuffer);
                ByteBuffer f = audioProcessor.f();
                this.I[i] = f;
                if (f.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    private void a(ad adVar, long j) {
        this.m.add(new c(this.q.canApplyPlaybackParameters ? this.e.a(adVar) : ad.f2809a, Math.max(0L, j), this.q.framesToDurationUs(r())));
        k();
    }

    static /* synthetic */ int b(int i) {
        if (i == 5) {
            return 80000;
        }
        if (i == 6) {
            return 768000;
        }
        if (i == 7) {
            return 192000;
        }
        if (i == 8) {
            return 2250000;
        }
        if (i == 14) {
            return 3062500;
        }
        if (i == 17) {
            return 336000;
        }
        if (i == 18) {
            return 768000;
        }
        throw new IllegalArgumentException();
    }

    private void b(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.K;
            boolean z = true;
            int i = 0;
            if (byteBuffer2 != null) {
                androidx.media2.exoplayer.external.util.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.K = byteBuffer;
                if (ac.f4119a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.L;
                    if (bArr == null || bArr.length < remaining) {
                        this.L = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.L, 0, remaining);
                    byteBuffer.position(position);
                    this.M = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (ac.f4119a < 21) {
                int a2 = this.l.a(this.B);
                if (a2 > 0) {
                    int write = this.r.write(this.L, this.M, Math.min(remaining2, a2));
                    i = write;
                    if (write > 0) {
                        this.M += write;
                        byteBuffer.position(byteBuffer.position() + write);
                        i = write;
                    }
                }
            } else if (this.S) {
                if (j == -9223372036854775807L) {
                    z = false;
                }
                androidx.media2.exoplayer.external.util.a.b(z);
                i = a(this.r, byteBuffer, remaining2, j);
            } else {
                i = this.r.write(byteBuffer, remaining2, 1);
            }
            this.T = SystemClock.elapsedRealtime();
            if (i >= 0) {
                if (this.q.isInputPcm) {
                    this.B += i;
                }
                if (i == remaining2) {
                    if (!this.q.isInputPcm) {
                        this.C += this.D;
                    }
                    this.K = null;
                    return;
                }
                return;
            }
            throw new AudioSink.WriteException(i);
        }
    }

    private void k() {
        AudioProcessor[] audioProcessorArr = this.q.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.a()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.h();
            }
        }
        int size = arrayList.size();
        this.H = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.I = new ByteBuffer[size];
        l();
    }

    private void l() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.H;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.h();
                this.I[i] = audioProcessor.f();
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m() throws androidx.media2.exoplayer.external.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.N
            r1 = -1
            if (r0 != r1) goto L_0x0027
            r0 = r5
            androidx.media2.exoplayer.external.audio.DefaultAudioSink$Configuration r0 = r0.q
            boolean r0 = r0.processingEnabled
            if (r0 == 0) goto L_0x0017
            r0 = 0
            r6 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.H
            int r0 = r0.length
            r6 = r0
        L_0x001d:
            r0 = r5
            r1 = r6
            r0.N = r1
        L_0x0022:
            r0 = 1
            r6 = r0
            goto L_0x0029
        L_0x0027:
            r0 = 0
            r6 = r0
        L_0x0029:
            r0 = r5
            int r0 = r0.N
            r7 = r0
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.H
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0066
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0047
            r0 = r8
            r0.e()
        L_0x0047:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.a(r1)
            r0 = r8
            boolean r0 = r0.g()
            if (r0 != 0) goto L_0x0059
            r0 = 0
            return r0
        L_0x0059:
            r0 = r5
            r1 = r5
            int r1 = r1.N
            r2 = 1
            int r1 = r1 + r2
            r0.N = r1
            goto L_0x0022
        L_0x0066:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.K
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0080
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.K
            if (r0 == 0) goto L_0x0080
            r0 = 0
            return r0
        L_0x0080:
            r0 = r5
            r1 = -1
            r0.N = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.m():boolean");
    }

    private void n() {
        if (!p()) {
            return;
        }
        if (ac.f4119a >= 21) {
            this.r.setVolume(this.G);
            return;
        }
        AudioTrack audioTrack = this.r;
        float f = this.G;
        audioTrack.setStereoVolume(f, f);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.media2.exoplayer.external.audio.DefaultAudioSink$2] */
    private void o() {
        final AudioTrack audioTrack = this.o;
        if (audioTrack != null) {
            this.o = null;
            new Thread(this) { // from class: androidx.media2.exoplayer.external.audio.DefaultAudioSink.2
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    audioTrack.release();
                }
            }.start();
        }
    }

    private boolean p() {
        return this.r != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long q() {
        return this.q.isInputPcm ? this.z / this.q.inputPcmFrameSize : this.A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long r() {
        return this.q.isInputPcm ? this.B / this.q.outputPcmFrameSize : this.C;
    }

    private void s() {
        if (!this.P) {
            this.P = true;
            this.l.b(r());
            this.r.stop();
            this.y = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final long a(boolean z) {
        long j;
        long j2;
        long j3;
        if (!p() || this.E == 0) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.l.a(z), this.q.framesToDurationUs(r()));
        long j4 = this.F;
        c cVar = null;
        while (!this.m.isEmpty() && min >= this.m.getFirst().f2853c) {
            cVar = this.m.remove();
        }
        if (cVar != null) {
            this.u = cVar.f2851a;
            this.w = cVar.f2853c;
            this.v = cVar.f2852b - this.F;
        }
        if (this.u.f2810b == 1.0f) {
            j = (min + this.v) - this.w;
        } else {
            if (this.m.isEmpty()) {
                j2 = this.v;
                j3 = this.e.a(min - this.w);
            } else {
                j2 = this.v;
                j3 = ac.a(min - this.w, this.u.f2810b);
            }
            j = j3 + j2;
        }
        return j4 + j + this.q.framesToDurationUs(this.e.b());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a() {
        this.Q = true;
        if (p()) {
            ((n) androidx.media2.exoplayer.external.util.a.a(this.l.e)).a();
            this.r.play();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a(float f) {
        if (this.G != f) {
            this.G = f;
            n();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a(int i) {
        androidx.media2.exoplayer.external.util.a.b(ac.f4119a >= 21);
        if (!this.S || this.f2843c != i) {
            this.S = true;
            this.f2843c = i;
            i();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01aa  */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r15, int r16, int r17, int[] r18, int r19, int r20) throws androidx.media2.exoplayer.external.audio.AudioSink.ConfigurationException {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.a(int, int, int, int[], int, int):void");
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a(ad adVar) {
        Configuration configuration = this.q;
        if (configuration != null && !configuration.canApplyPlaybackParameters) {
            this.u = ad.f2809a;
        } else if (adVar.equals(f())) {
        } else {
            if (p()) {
                this.t = adVar;
            } else {
                this.u = adVar;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a(AudioSink.a aVar) {
        this.n = aVar;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a(androidx.media2.exoplayer.external.audio.c cVar) {
        if (!this.s.equals(cVar)) {
            this.s = cVar;
            if (!this.S) {
                i();
                this.f2843c = 0;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void a(p pVar) {
        if (!this.R.equals(pVar)) {
            int i = pVar.f2914a;
            float f = pVar.f2915b;
            if (this.r != null) {
                if (this.R.f2914a != i) {
                    this.r.attachAuxEffect(i);
                }
                if (i != 0) {
                    this.r.setAuxEffectSendLevel(f);
                }
            }
            this.R = pVar;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final boolean a(int i, int i2) {
        if (ac.c(i2)) {
            return i2 != 4 || ac.f4119a >= 21;
        }
        androidx.media2.exoplayer.external.audio.d dVar = this.f2844d;
        if (dVar == null) {
            return false;
        }
        if (Arrays.binarySearch(dVar.f2877b, i2) >= 0) {
            return i == -1 || i <= this.f2844d.f2878c;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x025e, code lost:
        if (r0.d() == 0) goto L_0x024b;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b3  */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.nio.ByteBuffer r12, long r13) throws androidx.media2.exoplayer.external.audio.AudioSink.InitializationException, androidx.media2.exoplayer.external.audio.AudioSink.WriteException {
        /*
            Method dump skipped, instructions count: 1295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.a(java.nio.ByteBuffer, long):boolean");
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void b() {
        if (this.E == 1) {
            this.E = 2;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void c() throws AudioSink.WriteException {
        if (!this.O && p() && m()) {
            s();
            this.O = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final boolean d() {
        if (p()) {
            return this.O && !e();
        }
        return true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final boolean e() {
        return p() && this.l.c(r());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final ad f() {
        ad adVar = this.t;
        return adVar != null ? adVar : !this.m.isEmpty() ? this.m.getLast().f2851a : this.u;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void g() {
        if (this.S) {
            this.S = false;
            this.f2843c = 0;
            i();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void h() {
        boolean z = false;
        this.Q = false;
        if (p()) {
            o oVar = this.l;
            oVar.c();
            if (oVar.o == -9223372036854775807L) {
                ((n) androidx.media2.exoplayer.external.util.a.a(oVar.e)).a();
                z = true;
            }
            if (z) {
                this.r.pause();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [androidx.media2.exoplayer.external.audio.DefaultAudioSink$1] */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void i() {
        if (p()) {
            this.z = 0L;
            this.A = 0L;
            this.B = 0L;
            this.C = 0L;
            this.D = 0;
            ad adVar = this.t;
            if (adVar != null) {
                this.u = adVar;
                this.t = null;
            } else if (!this.m.isEmpty()) {
                this.u = this.m.getLast().f2851a;
            }
            this.m.clear();
            this.v = 0L;
            this.w = 0L;
            this.h.g = 0L;
            l();
            this.J = null;
            this.K = null;
            this.P = false;
            this.O = false;
            this.N = -1;
            this.x = null;
            this.y = 0;
            this.E = 0;
            if (this.l.a()) {
                this.r.pause();
            }
            final AudioTrack audioTrack = this.r;
            this.r = null;
            Configuration configuration = this.p;
            if (configuration != null) {
                this.q = configuration;
                this.p = null;
            }
            this.l.b();
            this.k.close();
            new Thread() { // from class: androidx.media2.exoplayer.external.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.k.open();
                    }
                }
            }.start();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public final void j() {
        i();
        o();
        for (AudioProcessor audioProcessor : this.i) {
            audioProcessor.i();
        }
        for (AudioProcessor audioProcessor2 : this.j) {
            audioProcessor2.i();
        }
        this.f2843c = 0;
        this.Q = false;
    }
}
