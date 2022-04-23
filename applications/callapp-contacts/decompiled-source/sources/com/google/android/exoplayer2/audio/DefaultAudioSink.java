package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.h;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.VastVideoViewController;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f20702a = false;
    private long A;
    private long B;
    private long C;
    private long D;
    private int E;
    private boolean F;
    private boolean G;
    private long H;
    private float I;
    private AudioProcessor[] J;
    private ByteBuffer[] K;
    private ByteBuffer L;
    private int M;
    private ByteBuffer N;
    private byte[] O;
    private int P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private int V;
    private i W;
    private boolean X;
    private long Y;
    private boolean Z;
    private boolean aa;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.e f20703b;

    /* renamed from: c  reason: collision with root package name */
    private final a f20704c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f20705d;
    private final k e;
    private final u f;
    private final AudioProcessor[] g;
    private final AudioProcessor[] h;
    private final ConditionVariable i;
    private final h j;
    private final ArrayDeque<c> k;
    private final boolean l;
    private final boolean m;
    private f n;
    private final d<AudioSink.InitializationException> o;
    private final d<AudioSink.WriteException> p;
    private AudioSink.a q;
    private Configuration r;
    private Configuration s;
    private AudioTrack t;
    private com.google.android.exoplayer2.audio.d u;
    private c v;
    private c w;
    private aa x;
    private ByteBuffer y;
    private int z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$Configuration.class */
    public static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public Configuration(Format format, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, AudioProcessor[] audioProcessorArr) {
            this.inputFormat = format;
            this.inputPcmFrameSize = i;
            this.outputMode = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.availableAudioProcessors = audioProcessorArr;
            this.bufferSize = computeBufferSize(i7, z);
        }

        private int computeBufferSize(int i, boolean z) {
            if (i != 0) {
                return i;
            }
            int i2 = this.outputMode;
            if (i2 == 0) {
                return getPcmDefaultBufferSize(z ? 8.0f : 1.0f);
            } else if (i2 == 1) {
                return getEncodedDefaultBufferSize(50000000L);
            } else {
                if (i2 == 2) {
                    return getEncodedDefaultBufferSize(250000L);
                }
                throw new IllegalStateException();
            }
        }

        private AudioTrack createAudioTrack(boolean z, com.google.android.exoplayer2.audio.d dVar, int i) {
            return af.f22275a >= 29 ? createAudioTrackV29(z, dVar, i) : af.f22275a >= 21 ? createAudioTrackV21(z, dVar, i) : createAudioTrackV9(dVar, i);
        }

        private AudioTrack createAudioTrackV21(boolean z, com.google.android.exoplayer2.audio.d dVar, int i) {
            return new AudioTrack(getAudioTrackAttributesV21(dVar, z), DefaultAudioSink.b(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, i);
        }

        private AudioTrack createAudioTrackV29(boolean z, com.google.android.exoplayer2.audio.d dVar, int i) {
            AudioFormat b2 = DefaultAudioSink.b(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            AudioAttributes audioTrackAttributesV21 = getAudioTrackAttributesV21(dVar, z);
            boolean z2 = true;
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(audioTrackAttributesV21).setAudioFormat(b2).setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(i);
            if (this.outputMode != 1) {
                z2 = false;
            }
            return sessionId.setOffloadedPlayback(z2).build();
        }

        private AudioTrack createAudioTrackV9(com.google.android.exoplayer2.audio.d dVar, int i) {
            int f = af.f(dVar.f20745d);
            return i == 0 ? new AudioTrack(f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i);
        }

        private static AudioAttributes getAudioTrackAttributesV21(com.google.android.exoplayer2.audio.d dVar, boolean z) {
            return z ? getAudioTrackTunnelingAttributesV21() : dVar.a();
        }

        private static AudioAttributes getAudioTrackTunnelingAttributesV21() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private int getEncodedDefaultBufferSize(long j) {
            int b2 = DefaultAudioSink.b(this.outputEncoding);
            int i = b2;
            if (this.outputEncoding == 5) {
                i = b2 * 2;
            }
            return (int) ((j * i) / 1000000);
        }

        private int getPcmDefaultBufferSize(float f) {
            int minBufferSize = AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            com.google.android.exoplayer2.util.a.b(minBufferSize != -2);
            int a2 = af.a(minBufferSize * 4, ((int) durationUsToFrames(250000L)) * this.outputPcmFrameSize, Math.max(minBufferSize, ((int) durationUsToFrames(750000L)) * this.outputPcmFrameSize));
            int i = a2;
            if (f != 1.0f) {
                i = Math.round(a2 * f);
            }
            return i;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0059 -> B:8:0x0018). Please submit an issue!!! */
        public final AudioTrack buildAudioTrack(boolean z, com.google.android.exoplayer2.audio.d dVar, int i) throws AudioSink.InitializationException {
            try {
                AudioTrack createAudioTrack = createAudioTrack(z, dVar, i);
                int state = createAudioTrack.getState();
                if (state == 1) {
                    return createAudioTrack;
                }
                try {
                    createAudioTrack.release();
                } catch (Exception e) {
                }
                throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e2) {
                throw new AudioSink.InitializationException(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), e2);
            }
        }

        public final boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputMode == this.outputMode && configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig && configuration.outputPcmFrameSize == this.outputPcmFrameSize;
        }

        public final long durationUsToFrames(long j) {
            return (j * this.outputSampleRate) / 1000000;
        }

        public final long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public final long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputFormat.sampleRate;
        }

        public final boolean outputModeIsOffload() {
            return this.outputMode == 1;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$a.class */
    public interface a {
        long a(long j);

        aa a(aa aaVar);

        boolean a(boolean z);

        AudioProcessor[] a();

        long b();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$b.class */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioProcessor[] f20708a;

        /* renamed from: b  reason: collision with root package name */
        private final r f20709b;

        /* renamed from: c  reason: collision with root package name */
        private final t f20710c;

        public b(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new r(), new t());
        }

        public b(AudioProcessor[] audioProcessorArr, r rVar, t tVar) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f20708a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f20709b = rVar;
            this.f20710c = tVar;
            audioProcessorArr2[audioProcessorArr.length] = rVar;
            audioProcessorArr2[audioProcessorArr.length + 1] = tVar;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.a
        public final long a(long j) {
            t tVar = this.f20710c;
            if (tVar.i < 1024) {
                return (long) (tVar.f20793b * j);
            }
            long j2 = tVar.h;
            s sVar = (s) com.google.android.exoplayer2.util.a.b(tVar.g);
            long j3 = j2 - ((sVar.g * sVar.f20789a) * 2);
            return tVar.e.f20693b == tVar.f20795d.f20693b ? af.b(j, j3, tVar.i) : af.b(j, j3 * tVar.e.f20693b, tVar.i * tVar.f20795d.f20693b);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.a
        public final aa a(aa aaVar) {
            t tVar = this.f20710c;
            float f = aaVar.f20647b;
            if (tVar.f20793b != f) {
                tVar.f20793b = f;
                tVar.f = true;
            }
            t tVar2 = this.f20710c;
            float f2 = aaVar.f20648c;
            if (tVar2.f20794c != f2) {
                tVar2.f20794c = f2;
                tVar2.f = true;
            }
            return aaVar;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.a
        public final boolean a(boolean z) {
            this.f20709b.f20788d = z;
            return z;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.a
        public final AudioProcessor[] a() {
            return this.f20708a;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.a
        public final long b() {
            return this.f20709b.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final aa f20711a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f20712b;

        /* renamed from: c  reason: collision with root package name */
        public final long f20713c;

        /* renamed from: d  reason: collision with root package name */
        public final long f20714d;

        private c(aa aaVar, boolean z, long j, long j2) {
            this.f20711a = aaVar;
            this.f20712b = z;
            this.f20713c = j;
            this.f20714d = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$d.class */
    public static final class d<T extends Exception> {

        /* renamed from: a  reason: collision with root package name */
        T f20715a;

        /* renamed from: b  reason: collision with root package name */
        private final long f20716b;

        /* renamed from: c  reason: collision with root package name */
        private long f20717c;

        public d(long j) {
            this.f20716b = j;
        }

        public final void a(T t) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f20715a == null) {
                this.f20715a = t;
                this.f20717c = this.f20716b + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f20717c) {
                T t2 = this.f20715a;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.f20715a;
                this.f20715a = null;
                throw t3;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$e.class */
    final class e implements h.a {
        private e() {
        }

        @Override // com.google.android.exoplayer2.audio.h.a
        public final void a(int i, long j) {
            if (DefaultAudioSink.this.q != null) {
                DefaultAudioSink.this.q.a(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.Y);
            }
        }

        @Override // com.google.android.exoplayer2.audio.h.a
        public final void a(long j) {
            if (DefaultAudioSink.this.q != null) {
                DefaultAudioSink.this.q.a(j);
            }
        }

        @Override // com.google.android.exoplayer2.audio.h.a
        public final void a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.w() + ", " + DefaultAudioSink.this.x();
            if (!DefaultAudioSink.f20702a) {
                n.a("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }

        @Override // com.google.android.exoplayer2.audio.h.a
        public final void b(long j) {
            n.a("DefaultAudioSink", "Ignoring impossibly large audio latency: ".concat(String.valueOf(j)));
        }

        @Override // com.google.android.exoplayer2.audio.h.a
        public final void b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.w() + ", " + DefaultAudioSink.this.x();
            if (!DefaultAudioSink.f20702a) {
                n.a("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$f.class */
    public final class f {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f20720b = new Handler();

        /* renamed from: c  reason: collision with root package name */
        private final AudioTrack.StreamEventCallback f20721c;

        public f() {
            this.f20721c = new AudioTrack.StreamEventCallback() { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.f.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onDataRequest(AudioTrack audioTrack, int i) {
                    com.google.android.exoplayer2.util.a.b(audioTrack == DefaultAudioSink.this.t);
                    if (DefaultAudioSink.this.q != null && DefaultAudioSink.this.T) {
                        DefaultAudioSink.this.q.b();
                    }
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onTearDown(AudioTrack audioTrack) {
                    com.google.android.exoplayer2.util.a.b(audioTrack == DefaultAudioSink.this.t);
                    if (DefaultAudioSink.this.q != null && DefaultAudioSink.this.T) {
                        DefaultAudioSink.this.q.b();
                    }
                }
            };
        }

        public final void a(AudioTrack audioTrack) {
            final Handler handler = this.f20720b;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: com.google.android.exoplayer2.audio._$$Lambda$xMC8M6LLEeW997bBmO6BCC6GGAM
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.f20721c);
        }

        public final void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f20721c);
            this.f20720b.removeCallbacksAndMessages(null);
        }
    }

    public DefaultAudioSink(com.google.android.exoplayer2.audio.e eVar, a aVar, boolean z, boolean z2, boolean z3) {
        this.f20703b = eVar;
        this.f20704c = (a) com.google.android.exoplayer2.util.a.b(aVar);
        this.f20705d = af.f22275a >= 21 && z;
        this.l = af.f22275a >= 23 && z2;
        this.m = af.f22275a >= 29 && z3;
        this.i = new ConditionVariable(true);
        this.j = new h(new e());
        k kVar = new k();
        this.e = kVar;
        u uVar = new u();
        this.f = uVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new q(), kVar, uVar);
        Collections.addAll(arrayList, aVar.a());
        this.g = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.h = new AudioProcessor[]{new m()};
        this.I = 1.0f;
        this.u = com.google.android.exoplayer2.audio.d.f20742a;
        this.V = 0;
        this.W = new i(0, BitmapDescriptorFactory.HUE_RED);
        this.w = new c(aa.f20646a, false, 0L, 0L);
        this.x = aa.f20646a;
        this.Q = -1;
        this.J = new AudioProcessor[0];
        this.K = new ByteBuffer[0];
        this.k = new ArrayDeque<>();
        this.o = new d<>(100L);
        this.p = new d<>(100L);
    }

    public DefaultAudioSink(com.google.android.exoplayer2.audio.e eVar, AudioProcessor[] audioProcessorArr) {
        this(eVar, audioProcessorArr, false);
    }

    public DefaultAudioSink(com.google.android.exoplayer2.audio.e eVar, AudioProcessor[] audioProcessorArr, boolean z) {
        this(eVar, new b(audioProcessorArr), z, false, false);
    }

    private int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (af.f22275a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.y == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.y = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.y.putInt(1431633921);
        }
        if (this.z == 0) {
            this.y.putInt(4, i);
            this.y.putLong(8, j * 1000);
            this.y.position(0);
            this.z = i;
        }
        int remaining = this.y.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.y, remaining, 1);
            if (write < 0) {
                this.z = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int write2 = audioTrack.write(byteBuffer, i, 1);
        if (write2 < 0) {
            this.z = 0;
            return write2;
        }
        this.z -= write2;
        return write2;
    }

    private void a(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.J.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.K[i - 1];
            } else {
                byteBuffer = this.L;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f20691a;
                }
            }
            if (i == length) {
                a(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.J[i];
                if (i > this.Q) {
                    audioProcessor.a(byteBuffer);
                }
                ByteBuffer c2 = audioProcessor.c();
                this.K[i] = c2;
                if (c2.hasRemaining()) {
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

    private void a(aa aaVar, boolean z) {
        c t = t();
        if (!aaVar.equals(t.f20711a) || z != t.f20712b) {
            c cVar = new c(aaVar, z, -9223372036854775807L, -9223372036854775807L);
            if (v()) {
                this.v = cVar;
            } else {
                this.w = cVar;
            }
        }
    }

    private void a(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        int i;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.N;
            boolean z = true;
            if (byteBuffer2 != null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.N = byteBuffer;
                if (af.f22275a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.O;
                    if (bArr == null || bArr.length < remaining) {
                        this.O = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.O, 0, remaining);
                    byteBuffer.position(position);
                    this.P = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (af.f22275a < 21) {
                int a2 = this.j.a(this.C);
                if (a2 > 0) {
                    int write = this.t.write(this.O, this.P, Math.min(remaining2, a2));
                    i = write;
                    if (write > 0) {
                        this.P += write;
                        byteBuffer.position(byteBuffer.position() + write);
                        i = write;
                    }
                } else {
                    i = 0;
                }
            } else if (this.X) {
                com.google.android.exoplayer2.util.a.b(j != -9223372036854775807L);
                i = a(this.t, byteBuffer, remaining2, j);
            } else {
                i = this.t.write(byteBuffer, remaining2, 1);
            }
            this.Y = SystemClock.elapsedRealtime();
            if (i < 0) {
                boolean c2 = c(i);
                if (c2) {
                    p();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(i, this.s.inputFormat, c2);
                AudioSink.a aVar = this.q;
                if (aVar != null) {
                    aVar.a(writeException);
                }
                if (!writeException.f20700b) {
                    this.p.a(writeException);
                    return;
                }
                throw writeException;
            }
            this.p.f20715a = null;
            if (a(this.t)) {
                long j2 = this.D;
                if (j2 > 0) {
                    this.aa = false;
                }
                if (this.T && this.q != null && i < remaining2 && !this.aa) {
                    this.q.b(this.j.b(j2));
                }
            }
            if (this.s.outputMode == 0) {
                this.C += i;
            }
            if (i == remaining2) {
                if (this.s.outputMode != 0) {
                    if (byteBuffer != this.L) {
                        z = false;
                    }
                    com.google.android.exoplayer2.util.a.b(z);
                    this.D += this.E * this.M;
                }
                this.N = null;
            }
        }
    }

    private static boolean a(AudioTrack audioTrack) {
        return af.f22275a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private static boolean a(Format format, com.google.android.exoplayer2.audio.d dVar) {
        int b2;
        int e2;
        if (af.f22275a < 29 || (b2 = q.b((String) com.google.android.exoplayer2.util.a.b(format.sampleMimeType), format.codecs)) == 0 || (e2 = af.e(format.channelCount)) == 0 || !AudioManager.isOffloadedPlaybackSupported(b(format.sampleRate, e2, b2), dVar.a())) {
            return false;
        }
        return (format.encoderDelay == 0 && format.encoderPadding == 0) || y();
    }

    private static boolean a(Format format, com.google.android.exoplayer2.audio.e eVar) {
        return b(format, eVar) != null;
    }

    static /* synthetic */ int b(int i) {
        switch (i) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return PangleAdapterConfiguration.CONTENT_TYPE_ERROR;
            case 10:
                return 100000;
            case 11:
                return VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AudioFormat b(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private static Pair<Integer, Integer> b(Format format, com.google.android.exoplayer2.audio.e eVar) {
        int i;
        if (eVar == null) {
            return null;
        }
        int b2 = q.b((String) com.google.android.exoplayer2.util.a.b(format.sampleMimeType), format.codecs);
        int i2 = 6;
        if (!(b2 == 5 || b2 == 6 || b2 == 18 || b2 == 17 || b2 == 7 || b2 == 8 || b2 == 14)) {
            return null;
        }
        if (b2 != 18 || eVar.a(18)) {
            i = b2;
            if (b2 == 8) {
                i = b2;
                if (!eVar.a(8)) {
                    i = 7;
                }
            }
        } else {
            i = 6;
        }
        if (!eVar.a(i)) {
            return null;
        }
        if (i != 18) {
            int i3 = format.channelCount;
            i2 = i3;
            if (i3 > eVar.f20752b) {
                return null;
            }
        } else if (af.f22275a >= 29) {
            int e2 = e(format.sampleRate);
            i2 = e2;
            if (e2 == 0) {
                n.a("DefaultAudioSink", "E-AC3 JOC encoding supported but no channel count supported");
                return null;
            }
        }
        int f2 = f(i2);
        if (f2 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(i), Integer.valueOf(f2));
    }

    private void b(long j) {
        aa a2 = u() ? this.f20704c.a(t().f20711a) : aa.f20646a;
        boolean a3 = u() ? this.f20704c.a(t().f20712b) : false;
        this.k.add(new c(a2, a3, Math.max(0L, j), this.s.framesToDurationUs(x())));
        m();
        AudioSink.a aVar = this.q;
        if (aVar != null) {
            aVar.a(a3);
        }
    }

    private void b(aa aaVar) {
        aa aaVar2 = aaVar;
        if (v()) {
            try {
                this.t.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(aaVar.f20647b).setPitch(aaVar.f20648c).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                n.a("DefaultAudioSink", "Failed to set playback params", e2);
            }
            aaVar2 = new aa(this.t.getPlaybackParams().getSpeed(), this.t.getPlaybackParams().getPitch());
            this.j.a(aaVar2.f20647b);
        }
        this.x = aaVar2;
    }

    private static boolean c(int i) {
        return (af.f22275a >= 24 && i == -6) || i == -32;
    }

    private boolean d(int i) {
        return this.f20705d && af.d(i);
    }

    private static int e(int i) {
        AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i2 = 8; i2 > 0; i2--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(18).setSampleRate(i).setChannelMask(af.e(i2)).build(), build)) {
                return i2;
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        if (r3 == 5) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int f(int r3) {
        /*
            r0 = r3
            r4 = r0
            int r0 = com.google.android.exoplayer2.util.af.f22275a
            r1 = 28
            if (r0 > r1) goto L_0x002a
            r0 = r3
            r1 = 7
            if (r0 != r1) goto L_0x0016
            r0 = 8
            r4 = r0
            goto L_0x002a
        L_0x0016:
            r0 = r3
            r1 = 3
            if (r0 == r1) goto L_0x0027
            r0 = r3
            r1 = 4
            if (r0 == r1) goto L_0x0027
            r0 = r3
            r4 = r0
            r0 = r3
            r1 = 5
            if (r0 != r1) goto L_0x002a
        L_0x0027:
            r0 = 6
            r4 = r0
        L_0x002a:
            r0 = r4
            r3 = r0
            int r0 = com.google.android.exoplayer2.util.af.f22275a
            r1 = 26
            if (r0 > r1) goto L_0x004b
            r0 = r4
            r3 = r0
            java.lang.String r0 = "fugu"
            java.lang.String r1 = com.google.android.exoplayer2.util.af.f22276b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = r4
            r3 = r0
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L_0x004b
            r0 = 2
            r3 = r0
        L_0x004b:
            r0 = r3
            int r0 = com.google.android.exoplayer2.util.af.e(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.f(int):int");
    }

    private void m() {
        AudioProcessor[] audioProcessorArr = this.s.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.a()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.e();
            }
        }
        int size = arrayList.size();
        this.J = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.K = new ByteBuffer[size];
        n();
    }

    private void n() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.J;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.e();
                this.K[i] = audioProcessor.c();
                i++;
            } else {
                return;
            }
        }
    }

    private AudioTrack o() throws AudioSink.InitializationException {
        try {
            return ((Configuration) com.google.android.exoplayer2.util.a.b(this.s)).buildAudioTrack(this.X, this.u, this.V);
        } catch (AudioSink.InitializationException e2) {
            p();
            AudioSink.a aVar = this.q;
            if (aVar != null) {
                aVar.a(e2);
            }
            throw e2;
        }
    }

    private void p() {
        if (this.s.outputModeIsOffload()) {
            this.Z = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0044 -> B:5:0x000d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean q() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.Q
            r1 = -1
            if (r0 != r1) goto L_0x0012
            r0 = r5
            r1 = 0
            r0.Q = r1
        L_0x000d:
            r0 = 1
            r6 = r0
            goto L_0x0014
        L_0x0012:
            r0 = 0
            r6 = r0
        L_0x0014:
            r0 = r5
            int r0 = r0.Q
            r7 = r0
            r0 = r5
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r0.J
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0051
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0032
            r0 = r8
            r0.b()
        L_0x0032:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.a(r1)
            r0 = r8
            boolean r0 = r0.d()
            if (r0 != 0) goto L_0x0044
            r0 = 0
            return r0
        L_0x0044:
            r0 = r5
            r1 = r5
            int r1 = r1.Q
            r2 = 1
            int r1 = r1 + r2
            r0.Q = r1
            goto L_0x000d
        L_0x0051:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.N
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.a(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.N
            if (r0 == 0) goto L_0x006b
            r0 = 0
            return r0
        L_0x006b:
            r0 = r5
            r1 = -1
            r0.Q = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.q():boolean");
    }

    private void r() {
        if (!v()) {
            return;
        }
        if (af.f22275a >= 21) {
            this.t.setVolume(this.I);
            return;
        }
        AudioTrack audioTrack = this.t;
        float f2 = this.I;
        audioTrack.setStereoVolume(f2, f2);
    }

    private void s() {
        this.A = 0L;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.aa = false;
        this.E = 0;
        this.w = new c(t().f20711a, t().f20712b, 0L, 0L);
        this.H = 0L;
        this.v = null;
        this.k.clear();
        this.L = null;
        this.M = 0;
        this.N = null;
        this.S = false;
        this.R = false;
        this.Q = -1;
        this.y = null;
        this.z = 0;
        this.f.f = 0L;
        n();
    }

    private c t() {
        c cVar = this.v;
        return cVar != null ? cVar : !this.k.isEmpty() ? this.k.getLast() : this.w;
    }

    private boolean u() {
        return !this.X && "audio/raw".equals(this.s.inputFormat.sampleMimeType) && !d(this.s.inputFormat.pcmEncoding);
    }

    private boolean v() {
        return this.t != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long w() {
        return this.s.outputMode == 0 ? this.A / this.s.inputPcmFrameSize : this.B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long x() {
        return this.s.outputMode == 0 ? this.C / this.s.outputPcmFrameSize : this.D;
    }

    private static boolean y() {
        return af.f22275a >= 30 && af.f22278d.startsWith("Pixel");
    }

    private void z() {
        if (!this.S) {
            this.S = true;
            this.j.c(x());
            this.t.stop();
            this.z = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final long a(boolean z) {
        long j;
        if (!v() || this.G) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.j.a(z), this.s.framesToDurationUs(x()));
        while (!this.k.isEmpty() && min >= this.k.getFirst().f20714d) {
            this.w = this.k.remove();
        }
        long j2 = min - this.w.f20714d;
        if (this.w.f20711a.equals(aa.f20646a)) {
            j = this.w.f20713c + j2;
        } else if (this.k.isEmpty()) {
            j = this.f20704c.a(j2) + this.w.f20713c;
        } else {
            c first = this.k.getFirst();
            j = first.f20713c - af.a(first.f20714d - min, this.w.f20711a.f20647b);
        }
        return j + this.s.framesToDurationUs(this.f20704c.b());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a() {
        this.T = true;
        if (v()) {
            ((g) com.google.android.exoplayer2.util.a.b(this.j.f20767d)).a();
            this.t.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(float f2) {
        if (this.I != f2) {
            this.I = f2;
            r();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(int i) {
        if (this.V != i) {
            this.V = i;
            this.U = i != 0;
            j();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(Format format, int[] iArr) throws AudioSink.ConfigurationException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        AudioProcessor[] audioProcessorArr;
        if ("audio/raw".equals(format.sampleMimeType)) {
            com.google.android.exoplayer2.util.a.a(af.c(format.pcmEncoding));
            i5 = af.c(format.pcmEncoding, format.channelCount);
            AudioProcessor[] audioProcessorArr2 = d(format.pcmEncoding) ? this.h : this.g;
            u uVar = this.f;
            int i7 = format.encoderDelay;
            int i8 = format.encoderPadding;
            uVar.f20796d = i7;
            uVar.e = i8;
            if (af.f22275a < 21 && format.channelCount == 8 && iArr == null) {
                int[] iArr2 = new int[6];
                int i9 = 0;
                while (true) {
                    iArr = iArr2;
                    if (i9 >= 6) {
                        break;
                    }
                    iArr2[i9] = i9;
                    i9++;
                }
            }
            this.e.f20773d = iArr;
            AudioProcessor.a aVar = new AudioProcessor.a(format.sampleRate, format.channelCount, format.pcmEncoding);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    aVar = audioProcessor.a(aVar);
                    if (audioProcessor.a()) {
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e2) {
                    throw new AudioSink.ConfigurationException(e2, format);
                }
            }
            i3 = aVar.f20695d;
            i2 = aVar.f20693b;
            i = af.e(aVar.f20694c);
            i4 = af.c(i3, aVar.f20694c);
            audioProcessorArr = audioProcessorArr2;
            i6 = 0;
        } else {
            audioProcessorArr = new AudioProcessor[0];
            int i10 = format.sampleRate;
            if (!this.m || !a(format, this.u)) {
                Pair<Integer, Integer> b2 = b(format, this.f20703b);
                if (b2 != null) {
                    i3 = ((Integer) b2.first).intValue();
                    i = ((Integer) b2.second).intValue();
                    i5 = -1;
                    i4 = -1;
                    i6 = 2;
                    i2 = i10;
                } else {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: ".concat(String.valueOf(format)), format);
                }
            } else {
                i3 = q.b((String) com.google.android.exoplayer2.util.a.b(format.sampleMimeType), format.codecs);
                i = af.e(format.channelCount);
                i5 = -1;
                i4 = -1;
                i2 = i10;
                i6 = 1;
            }
        }
        if (i3 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i6 + ") for: " + format, format);
        } else if (i != 0) {
            this.Z = false;
            Configuration configuration = new Configuration(format, i5, i6, i4, i2, i, i3, 0, this.l, audioProcessorArr);
            if (v()) {
                this.r = configuration;
            } else {
                this.s = configuration;
            }
        } else {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i6 + ") for: " + format, format);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(aa aaVar) {
        aa aaVar2 = new aa(af.a(aaVar.f20647b, 0.1f, 8.0f), af.a(aaVar.f20648c, 0.1f, 8.0f));
        if (!this.l || af.f22275a < 23) {
            a(aaVar2, t().f20712b);
        } else {
            b(aaVar2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(AudioSink.a aVar) {
        this.q = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(com.google.android.exoplayer2.audio.d dVar) {
        if (!this.u.equals(dVar)) {
            this.u = dVar;
            if (!this.X) {
                j();
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void a(i iVar) {
        if (!this.W.equals(iVar)) {
            int i = iVar.f20768a;
            float f2 = iVar.f20769b;
            if (this.t != null) {
                if (this.W.f20768a != i) {
                    this.t.attachAuxEffect(i);
                }
                if (i != 0) {
                    this.t.setAuxEffectSendLevel(f2);
                }
            }
            this.W = iVar;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final boolean a(Format format) {
        return b(format) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0218, code lost:
        if (r0.d() == 0) goto L_0x0205;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0263 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0265  */
    @Override // com.google.android.exoplayer2.audio.AudioSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.nio.ByteBuffer r9, long r10, int r12) throws com.google.android.exoplayer2.audio.AudioSink.InitializationException, com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            Method dump skipped, instructions count: 1247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.a(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final int b(Format format) {
        if (!"audio/raw".equals(format.sampleMimeType)) {
            return ((!this.m || this.Z || !a(format, this.u)) && !a(format, this.f20703b)) ? 0 : 2;
        }
        if (!af.c(format.pcmEncoding)) {
            n.a("DefaultAudioSink", "Invalid PCM encoding: " + format.pcmEncoding);
            return 0;
        } else if (format.pcmEncoding != 2) {
            return (!this.f20705d || format.pcmEncoding != 4) ? 1 : 2;
        } else {
            return 2;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void b() {
        this.F = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void b(boolean z) {
        a(t().f20711a, z);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void c() throws AudioSink.WriteException {
        if (!this.R && v() && q()) {
            z();
            this.R = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final boolean d() {
        if (v()) {
            return this.R && !e();
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final boolean e() {
        return v() && this.j.d(x());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final aa f() {
        return this.l ? this.x : t().f20711a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void g() {
        com.google.android.exoplayer2.util.a.b(af.f22275a >= 21);
        com.google.android.exoplayer2.util.a.b(this.U);
        if (!this.X) {
            this.X = true;
            j();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void h() {
        if (this.X) {
            this.X = false;
            j();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void i() {
        boolean z = false;
        this.T = false;
        if (v()) {
            h hVar = this.j;
            hVar.c();
            if (hVar.h == -9223372036854775807L) {
                ((g) com.google.android.exoplayer2.util.a.b(hVar.f20767d)).a();
                z = true;
            }
            if (z) {
                this.t.pause();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [com.google.android.exoplayer2.audio.DefaultAudioSink$1] */
    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void j() {
        if (v()) {
            s();
            if (this.j.a()) {
                this.t.pause();
            }
            if (a(this.t)) {
                ((f) com.google.android.exoplayer2.util.a.b(this.n)).b(this.t);
            }
            final AudioTrack audioTrack = this.t;
            this.t = null;
            if (af.f22275a < 21 && !this.U) {
                this.V = 0;
            }
            Configuration configuration = this.r;
            if (configuration != null) {
                this.s = configuration;
                this.r = null;
            }
            this.j.b();
            this.i.close();
            new Thread("ExoPlayer:AudioTrackReleaseThread") { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.i.open();
                    }
                }
            }.start();
        }
        this.p.f20715a = null;
        this.o.f20715a = null;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void k() {
        if (af.f22275a < 25) {
            j();
            return;
        }
        this.p.f20715a = null;
        this.o.f20715a = null;
        if (v()) {
            s();
            if (this.j.a()) {
                this.t.pause();
            }
            this.t.flush();
            this.j.b();
            this.j.a(this.t, this.s.outputMode == 2, this.s.outputEncoding, this.s.outputPcmFrameSize, this.s.bufferSize);
            this.G = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public final void l() {
        j();
        for (AudioProcessor audioProcessor : this.g) {
            audioProcessor.f();
        }
        for (AudioProcessor audioProcessor2 : this.h) {
            audioProcessor2.f();
        }
        this.T = false;
        this.Z = false;
    }
}
